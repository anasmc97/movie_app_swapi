import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:movie_app/core/utils/font.dart';
import 'package:movie_app/feature/location/presentation/pages/cinema_location_page.dart';

class CinemaItem extends StatelessWidget {
  const CinemaItem({
    super.key,
    required this.destinationLocation,
    required this.cinemaName,
  });

  final LatLng destinationLocation;
  final String cinemaName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CinemaLocationPage(
              destinationLocation: destinationLocation,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Text(
          cinemaName,
          style: FontStyles.lMedium(),
        ),
      ),
    );
  }
}
