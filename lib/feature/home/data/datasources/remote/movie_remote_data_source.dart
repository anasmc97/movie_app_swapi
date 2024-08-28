import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/core/extensions/response_ext.dart';
import 'package:movie_app/core/utils/constants.dart';
import 'package:movie_app/core/utils/resource_state/resource_state.dart';
import 'package:movie_app/feature/home/data/models/character_model.dart';
import 'package:movie_app/feature/home/data/models/movie_model.dart';
import 'package:movie_app/feature/home/domain/entities/character_entity.dart';
import 'package:movie_app/feature/home/domain/entities/movie_entity.dart';

abstract class MovieRemoteDataSource {
  Future<ResourceState<List<Movie>>> getMovies();
  Future<ResourceState<Character>> getCharacter(String id);
}

@LazySingleton(as: MovieRemoteDataSource)
class MovieRemoteDataSourceImpl implements MovieRemoteDataSource {
  MovieRemoteDataSourceImpl(this._dio);
  final baseUrl = ConstantValue.url;
  final Dio _dio;

  @override
  Future<ResourceState<List<Movie>>> getMovies() async {
    return await _dio.get('$baseUrl/films').mapToEntity(
      (e) {
        final response = json.decode(e);
        final movies = (response['results'] as List?)
                ?.map((e) => MovieModel.fromJson(e))
                .toList() ??
            [];

        return movies.map((e) => e.toDomain()).toList();
      },
    );
  }

  @override
  Future<ResourceState<Character>> getCharacter(String id) async {
    return await _dio.get('$baseUrl/people/$id').mapToEntity(
      (e) {
        final character = CharacterModel.fromJson(json.decode(e));

        return character.toDomain();
      },
    );
  }
}
