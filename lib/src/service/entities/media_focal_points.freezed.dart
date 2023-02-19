// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_focal_points.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaFocalPoints _$MediaFocalPointsFromJson(Map<String, dynamic> json) {
  return _MediaFocalPoints.fromJson(json);
}

/// @nodoc
mixin _$MediaFocalPoints {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaFocalPointsCopyWith<MediaFocalPoints> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaFocalPointsCopyWith<$Res> {
  factory $MediaFocalPointsCopyWith(
          MediaFocalPoints value, $Res Function(MediaFocalPoints) then) =
      _$MediaFocalPointsCopyWithImpl<$Res, MediaFocalPoints>;
  @useResult
  $Res call({double x, double y});
}

/// @nodoc
class _$MediaFocalPointsCopyWithImpl<$Res, $Val extends MediaFocalPoints>
    implements $MediaFocalPointsCopyWith<$Res> {
  _$MediaFocalPointsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaFocalPointsCopyWith<$Res>
    implements $MediaFocalPointsCopyWith<$Res> {
  factory _$$_MediaFocalPointsCopyWith(
          _$_MediaFocalPoints value, $Res Function(_$_MediaFocalPoints) then) =
      __$$_MediaFocalPointsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double x, double y});
}

/// @nodoc
class __$$_MediaFocalPointsCopyWithImpl<$Res>
    extends _$MediaFocalPointsCopyWithImpl<$Res, _$_MediaFocalPoints>
    implements _$$_MediaFocalPointsCopyWith<$Res> {
  __$$_MediaFocalPointsCopyWithImpl(
      _$_MediaFocalPoints _value, $Res Function(_$_MediaFocalPoints) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$_MediaFocalPoints(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaFocalPoints implements _MediaFocalPoints {
  const _$_MediaFocalPoints({required this.x, required this.y})
      : assert(-1.0 <= x && x <= 1.0),
        assert(-1.0 <= y && y <= 1.0);

  factory _$_MediaFocalPoints.fromJson(Map<String, dynamic> json) =>
      _$$_MediaFocalPointsFromJson(json);

  @override
  final double x;
  @override
  final double y;

  @override
  String toString() {
    return 'MediaFocalPoints(x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaFocalPoints &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaFocalPointsCopyWith<_$_MediaFocalPoints> get copyWith =>
      __$$_MediaFocalPointsCopyWithImpl<_$_MediaFocalPoints>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaFocalPointsToJson(
      this,
    );
  }
}

abstract class _MediaFocalPoints implements MediaFocalPoints {
  const factory _MediaFocalPoints(
      {required final double x, required final double y}) = _$_MediaFocalPoints;

  factory _MediaFocalPoints.fromJson(Map<String, dynamic> json) =
      _$_MediaFocalPoints.fromJson;

  @override
  double get x;
  @override
  double get y;
  @override
  @JsonKey(ignore: true)
  _$$_MediaFocalPointsCopyWith<_$_MediaFocalPoints> get copyWith =>
      throw _privateConstructorUsedError;
}
