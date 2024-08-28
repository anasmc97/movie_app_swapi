import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/feature/home/domain/entities/movie_entity.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  const factory MovieModel({
    required String? title,
    @JsonKey(name: 'episode_id') required int? episodeId,
    @JsonKey(name: 'opening_crawl') required String? openingCrawl,
    required String? director,
    required String? producer,
    @JsonKey(name: 'release_date') required String? releaseDate,
    required List<String>? characters,
    required String? url,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  factory MovieModel.fromDomain(Movie form) => MovieModel(
        title: form.title,
        episodeId: form.episodeId,
        openingCrawl: form.openingCrawl,
        director: form.director,
        producer: form.producer,
        releaseDate: form.releaseDate,
        characters: form.characters,
        url: form.url,
      );
}

extension MovieModelX on MovieModel {
  Movie toDomain() => Movie(
        title: title ?? '',
        episodeId: episodeId ?? 0,
        openingCrawl: openingCrawl ?? '',
        director: director ?? '',
        producer: producer ?? '',
        releaseDate: releaseDate ?? '',
        characters: characters ?? [],
        url: url ?? '',
      );
}
