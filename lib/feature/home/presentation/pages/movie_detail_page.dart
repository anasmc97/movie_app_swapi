import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/colors.dart';
import 'package:movie_app/core/utils/font.dart';
import 'package:movie_app/core/utils/utils.dart';
import 'package:movie_app/feature/home/domain/entities/character_entity.dart';
import 'package:movie_app/feature/home/domain/entities/movie_entity.dart';
import 'package:movie_app/feature/home/presentation/blocs/movie_bloc/movie_bloc.dart';
import 'package:movie_app/feature/home/presentation/widgets/characters_item.dart';

DateTime scheduleTime = DateTime.now();

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({
    super.key,
    required this.movie,
  });
  final Movie movie;

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  @override
  void initState() {
    context.read<MovieBloc>().add(
          MovieEvent.getCharacters(
            Utils.extractListLastNumberUsingSplit(widget.movie.characters),
          ),
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
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            color: Theme.of(context).colorScheme.secondary,
          ),
          SafeArea(
            child: Container(
              color: Colors.white,
            ),
          ),
          ListView(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: 270,
                            width: MediaQuery.of(context).size.width,
                            child: widget.movie.url.isNotEmpty
                                ? Image.network(
                                    Utils.urlToImageUrl(widget.movie.url),
                                    fit: BoxFit.fill,
                                    errorBuilder: (
                                      BuildContext context,
                                      Object exception,
                                      StackTrace? stackTrace,
                                    ) {
                                      return const Center(
                                        child: Icon(Icons.error),
                                      );
                                    },
                                  )
                                : const Center(
                                    child: Text("No image available"),
                                  ),
                          ),
                          Container(
                            height: 271,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: const Alignment(0, 1),
                                    end: const Alignment(0, 0.06),
                                    colors: [
                                  Colors.white,
                                  Colors.white.withOpacity(0)
                                ])),
                          )
                        ],
                      ),
                    ],
                  ),
                  // note: JUDUL
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      widget.movie.title,
                      textAlign: TextAlign.center,
                      style: FontStyles.xxxlSemiBold(),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        margin: const EdgeInsets.only(left: 16, bottom: 12),
                        child: Text(
                          "Summary",
                          style: FontStyles.mMedium(),
                        )),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: const EdgeInsets.only(left: 16, bottom: 12),
                      child: Text(
                        'Producer: ${widget.movie.producer}',
                        style: FontStyles.sSemiBold()
                            .copyWith(color: AppColor.grayScale60),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: const EdgeInsets.only(left: 16, bottom: 12),
                      child: Text(
                        'Director: ${widget.movie.director}',
                        style: FontStyles.sSemiBold()
                            .copyWith(color: AppColor.grayScale60),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: const EdgeInsets.only(left: 16, bottom: 12),
                      child: Text(
                        'Number of Episode: ${widget.movie.episodeId}',
                        style: FontStyles.sSemiBold()
                            .copyWith(color: AppColor.grayScale60),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: const EdgeInsets.only(left: 16, bottom: 12),
                      child: Text(
                        'Release Date: ${widget.movie.releaseDate}',
                        style: FontStyles.sSemiBold()
                            .copyWith(color: AppColor.grayScale60),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        margin: const EdgeInsets.only(left: 16, bottom: 12),
                        child: Text(
                          "Cast",
                          style: FontStyles.mMedium(),
                        )),
                  ),
                  SizedBox(
                    height: 150,
                    //menampilkan cast
                    child: BlocBuilder<MovieBloc, MovieState>(
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
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: widget.movie.characters.length,
                            itemBuilder: (_, index) => Container(
                              margin: EdgeInsets.only(
                                left: (index == 0) ? 16 : 0,
                                right: 16,
                              ),
                              child: CharacterItem(
                                state.characters?[index] ??
                                    const Character(name: '', url: ''),
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  // // note: STORYLINE
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Storyline",
                        style: FontStyles.mMedium(),
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      widget.movie.openingCrawl,
                      style: FontStyles.lRegular(),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      )),
    );
  }
}
