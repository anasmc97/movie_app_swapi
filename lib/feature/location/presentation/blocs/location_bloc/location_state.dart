part of 'location_bloc.dart';

enum Status {
  initial,
  loading,
  successGetLocationUpdate,
  successGetPolylinesPoint,
  succesGeneratePolylineFromPoints,
  error
}

@freezed
abstract class LocationState implements _$LocationState {
  const factory LocationState({
    required Status status,
    required LatLng? currentPosition,
    required List<LatLng> polylineCoordinates,
    required Polyline? polyline,
  }) = _LocationState;

  factory LocationState.initial() {
    return const LocationState(
      status: Status.loading,
      currentPosition: null,
      polylineCoordinates: [],
      polyline: null,
    );
  }
}
