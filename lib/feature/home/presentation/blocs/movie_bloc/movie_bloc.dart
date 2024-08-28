import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/core/domain/failures/failure.codegen.dart';
import 'package:movie_app/core/domain/usecases/use_case.dart';
import 'package:movie_app/feature/home/domain/entities/character_entity.dart';
import 'package:movie_app/feature/home/domain/entities/movie_entity.dart';
import 'package:movie_app/feature/home/domain/usecases/get_character_usecase.dart';
import 'package:movie_app/feature/home/domain/usecases/get_movies_usecase.dart';
import 'package:movie_app/core/extensions/dartz_extensions.dart';

part 'movie_event.dart';
part 'movie_state.dart';
part 'movie_bloc.freezed.dart';

@injectable
class MovieBloc extends Bloc<MovieEvent, MovieState> {
  MovieBloc(
    this._getMovies,
    this._getCharacter,
  ) : super(MovieState.initial()) {
    on<GetMovies>(_onGetMovies);
    on<GetCharacters>(_onGetCharacters);
  }

  final GetMoviesUsecase _getMovies;
  final GetCharacterUsecase _getCharacter;

  FutureOr<void> _onGetMovies(
    GetMovies event,
    Emitter<MovieState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    final result = await _getMovies(NoParams());
    if (result.isLeft()) {
      emit(
        state.copyWith(
            moviesOrFailureOption: optionOf(
              left(result.getLeft()!),
            ),
            status: Status.initial),
      );
    }
    if (result.isRight()) {
      emit(
        state.copyWith(
          moviesOrFailureOption: optionOf(
            right(result.getRight()!),
          ),
        ),
      );
      emit(
        state.copyWith(
          moviesOrFailureOption: none(),
          movies: result.getRight()!,
          status: Status.success,
        ),
      );
      emit(
        state.copyWith(status: Status.initial),
      );
    }
  }

  FutureOr<void> _onGetCharacters(
    GetCharacters event,
    Emitter<MovieState> emit,
  ) async {
    List<Character> characters = [];
    emit(state.copyWith(status: Status.loading));
    for (int i = 0; i < event.ids.length; i++) {
      final result = await _getCharacter(
        GetCharacterParams(
          event.ids[i],
        ),
      );
      if (result.isLeft()) {
        emit(
          state.copyWith(
              characterOrFailureOption: optionOf(
                left(result.getLeft()!),
              ),
              status: Status.initial),
        );
      }
      if (result.isRight()) {
        characters.add(result.getRight()!);
      }
    }
    if (characters.isNotEmpty) {
      emit(
        state.copyWith(
          characters: characters,
          status: Status.success,
        ),
      );
      emit(
        state.copyWith(status: Status.initial),
      );
    }
  }
}
