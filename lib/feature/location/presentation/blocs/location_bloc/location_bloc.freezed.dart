// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLocationUpdate,
    required TResult Function(
            LatLng currentPosition, LatLng destinationPosition)
        getPolylinesPoint,
    required TResult Function(List<LatLng> polylineCoordinates)
        generatePolylineFromPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLocationUpdate,
    TResult? Function(LatLng currentPosition, LatLng destinationPosition)?
        getPolylinesPoint,
    TResult? Function(List<LatLng> polylineCoordinates)?
        generatePolylineFromPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLocationUpdate,
    TResult Function(LatLng currentPosition, LatLng destinationPosition)?
        getPolylinesPoint,
    TResult Function(List<LatLng> polylineCoordinates)?
        generatePolylineFromPoints,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocationUpdate value) getLocationUpdate,
    required TResult Function(GetPolylinesPoint value) getPolylinesPoint,
    required TResult Function(GeneratePolylineFromPoints value)
        generatePolylineFromPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLocationUpdate value)? getLocationUpdate,
    TResult? Function(GetPolylinesPoint value)? getPolylinesPoint,
    TResult? Function(GeneratePolylineFromPoints value)?
        generatePolylineFromPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocationUpdate value)? getLocationUpdate,
    TResult Function(GetPolylinesPoint value)? getPolylinesPoint,
    TResult Function(GeneratePolylineFromPoints value)?
        generatePolylineFromPoints,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res, LocationEvent>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res, $Val extends LocationEvent>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetLocationUpdateImplCopyWith<$Res> {
  factory _$$GetLocationUpdateImplCopyWith(_$GetLocationUpdateImpl value,
          $Res Function(_$GetLocationUpdateImpl) then) =
      __$$GetLocationUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLocationUpdateImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$GetLocationUpdateImpl>
    implements _$$GetLocationUpdateImplCopyWith<$Res> {
  __$$GetLocationUpdateImplCopyWithImpl(_$GetLocationUpdateImpl _value,
      $Res Function(_$GetLocationUpdateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetLocationUpdateImpl
    with DiagnosticableTreeMixin
    implements GetLocationUpdate {
  const _$GetLocationUpdateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.getLocationUpdate()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'LocationEvent.getLocationUpdate'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetLocationUpdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLocationUpdate,
    required TResult Function(
            LatLng currentPosition, LatLng destinationPosition)
        getPolylinesPoint,
    required TResult Function(List<LatLng> polylineCoordinates)
        generatePolylineFromPoints,
  }) {
    return getLocationUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLocationUpdate,
    TResult? Function(LatLng currentPosition, LatLng destinationPosition)?
        getPolylinesPoint,
    TResult? Function(List<LatLng> polylineCoordinates)?
        generatePolylineFromPoints,
  }) {
    return getLocationUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLocationUpdate,
    TResult Function(LatLng currentPosition, LatLng destinationPosition)?
        getPolylinesPoint,
    TResult Function(List<LatLng> polylineCoordinates)?
        generatePolylineFromPoints,
    required TResult orElse(),
  }) {
    if (getLocationUpdate != null) {
      return getLocationUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocationUpdate value) getLocationUpdate,
    required TResult Function(GetPolylinesPoint value) getPolylinesPoint,
    required TResult Function(GeneratePolylineFromPoints value)
        generatePolylineFromPoints,
  }) {
    return getLocationUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLocationUpdate value)? getLocationUpdate,
    TResult? Function(GetPolylinesPoint value)? getPolylinesPoint,
    TResult? Function(GeneratePolylineFromPoints value)?
        generatePolylineFromPoints,
  }) {
    return getLocationUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocationUpdate value)? getLocationUpdate,
    TResult Function(GetPolylinesPoint value)? getPolylinesPoint,
    TResult Function(GeneratePolylineFromPoints value)?
        generatePolylineFromPoints,
    required TResult orElse(),
  }) {
    if (getLocationUpdate != null) {
      return getLocationUpdate(this);
    }
    return orElse();
  }
}

abstract class GetLocationUpdate implements LocationEvent {
  const factory GetLocationUpdate() = _$GetLocationUpdateImpl;
}

