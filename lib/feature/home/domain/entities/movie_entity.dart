import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_entity.freezed.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required String title,
    required int episodeId,
    required String openingCrawl,
    required String director,
    required String producer,
    required String releaseDate,
    required List<String> characters,
    required String url,
  }) = _Movie;
}
