// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'episode_id')
  int? get episodeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'opening_crawl')
  String? get openingCrawl => throw _privateConstructorUsedError;
  String? get director => throw _privateConstructorUsedError;
  String? get producer => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  List<String>? get characters => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res, MovieModel>;
  @useResult
  $Res call(
      {String? title,
      @JsonKey(name: 'episode_id') int? episodeId,
      @JsonKey(name: 'opening_crawl') String? openingCrawl,
      String? director,
      String? producer,
      @JsonKey(name: 'release_date') String? releaseDate,
      List<String>? characters,
      String? url});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res, $Val extends MovieModel>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? episodeId = freezed,
    Object? openingCrawl = freezed,
    Object? director = freezed,
    Object? producer = freezed,
    Object? releaseDate = freezed,
    Object? characters = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      episodeId: freezed == episodeId
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as int?,
      openingCrawl: freezed == openingCrawl
          ? _value.openingCrawl
          : openingCrawl // ignore: cast_nullable_to_non_nullable
              as String?,
      director: freezed == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as String?,
      producer: freezed == producer
          ? _value.producer
          : producer // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      characters: freezed == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieModelImplCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$MovieModelImplCopyWith(
          _$MovieModelImpl value, $Res Function(_$MovieModelImpl) then) =
      __$$MovieModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      @JsonKey(name: 'episode_id') int? episodeId,
      @JsonKey(name: 'opening_crawl') String? openingCrawl,
      String? director,
      String? producer,
      @JsonKey(name: 'release_date') String? releaseDate,
      List<String>? characters,
      String? url});
}

/// @nodoc
class __$$MovieModelImplCopyWithImpl<$Res>
    extends _$MovieModelCopyWithImpl<$Res, _$MovieModelImpl>
    implements _$$MovieModelImplCopyWith<$Res> {
  __$$MovieModelImplCopyWithImpl(
      _$MovieModelImpl _value, $Res Function(_$MovieModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? episodeId = freezed,
    Object? openingCrawl = freezed,
    Object? director = freezed,
    Object? producer = freezed,
    Object? releaseDate = freezed,
    Object? characters = freezed,
    Object? url = freezed,
  }) {
    return _then(_$MovieModelImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      episodeId: freezed == episodeId
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as int?,
      openingCrawl: freezed == openingCrawl
          ? _value.openingCrawl
          : openingCrawl // ignore: cast_nullable_to_non_nullable
              as String?,
      director: freezed == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as String?,
      producer: freezed == producer
          ? _value.producer
          : producer // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      characters: freezed == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieModelImpl implements _MovieModel {
  const _$MovieModelImpl(
      {required this.title,
      @JsonKey(name: 'episode_id') required this.episodeId,
      @JsonKey(name: 'opening_crawl') required this.openingCrawl,
      required this.director,
      required this.producer,
      @JsonKey(name: 'release_date') required this.releaseDate,
      required final List<String>? characters,
      required this.url})
      : _characters = characters;

  factory _$MovieModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieModelImplFromJson(json);

  @override
  final String? title;
  @override
  @JsonKey(name: 'episode_id')
  final int? episodeId;
  @override
  @JsonKey(name: 'opening_crawl')
  final String? openingCrawl;
  @override
  final String? director;
  @override
  final String? producer;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  final List<String>? _characters;
  @override
  List<String>? get characters {
    final value = _characters;
    if (value == null) return null;
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? url;

  @override
  String toString() {
    return 'MovieModel(title: $title, episodeId: $episodeId, openingCrawl: $openingCrawl, director: $director, producer: $producer, releaseDate: $releaseDate, characters: $characters, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieModelImpl &&
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

  @JsonKey(ignore: true)
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
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      __$$MovieModelImplCopyWithImpl<_$MovieModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieModelImplToJson(
      this,
    );
  }
}

abstract class _MovieModel implements MovieModel {
  const factory _MovieModel(
      {required final String? title,
      @JsonKey(name: 'episode_id') required final int? episodeId,
      @JsonKey(name: 'opening_crawl') required final String? openingCrawl,
      required final String? director,
      required final String? producer,
      @JsonKey(name: 'release_date') required final String? releaseDate,
      required final List<String>? characters,
      required final String? url}) = _$MovieModelImpl;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$MovieModelImpl.fromJson;

  @override
  String? get title;
  @override
  @JsonKey(name: 'episode_id')
  int? get episodeId;
  @override
  @JsonKey(name: 'opening_crawl')
  String? get openingCrawl;
  @override
  String? get director;
  @override
  String? get producer;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  List<String>? get characters;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