/// @nodoc
abstract class _$$GetPolylinesPointImplCopyWith<$Res> {
  factory _$$GetPolylinesPointImplCopyWith(_$GetPolylinesPointImpl value,
          $Res Function(_$GetPolylinesPointImpl) then) =
      __$$GetPolylinesPointImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng currentPosition, LatLng destinationPosition});
}

/// @nodoc
class __$$GetPolylinesPointImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$GetPolylinesPointImpl>
    implements _$$GetPolylinesPointImplCopyWith<$Res> {
  __$$GetPolylinesPointImplCopyWithImpl(_$GetPolylinesPointImpl _value,
      $Res Function(_$GetPolylinesPointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPosition = null,
    Object? destinationPosition = null,
  }) {
    return _then(_$GetPolylinesPointImpl(
      null == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as LatLng,
      null == destinationPosition
          ? _value.destinationPosition
          : destinationPosition // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$GetPolylinesPointImpl
    with DiagnosticableTreeMixin
    implements GetPolylinesPoint {
  const _$GetPolylinesPointImpl(this.currentPosition, this.destinationPosition);

  @override
  final LatLng currentPosition;
  @override
  final LatLng destinationPosition;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.getPolylinesPoint(currentPosition: $currentPosition, destinationPosition: $destinationPosition)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationEvent.getPolylinesPoint'))
      ..add(DiagnosticsProperty('currentPosition', currentPosition))
      ..add(DiagnosticsProperty('destinationPosition', destinationPosition));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPolylinesPointImpl &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition) &&
            (identical(other.destinationPosition, destinationPosition) ||
                other.destinationPosition == destinationPosition));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentPosition, destinationPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPolylinesPointImplCopyWith<_$GetPolylinesPointImpl> get copyWith =>
      __$$GetPolylinesPointImplCopyWithImpl<_$GetPolylinesPointImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLocationUpdate,
    required TResult Function(
            LatLng currentPosition, LatLng destinationPosition)
        getPolylinesPoint,
    required TResult Function(List<LatLng> polylineCoordinates)
        generatePolylineFromPoints,
  }) {
    return getPolylinesPoint(currentPosition, destinationPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLocationUpdate,
    TResult? Function(LatLng currentPosition, LatLng destinationPosition)?
        getPolylinesPoint,
    TResult? Function(List<LatLng> polylineCoordinates)?
        generatePolylineFromPoints,
  }) {
    return getPolylinesPoint?.call(currentPosition, destinationPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLocationUpdate,
    TResult Function(LatLng currentPosition, LatLng destinationPosition)?
        getPolylinesPoint,
    TResult Function(List<LatLng> polylineCoordinates)?
        generatePolylineFromPoints,
    required TResult orElse(),
  }) {
    if (getPolylinesPoint != null) {
      return getPolylinesPoint(currentPosition, destinationPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocationUpdate value) getLocationUpdate,
    required TResult Function(GetPolylinesPoint value) getPolylinesPoint,
    required TResult Function(GeneratePolylineFromPoints value)
        generatePolylineFromPoints,
  }) {
    return getPolylinesPoint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLocationUpdate value)? getLocationUpdate,
    TResult? Function(GetPolylinesPoint value)? getPolylinesPoint,
    TResult? Function(GeneratePolylineFromPoints value)?
        generatePolylineFromPoints,
  }) {
    return getPolylinesPoint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocationUpdate value)? getLocationUpdate,
    TResult Function(GetPolylinesPoint value)? getPolylinesPoint,
    TResult Function(GeneratePolylineFromPoints value)?
        generatePolylineFromPoints,
    required TResult orElse(),
  }) {
    if (getPolylinesPoint != null) {
      return getPolylinesPoint(this);
    }
    return orElse();
  }
}

abstract class GetPolylinesPoint implements LocationEvent {
  const factory GetPolylinesPoint(
          final LatLng currentPosition, final LatLng destinationPosition) =
      _$GetPolylinesPointImpl;

