import 'package:movie_app/core/utils/resource_state/resource_state.dart';
import 'package:movie_app/feature/home/domain/entities/character_entity.dart';
import 'package:movie_app/feature/home/domain/entities/movie_entity.dart';

abstract class MovieRepository {
  Future<ResourceState<List<Movie>>> getMovies();
  Future<ResourceState<Character>> getCharacter(String id);
}
