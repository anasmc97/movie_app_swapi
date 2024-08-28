import 'package:injectable/injectable.dart';
import 'package:movie_app/core/utils/resource_state/resource_state.dart';
import 'package:movie_app/feature/home/data/datasources/remote/movie_remote_data_source.dart';
import 'package:movie_app/feature/home/domain/entities/character_entity.dart';
import 'package:movie_app/feature/home/domain/entities/movie_entity.dart';
import 'package:movie_app/feature/home/domain/repositories/movie_repository.dart';

@LazySingleton(as: MovieRepository)
class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDataSource remoteDataSource;
  MovieRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<ResourceState<List<Movie>>> getMovies() {
    return remoteDataSource.getMovies();
  }

  @override
  Future<ResourceState<Character>> getCharacter(String id) {
    return remoteDataSource.getCharacter(id);
  }
}