  LatLng get currentPosition;
  LatLng get destinationPosition;
  @JsonKey(ignore: true)
  _$$GetPolylinesPointImplCopyWith<_$GetPolylinesPointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GeneratePolylineFromPointsImplCopyWith<$Res> {
  factory _$$GeneratePolylineFromPointsImplCopyWith(
          _$GeneratePolylineFromPointsImpl value,
          $Res Function(_$GeneratePolylineFromPointsImpl) then) =
      __$$GeneratePolylineFromPointsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LatLng> polylineCoordinates});
}

/// @nodoc
class __$$GeneratePolylineFromPointsImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$GeneratePolylineFromPointsImpl>
    implements _$$GeneratePolylineFromPointsImplCopyWith<$Res> {
  __$$GeneratePolylineFromPointsImplCopyWithImpl(
      _$GeneratePolylineFromPointsImpl _value,
      $Res Function(_$GeneratePolylineFromPointsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? polylineCoordinates = null,
  }) {
    return _then(_$GeneratePolylineFromPointsImpl(
      null == polylineCoordinates
          ? _value._polylineCoordinates
          : polylineCoordinates // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
    ));
  }
}

/// @nodoc

class _$GeneratePolylineFromPointsImpl
    with DiagnosticableTreeMixin
    implements GeneratePolylineFromPoints {
  const _$GeneratePolylineFromPointsImpl(final List<LatLng> polylineCoordinates)
      : _polylineCoordinates = polylineCoordinates;

  final List<LatLng> _polylineCoordinates;
  @override
  List<LatLng> get polylineCoordinates {
    if (_polylineCoordinates is EqualUnmodifiableListView)
      return _polylineCoordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_polylineCoordinates);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.generatePolylineFromPoints(polylineCoordinates: $polylineCoordinates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'LocationEvent.generatePolylineFromPoints'))
      ..add(DiagnosticsProperty('polylineCoordinates', polylineCoordinates));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneratePolylineFromPointsImpl &&
            const DeepCollectionEquality()
                .equals(other._polylineCoordinates, _polylineCoordinates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_polylineCoordinates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneratePolylineFromPointsImplCopyWith<_$GeneratePolylineFromPointsImpl>
      get copyWith => __$$GeneratePolylineFromPointsImplCopyWithImpl<
          _$GeneratePolylineFromPointsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLocationUpdate,
    required TResult Function(
            LatLng currentPosition, LatLng destinationPosition)
        getPolylinesPoint,
    required TResult Function(List<LatLng> polylineCoordinates)
        generatePolylineFromPoints,
  }) {
    return generatePolylineFromPoints(polylineCoordinates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLocationUpdate,
    TResult? Function(LatLng currentPosition, LatLng destinationPosition)?
        getPolylinesPoint,
    TResult? Function(List<LatLng> polylineCoordinates)?
        generatePolylineFromPoints,
  }) {
    return generatePolylineFromPoints?.call(polylineCoordinates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLocationUpdate,
    TResult Function(LatLng currentPosition, LatLng destinationPosition)?
        getPolylinesPoint,
    TResult Function(List<LatLng> polylineCoordinates)?
        generatePolylineFromPoints,
    required TResult orElse(),
  }) {
    if (generatePolylineFromPoints != null) {
      return generatePolylineFromPoints(polylineCoordinates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocationUpdate value) getLocationUpdate,
    required TResult Function(GetPolylinesPoint value) getPolylinesPoint,
    required TResult Function(GeneratePolylineFromPoints value)
        generatePolylineFromPoints,
  }) {
    return generatePolylineFromPoints(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLocationUpdate value)? getLocationUpdate,
    TResult? Function(GetPolylinesPoint value)? getPolylinesPoint,
    TResult? Function(GeneratePolylineFromPoints value)?
        generatePolylineFromPoints,
  }) {
    return generatePolylineFromPoints?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocationUpdate value)? getLocationUpdate,
    TResult Function(GetPolylinesPoint value)? getPolylinesPoint,
    TResult Function(GeneratePolylineFromPoints value)?
        generatePolylineFromPoints,
    required TResult orElse(),
  }) {
    if (generatePolylineFromPoints != null) {
      return generatePolylineFromPoints(this);
    }
    return orElse();
  }
}

