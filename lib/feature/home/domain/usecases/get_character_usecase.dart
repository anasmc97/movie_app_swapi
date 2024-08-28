import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/core/domain/failures/failure.codegen.dart';
import 'package:movie_app/core/domain/usecases/use_case.dart';
import 'package:movie_app/core/extensions/exception_ext.dart';
import 'package:movie_app/feature/home/domain/entities/character_entity.dart';
import 'package:movie_app/feature/home/domain/repositories/movie_repository.dart';

@lazySingleton
class GetCharacterUsecase implements UseCase<Character, GetCharacterParams> {
  final MovieRepository repository;

  GetCharacterUsecase(this.repository);

  @override
  Future<Either<Failure, Character>> call(GetCharacterParams params) async {
    try {
      final response = await repository.getCharacter(params.id);
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

class GetCharacterParams extends Equatable {
  const GetCharacterParams(this.id);
  final String id;
  @override
  List<Object?> get props => [id];
}
