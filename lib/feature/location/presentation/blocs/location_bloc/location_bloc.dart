import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:movie_app/core/utils/constants.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

@injectable
class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(LocationState.initial()) {
    on<GetLocationUpdate>(_onGetLocationUpdate);
    on<GetPolylinesPoint>(_onGetPolylinesPoint);
    on<GeneratePolylineFromPoints>(_onGeneratePolylineFromPoints);
  }

  final Location _locationController = Location();

  FutureOr<void> _onGetLocationUpdate(
    GetLocationUpdate event,
    Emitter<LocationState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await _locationController.serviceEnabled();

    if (serviceEnabled) {
      serviceEnabled = await _locationController.requestService();
    } else {
      return;
    }

    permissionGranted = await _locationController.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await _locationController.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    final locationData = await _locationController.getLocation();
    emit(
      state.copyWith(
          currentPosition: LatLng(
            locationData.latitude ?? (-0.0),
            locationData.longitude ?? (0.0),
          ),
          status: Status.successGetLocationUpdate),
    );
    emit(state.copyWith(status: Status.initial));
  }

  FutureOr<void> _onGetPolylinesPoint(
    GetPolylinesPoint event,
    Emitter<LocationState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    List<LatLng> polylineCoordinates = [];
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        request: PolylineRequest(
            origin: PointLatLng(event.currentPosition.latitude,
                event.currentPosition.longitude),
            destination: PointLatLng(event.destinationPosition.latitude,
                event.destinationPosition.longitude),
            mode: TravelMode.driving),
        googleApiKey: ConstantValue.apiKey);
    if (result.points.isNotEmpty) {
      for (var point in result.points) {
        polylineCoordinates.add(
          LatLng(point.latitude, point.longitude),
        );
      }
    } else {
      if (kDebugMode) {
        print(result.errorMessage);
      }
    }
    emit(
      state.copyWith(
          polylineCoordinates: polylineCoordinates,
          status: Status.successGetPolylinesPoint),
    );
    emit(
      state.copyWith(status: Status.initial),
    );
  }

  FutureOr<void> _onGeneratePolylineFromPoints(
    GeneratePolylineFromPoints event,
    Emitter<LocationState> emit,
  ) async {
    PolylineId id = const PolylineId('poly');
    Polyline polyline = Polyline(
        polylineId: id,
        color: Colors.blue,
        points: event.polylineCoordinates,
        width: 8);
    emit(
      state.copyWith(
          polyline: polyline, status: Status.succesGeneratePolylineFromPoints),
    );
    emit(
      state.copyWith(status: Status.initial),
    );
  }
}
