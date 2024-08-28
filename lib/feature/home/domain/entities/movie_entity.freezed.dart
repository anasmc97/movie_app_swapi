// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Movie {
  String get title => throw _privateConstructorUsedError;
  int get episodeId => throw _privateConstructorUsedError;
  String get openingCrawl => throw _privateConstructorUsedError;
  String get director => throw _privateConstructorUsedError;
  String get producer => throw _privateConstructorUsedError;
  String get releaseDate => throw _privateConstructorUsedError;
  List<String> get characters => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res, Movie>;
  @useResult
  $Res call(
      {String title,
      int episodeId,
      String openingCrawl,
      String director,
      String producer,
      String releaseDate,
      List<String> characters,
      String url});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res, $Val extends Movie>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? episodeId = null,
    Object? openingCrawl = null,
    Object? director = null,
    Object? producer = null,
    Object? releaseDate = null,
    Object? characters = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      episodeId: null == episodeId
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as int,
      openingCrawl: null == openingCrawl
          ? _value.openingCrawl
          : openingCrawl // ignore: cast_nullable_to_non_nullable
              as String,
      director: null == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as String,
      producer: null == producer
          ? _value.producer
          : producer // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieImplCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$MovieImplCopyWith(
          _$MovieImpl value, $Res Function(_$MovieImpl) then) =
      __$$MovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      int episodeId,
      String openingCrawl,
      String director,
      String producer,
      String releaseDate,
      List<String> characters,
      String url});
}

/// @nodoc
class __$$MovieImplCopyWithImpl<$Res>
    extends _$MovieCopyWithImpl<$Res, _$MovieImpl>
    implements _$$MovieImplCopyWith<$Res> {
  __$$MovieImplCopyWithImpl(
      _$MovieImpl _value, $Res Function(_$MovieImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? episodeId = null,
    Object? openingCrawl = null,
    Object? director = null,
    Object? producer = null,
    Object? releaseDate = null,
    Object? characters = null,
    Object? url = null,
  }) {
    return _then(_$MovieImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      episodeId: null == episodeId
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as int,
      openingCrawl: null == openingCrawl
          ? _value.openingCrawl
          : openingCrawl // ignore: cast_nullable_to_non_nullable
              as String,
      director: null == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as String,
      producer: null == producer
          ? _value.producer
          : producer // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MovieImpl implements _Movie {
  const _$MovieImpl(
      {required this.title,
      required this.episodeId,
      required this.openingCrawl,
      required this.director,
      required this.producer,
      required this.releaseDate,
      required final List<String> characters,
      required this.url})
      : _characters = characters;

  @override
  final String title;
  @override
  final int episodeId;
  @override
  final String openingCrawl;
  @override
  final String director;
  @override
  final String producer;
  @override
  final String releaseDate;
  final List<String> _characters;
  @override
  List<String> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  final String url;

  @override
  String toString() {
    return 'Movie(title: $title, episodeId: $episodeId, openingCrawl: $openingCrawl, director: $director, producer: $producer, releaseDate: $releaseDate, characters: $characters, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.episodeId, episodeId) ||
                other.episodeId == episodeId) &&
            (identical(other.openingCrawl, openingCrawl) ||
                other.openingCrawl == openingCrawl) &&
            (identical(other.director, director) ||
                other.director == director) &&
            (identical(other.producer, producer) ||
                other.producer == producer) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      episodeId,
      openingCrawl,
      director,
      producer,
      releaseDate,
      const DeepCollectionEquality().hash(_characters),
      url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      __$$MovieImplCopyWithImpl<_$MovieImpl>(this, _$identity);
}

abstract class _Movie implements Movie {
  const factory _Movie(
      {required final String title,
      required final int episodeId,
      required final String openingCrawl,
      required final String director,
      required final String producer,
      required final String releaseDate,
      required final List<String> characters,
      required final String url}) = _$MovieImpl;

  @override
  String get title;
  @override
  int get episodeId;
  @override
  String get openingCrawl;
  @override
  String get director;
  @override
  String get producer;
  @override
  String get releaseDate;
  @override
  List<String> get characters;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
