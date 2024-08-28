// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMovies,
    required TResult Function(List<String> ids) getCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMovies,
    TResult? Function(List<String> ids)? getCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovies,
    TResult Function(List<String> ids)? getCharacters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovies value) getMovies,
    required TResult Function(GetCharacters value) getCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMovies value)? getMovies,
    TResult? Function(GetCharacters value)? getCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovies value)? getMovies,
    TResult Function(GetCharacters value)? getCharacters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieEventCopyWith<$Res> {
  factory $MovieEventCopyWith(
          MovieEvent value, $Res Function(MovieEvent) then) =
      _$MovieEventCopyWithImpl<$Res, MovieEvent>;
}

/// @nodoc
class _$MovieEventCopyWithImpl<$Res, $Val extends MovieEvent>
    implements $MovieEventCopyWith<$Res> {
  _$MovieEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMoviesImplCopyWith<$Res> {
  factory _$$GetMoviesImplCopyWith(
          _$GetMoviesImpl value, $Res Function(_$GetMoviesImpl) then) =
      __$$GetMoviesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMoviesImplCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res, _$GetMoviesImpl>
    implements _$$GetMoviesImplCopyWith<$Res> {
  __$$GetMoviesImplCopyWithImpl(
      _$GetMoviesImpl _value, $Res Function(_$GetMoviesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMoviesImpl implements GetMovies {
  const _$GetMoviesImpl();

  @override
  String toString() {
    return 'MovieEvent.getMovies()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMoviesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMovies,
    required TResult Function(List<String> ids) getCharacters,
  }) {
    return getMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMovies,
    TResult? Function(List<String> ids)? getCharacters,
  }) {
    return getMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovies,
    TResult Function(List<String> ids)? getCharacters,
    required TResult orElse(),
  }) {
    if (getMovies != null) {
      return getMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovies value) getMovies,
    required TResult Function(GetCharacters value) getCharacters,
  }) {
    return getMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMovies value)? getMovies,
    TResult? Function(GetCharacters value)? getCharacters,
  }) {
    return getMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovies value)? getMovies,
    TResult Function(GetCharacters value)? getCharacters,
    required TResult orElse(),
  }) {
    if (getMovies != null) {
      return getMovies(this);
    }
    return orElse();
  }
}

abstract class GetMovies implements MovieEvent {
  const factory GetMovies() = _$GetMoviesImpl;
}

/// @nodoc
abstract class _$$GetCharactersImplCopyWith<$Res> {
  factory _$$GetCharactersImplCopyWith(
          _$GetCharactersImpl value, $Res Function(_$GetCharactersImpl) then) =
      __$$GetCharactersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> ids});
}

/// @nodoc
class __$$GetCharactersImplCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res, _$GetCharactersImpl>
    implements _$$GetCharactersImplCopyWith<$Res> {
  __$$GetCharactersImplCopyWithImpl(
      _$GetCharactersImpl _value, $Res Function(_$GetCharactersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$GetCharactersImpl(
      null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$GetCharactersImpl implements GetCharacters {
  const _$GetCharactersImpl(final List<String> ids) : _ids = ids;

  final List<String> _ids;
  @override
  List<String> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'MovieEvent.getCharacters(ids: $ids)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCharactersImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCharactersImplCopyWith<_$GetCharactersImpl> get copyWith =>
      __$$GetCharactersImplCopyWithImpl<_$GetCharactersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMovies,
    required TResult Function(List<String> ids) getCharacters,
  }) {
    return getCharacters(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMovies,
    TResult? Function(List<String> ids)? getCharacters,
  }) {
    return getCharacters?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMovies,
    TResult Function(List<String> ids)? getCharacters,
    required TResult orElse(),
  }) {
    if (getCharacters != null) {
      return getCharacters(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovies value) getMovies,
    required TResult Function(GetCharacters value) getCharacters,
  }) {
    return getCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMovies value)? getMovies,
    TResult? Function(GetCharacters value)? getCharacters,
  }) {
    return getCharacters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovies value)? getMovies,
    TResult Function(GetCharacters value)? getCharacters,
    required TResult orElse(),
  }) {
    if (getCharacters != null) {
      return getCharacters(this);
    }
    return orElse();
  }
}

