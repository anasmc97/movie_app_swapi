// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieModelImpl _$$MovieModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieModelImpl(
      title: json['title'] as String?,
      episodeId: (json['episode_id'] as num?)?.toInt(),
      openingCrawl: json['opening_crawl'] as String?,
      director: json['director'] as String?,
      producer: json['producer'] as String?,
      releaseDate: json['release_date'] as String?,
      characters: (json['characters'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$MovieModelImplToJson(_$MovieModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'episode_id': instance.episodeId,
      'opening_crawl': instance.openingCrawl,
      'director': instance.director,
      'producer': instance.producer,
      'release_date': instance.releaseDate,
      'characters': instance.characters,
      'url': instance.url,
    };
