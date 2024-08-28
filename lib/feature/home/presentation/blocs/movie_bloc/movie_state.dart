part of 'movie_bloc.dart';

enum Status { initial, loading, success, error }

@freezed
abstract class MovieState implements _$MovieState {
  const factory MovieState({
    required Movie? movie,
    required Option<Either<Failure, Movie>> movieOrFailureOption,
    required List<Movie> movies,
    required Option<Either<Failure, List<Movie>>> moviesOrFailureOption,
    required Character? character,
    required List<Character>? characters,
    required Option<Either<Failure, Character>> characterOrFailureOption,
    required Status status,
  }) = _MovieState;

  factory MovieState.initial() {
    return MovieState(
      movie: null,
      movieOrFailureOption: none(),
      movies: [],
      moviesOrFailureOption: none(),
      character: null,
      characters: [],
      characterOrFailureOption: none(),
      status: Status.loading,
    );
  }
}