abstract class GetCharacters implements MovieEvent {
  const factory GetCharacters(final List<String> ids) = _$GetCharactersImpl;

  List<String> get ids;
  @JsonKey(ignore: true)
  _$$GetCharactersImplCopyWith<_$GetCharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieState {
  Movie? get movie => throw _privateConstructorUsedError;
  Option<Either<Failure, Movie>> get movieOrFailureOption =>
      throw _privateConstructorUsedError;
  List<Movie> get movies => throw _privateConstructorUsedError;
  Option<Either<Failure, List<Movie>>> get moviesOrFailureOption =>
      throw _privateConstructorUsedError;
  Character? get character => throw _privateConstructorUsedError;
  List<Character>? get characters => throw _privateConstructorUsedError;
  Option<Either<Failure, Character>> get characterOrFailureOption =>
      throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieStateCopyWith<MovieState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
          MovieState value, $Res Function(MovieState) then) =
      _$MovieStateCopyWithImpl<$Res, MovieState>;
  @useResult
  $Res call(
      {Movie? movie,
      Option<Either<Failure, Movie>> movieOrFailureOption,
      List<Movie> movies,
      Option<Either<Failure, List<Movie>>> moviesOrFailureOption,
      Character? character,
      List<Character>? characters,
      Option<Either<Failure, Character>> characterOrFailureOption,
      Status status});

