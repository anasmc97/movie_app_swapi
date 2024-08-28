import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:movie_app/feature/location/presentation/blocs/location_bloc/location_bloc.dart';

class CinemaLocationPage extends StatefulWidget {
  const CinemaLocationPage({super.key, required this.destinationLocation});

  final LatLng destinationLocation;

  @override
  State<CinemaLocationPage> createState() => _CinemaLocationPageState();
}

class _CinemaLocationPageState extends State<CinemaLocationPage> {
  final Completer<GoogleMapController> _mapController =
      Completer<GoogleMapController>();
  Map<PolylineId, Polyline> polylines = {};

  @override
  void initState() {
    context.read<LocationBloc>().add(
          const LocationEvent.getLocationUpdate(),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvoked: (dipop) {
        if (dipop) {
          return;
        }
      },
      child: SafeArea(
        child: BlocConsumer<LocationBloc, LocationState>(
          listener: (context, state) {
            if (state.status == Status.successGetLocationUpdate) {
              if (state.currentPosition != null) {
                _cameraToPosition(state.currentPosition!);
                context.read<LocationBloc>().add(
                      LocationEvent.getPolylinesPoint(
                          state.currentPosition!, widget.destinationLocation),
                    );
              }
            }
            if (state.status == Status.successGetPolylinesPoint) {
              context.read<LocationBloc>().add(
                    LocationEvent.generatePolylineFromPoints(
                        state.polylineCoordinates),
                  );
            }

            if (state.status == Status.succesGeneratePolylineFromPoints) {
              if (state.polyline != null) {
                generatePolylineFromPoints(state.polyline!);
              }
            }
          },
          builder: (context, state) {
            return Scaffold(
              body: (state.status == Status.successGetLocationUpdate)
                  ? const Center(
                      child: Text('Loading.....'),
                    )
                  : GoogleMap(
                      onMapCreated: ((GoogleMapController controller) =>
                          _mapController.complete(controller)),
                      initialCameraPosition: CameraPosition(
                        target:
                            state.currentPosition ?? const LatLng(-0.0, 0.0),
                        zoom: 13,
                      ),
                      markers: {
                        Marker(
                          markerId: const MarkerId('_currentLocation'),
                          icon: BitmapDescriptor.defaultMarker,
                          position:
                              state.currentPosition ?? const LatLng(-0.0, 0.0),
                        ),
                        Marker(
                          markerId: const MarkerId('_destinationLocation'),
                          icon: BitmapDescriptor.defaultMarker,
                          position: widget.destinationLocation,
                        )
                      },
                      polylines: Set<Polyline>.of(polylines.values),
                    ),
            );
          },
        ),
      ),
    );
  }

  Future<void> _cameraToPosition(LatLng pos) async {
    final GoogleMapController controller = await _mapController.future;
    CameraPosition newCameraPosition = CameraPosition(target: pos, zoom: 13);

    await controller.animateCamera(
      CameraUpdate.newCameraPosition(newCameraPosition),
    );
  }

  void generatePolylineFromPoints(Polyline polyline) async {
    PolylineId id = const PolylineId('poly');

    polylines[id] = polyline;
  }
}
