part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.getLocationUpdate() = GetLocationUpdate;
  const factory LocationEvent.getPolylinesPoint(
      LatLng currentPosition, LatLng destinationPosition) = GetPolylinesPoint;
  const factory LocationEvent.generatePolylineFromPoints(
      List<LatLng> polylineCoordinates) = GeneratePolylineFromPoints;
}
