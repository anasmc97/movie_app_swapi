import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/core/domain/failures/failure.codegen.dart';
import 'package:movie_app/core/domain/usecases/use_case.dart';
import 'package:movie_app/core/extensions/exception_ext.dart';
import 'package:movie_app/feature/home/domain/entities/movie_entity.dart';
import 'package:movie_app/feature/home/domain/repositories/movie_repository.dart';

@lazySingleton
class GetMoviesUsecase implements UseCase<List<Movie>, NoParams> {
  final MovieRepository repository;

  GetMoviesUsecase(this.repository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParams params) async {
    try {
      final response = await repository.getMovies();
      return response.map(
        success: (e) => right(e.data),
        failure: (e) => left(
          Failure.serverFailure(
            message: e.exception.getMessage,
          ),
        ),
      );
    } catch (e, st) {
      log(e.toString(), stackTrace: st);
      return left(
        Failure.serverFailure(
          message: e.toString(),
        ),
      );
    }
  }
}