  $MovieCopyWith<$Res>? get movie;
  $CharacterCopyWith<$Res>? get character;
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res, $Val extends MovieState>
    implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = freezed,
    Object? movieOrFailureOption = null,
    Object? movies = null,
    Object? moviesOrFailureOption = null,
    Object? character = freezed,
    Object? characters = freezed,
    Object? characterOrFailureOption = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      movie: freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie?,
      movieOrFailureOption: null == movieOrFailureOption
          ? _value.movieOrFailureOption
          : movieOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Movie>>,
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      moviesOrFailureOption: null == moviesOrFailureOption
          ? _value.moviesOrFailureOption
          : moviesOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<Movie>>>,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character?,
      characters: freezed == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>?,
      characterOrFailureOption: null == characterOrFailureOption
          ? _value.characterOrFailureOption
          : characterOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Character>>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieCopyWith<$Res>? get movie {
    if (_value.movie == null) {
      return null;
    }

    return $MovieCopyWith<$Res>(_value.movie!, (value) {
      return _then(_value.copyWith(movie: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res>? get character {
    if (_value.character == null) {
      return null;
    }

    return $CharacterCopyWith<$Res>(_value.character!, (value) {
      return _then(_value.copyWith(character: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieStateImplCopyWith<$Res>
    implements $MovieStateCopyWith<$Res> {
  factory _$$MovieStateImplCopyWith(
          _$MovieStateImpl value, $Res Function(_$MovieStateImpl) then) =
      __$$MovieStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Movie? movie,
      Option<Either<Failure, Movie>> movieOrFailureOption,
      List<Movie> movies,
      Option<Either<Failure, List<Movie>>> moviesOrFailureOption,
      Character? character,
      List<Character>? characters,
      Option<Either<Failure, Character>> characterOrFailureOption,
      Status status});

  @override
  $MovieCopyWith<$Res>? get movie;
  @override
  $CharacterCopyWith<$Res>? get character;
}

/// @nodoc
class __$$MovieStateImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$MovieStateImpl>
    implements _$$MovieStateImplCopyWith<$Res> {
  __$$MovieStateImplCopyWithImpl(
      _$MovieStateImpl _value, $Res Function(_$MovieStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = freezed,
    Object? movieOrFailureOption = null,
    Object? movies = null,
    Object? moviesOrFailureOption = null,
    Object? character = freezed,
    Object? characters = freezed,
    Object? characterOrFailureOption = null,
    Object? status = null,
  }) {
    return _then(_$MovieStateImpl(
      movie: freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie?,
      movieOrFailureOption: null == movieOrFailureOption
          ? _value.movieOrFailureOption
          : movieOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Movie>>,
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      moviesOrFailureOption: null == moviesOrFailureOption
          ? _value.moviesOrFailureOption
          : moviesOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<Movie>>>,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character?,
      characters: freezed == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>?,
      characterOrFailureOption: null == characterOrFailureOption
          ? _value.characterOrFailureOption
          : characterOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Character>>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$MovieStateImpl implements _MovieState {
  const _$MovieStateImpl(
      {required this.movie,
      required this.movieOrFailureOption,
      required final List<Movie> movies,
      required this.moviesOrFailureOption,
      required this.character,
      required final List<Character>? characters,
      required this.characterOrFailureOption,
      required this.status})
      : _movies = movies,
        _characters = characters;

  @override
  final Movie? movie;
  @override
  final Option<Either<Failure, Movie>> movieOrFailureOption;
  final List<Movie> _movies;
  @override
  List<Movie> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  final Option<Either<Failure, List<Movie>>> moviesOrFailureOption;
  @override
  final Character? character;
  final List<Character>? _characters;
  @override
  List<Character>? get characters {
    final value = _characters;
    if (value == null) return null;
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Option<Either<Failure, Character>> characterOrFailureOption;
  @override
  final Status status;

  @override
  String toString() {
    return 'MovieState(movie: $movie, movieOrFailureOption: $movieOrFailureOption, movies: $movies, moviesOrFailureOption: $moviesOrFailureOption, character: $character, characters: $characters, characterOrFailureOption: $characterOrFailureOption, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieStateImpl &&
            (identical(other.movie, movie) || other.movie == movie) &&
            (identical(other.movieOrFailureOption, movieOrFailureOption) ||
                other.movieOrFailureOption == movieOrFailureOption) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.moviesOrFailureOption, moviesOrFailureOption) ||
                other.moviesOrFailureOption == moviesOrFailureOption) &&
            (identical(other.character, character) ||
                other.character == character) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(
                    other.characterOrFailureOption, characterOrFailureOption) ||
                other.characterOrFailureOption == characterOrFailureOption) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      movie,
      movieOrFailureOption,
      const DeepCollectionEquality().hash(_movies),
      moviesOrFailureOption,
      character,
      const DeepCollectionEquality().hash(_characters),
      characterOrFailureOption,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieStateImplCopyWith<_$MovieStateImpl> get copyWith =>
      __$$MovieStateImplCopyWithImpl<_$MovieStateImpl>(this, _$identity);
}

abstract class _MovieState implements MovieState {
  const factory _MovieState(
      {required final Movie? movie,
      required final Option<Either<Failure, Movie>> movieOrFailureOption,
      required final List<Movie> movies,
      required final Option<Either<Failure, List<Movie>>> moviesOrFailureOption,
      required final Character? character,
      required final List<Character>? characters,
      required final Option<Either<Failure, Character>>
          characterOrFailureOption,
      required final Status status}) = _$MovieStateImpl;

  @override
  Movie? get movie;
  @override
  Option<Either<Failure, Movie>> get movieOrFailureOption;
  @override
  List<Movie> get movies;
  @override
  Option<Either<Failure, List<Movie>>> get moviesOrFailureOption;
  @override
  Character? get character;
  @override
  List<Character>? get characters;
  @override
  Option<Either<Failure, Character>> get characterOrFailureOption;
  @override
  Status get status;
  @override
  @JsonKey(ignore: true)
  _$$MovieStateImplCopyWith<_$MovieStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