abstract class GeneratePolylineFromPoints implements LocationEvent {
  const factory GeneratePolylineFromPoints(
          final List<LatLng> polylineCoordinates) =
      _$GeneratePolylineFromPointsImpl;

  List<LatLng> get polylineCoordinates;
  @JsonKey(ignore: true)
  _$$GeneratePolylineFromPointsImplCopyWith<_$GeneratePolylineFromPointsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationState {
  Status get status => throw _privateConstructorUsedError;
  LatLng? get currentPosition => throw _privateConstructorUsedError;
  List<LatLng> get polylineCoordinates => throw _privateConstructorUsedError;
  Polyline? get polyline => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
  @useResult
  $Res call(
      {Status status,
      LatLng? currentPosition,
      List<LatLng> polylineCoordinates,
      Polyline? polyline});
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentPosition = freezed,
    Object? polylineCoordinates = null,
    Object? polyline = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      currentPosition: freezed == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      polylineCoordinates: null == polylineCoordinates
          ? _value.polylineCoordinates
          : polylineCoordinates // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      polyline: freezed == polyline
          ? _value.polyline
          : polyline // ignore: cast_nullable_to_non_nullable
              as Polyline?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationStateImplCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$$LocationStateImplCopyWith(
          _$LocationStateImpl value, $Res Function(_$LocationStateImpl) then) =
      __$$LocationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      LatLng? currentPosition,
      List<LatLng> polylineCoordinates,
      Polyline? polyline});
}

/// @nodoc
class __$$LocationStateImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationStateImpl>
    implements _$$LocationStateImplCopyWith<$Res> {
  __$$LocationStateImplCopyWithImpl(
      _$LocationStateImpl _value, $Res Function(_$LocationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentPosition = freezed,
    Object? polylineCoordinates = null,
    Object? polyline = freezed,
  }) {
    return _then(_$LocationStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      currentPosition: freezed == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      polylineCoordinates: null == polylineCoordinates
          ? _value._polylineCoordinates
          : polylineCoordinates // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      polyline: freezed == polyline
          ? _value.polyline
          : polyline // ignore: cast_nullable_to_non_nullable
              as Polyline?,
    ));
  }
}

/// @nodoc

class _$LocationStateImpl
    with DiagnosticableTreeMixin
    implements _LocationState {
  const _$LocationStateImpl(
      {required this.status,
      required this.currentPosition,
      required final List<LatLng> polylineCoordinates,
      required this.polyline})
      : _polylineCoordinates = polylineCoordinates;

  @override
  final Status status;
  @override
  final LatLng? currentPosition;
  final List<LatLng> _polylineCoordinates;
  @override
  List<LatLng> get polylineCoordinates {
    if (_polylineCoordinates is EqualUnmodifiableListView)
      return _polylineCoordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_polylineCoordinates);
  }

  @override
  final Polyline? polyline;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationState(status: $status, currentPosition: $currentPosition, polylineCoordinates: $polylineCoordinates, polyline: $polyline)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('currentPosition', currentPosition))
      ..add(DiagnosticsProperty('polylineCoordinates', polylineCoordinates))
      ..add(DiagnosticsProperty('polyline', polyline));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition) &&
            const DeepCollectionEquality()
                .equals(other._polylineCoordinates, _polylineCoordinates) &&
            (identical(other.polyline, polyline) ||
                other.polyline == polyline));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, currentPosition,
      const DeepCollectionEquality().hash(_polylineCoordinates), polyline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationStateImplCopyWith<_$LocationStateImpl> get copyWith =>
      __$$LocationStateImplCopyWithImpl<_$LocationStateImpl>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
      {required final Status status,
      required final LatLng? currentPosition,
      required final List<LatLng> polylineCoordinates,
      required final Polyline? polyline}) = _$LocationStateImpl;

  @override
  Status get status;
  @override
  LatLng? get currentPosition;
  @override
  List<LatLng> get polylineCoordinates;
  @override
  Polyline? get polyline;
  @override
  @JsonKey(ignore: true)
  _$$LocationStateImplCopyWith<_$LocationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
