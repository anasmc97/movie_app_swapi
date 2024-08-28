import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:movie_app/core/presentation/mixins/failure_message_handler.dart';
import 'package:movie_app/core/utils/colors.dart';
import 'package:movie_app/core/utils/font.dart';
import 'package:movie_app/feature/home/presentation/blocs/movie_bloc/movie_bloc.dart';
import 'package:movie_app/feature/location/presentation/pages/cinema_location_page.dart';
import 'package:movie_app/feature/home/presentation/pages/movie_detail_page.dart';
import 'package:movie_app/feature/location/presentation/widgets/cinema_item.dart';
import 'package:movie_app/feature/home/presentation/widgets/movie_item.dart';

class MoviePage extends StatelessWidget with FailureMessageHandler {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Movies",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: BlocConsumer<MovieBloc, MovieState>(
                    listener: (context, state) {
                      state.moviesOrFailureOption.fold(
                        () => null,
                        (either) => either.fold(
                            (l) => handleFailure(context, l), (r) => null),
                      );
                    },
                    builder: (context, state) {
                      if (state.status == Status.loading) {
                        return const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Center(
                            child: CircularProgressIndicator(
                              color: AppColor.grayScale100,
                            ),
                          ),
                        );
                      } else {
                        return GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 8.0,
                            childAspectRatio: 3 / 5.5,
                          ),
                          itemCount: state.movies.length,
                          itemBuilder: (context, index) {
                            return MovieItem(
                              movie: state.movies[index],
                              onTapItem: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MovieDetailPage(
                                    movie: state.movies[index],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Text(
                    "Cinema",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: dummyCinamaItem.length,
                    itemBuilder: (_, index) => CinemaItem(
                      destinationLocation: dummyCinamaItem[index],
                      cinemaName: dummyCinamaNameItem[index],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<LatLng> dummyCinamaItem = [
  const LatLng(-8.592692307361638, 116.10499515063691),
  const LatLng(-8.587716623066683, 116.11993643899864),
  const LatLng(-8.59059449144339, 116.14615976598161),
  const LatLng(-8.583161796033075, 116.10718306783475),
  const LatLng(-8.584866710320089, 116.08599934085183)
];

List<String> dummyCinamaNameItem = [
  'XXI',
  'Cinepolis',
  'CGV',
  'CGV 2',
  'Cinepolis 2'
];
