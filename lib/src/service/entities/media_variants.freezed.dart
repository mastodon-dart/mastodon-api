// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_variants.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaVariants _$MediaVariantsFromJson(Map<String, dynamic> json) {
  return _MediaVariants.fromJson(json);
}

/// @nodoc
mixin _$MediaVariants {
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;
  double? get aspect => throw _privateConstructorUsedError;
  String? get frameRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  double? get durationInSeconds => throw _privateConstructorUsedError;
  int? get bitrate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaVariantsCopyWith<MediaVariants> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaVariantsCopyWith<$Res> {
  factory $MediaVariantsCopyWith(
          MediaVariants value, $Res Function(MediaVariants) then) =
      _$MediaVariantsCopyWithImpl<$Res, MediaVariants>;
  @useResult
  $Res call(
      {int width,
      int height,
      String? size,
      double? aspect,
      String? frameRate,
      @JsonKey(name: 'duration') double? durationInSeconds,
      int? bitrate});
}

/// @nodoc
class _$MediaVariantsCopyWithImpl<$Res, $Val extends MediaVariants>
    implements $MediaVariantsCopyWith<$Res> {
  _$MediaVariantsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? size = freezed,
    Object? aspect = freezed,
    Object? frameRate = freezed,
    Object? durationInSeconds = freezed,
    Object? bitrate = freezed,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      aspect: freezed == aspect
          ? _value.aspect
          : aspect // ignore: cast_nullable_to_non_nullable
              as double?,
      frameRate: freezed == frameRate
          ? _value.frameRate
          : frameRate // ignore: cast_nullable_to_non_nullable
              as String?,
      durationInSeconds: freezed == durationInSeconds
          ? _value.durationInSeconds
          : durationInSeconds // ignore: cast_nullable_to_non_nullable
              as double?,
      bitrate: freezed == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaVariantsCopyWith<$Res>
    implements $MediaVariantsCopyWith<$Res> {
  factory _$$_MediaVariantsCopyWith(
          _$_MediaVariants value, $Res Function(_$_MediaVariants) then) =
      __$$_MediaVariantsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int width,
      int height,
      String? size,
      double? aspect,
      String? frameRate,
      @JsonKey(name: 'duration') double? durationInSeconds,
      int? bitrate});
}

/// @nodoc
class __$$_MediaVariantsCopyWithImpl<$Res>
    extends _$MediaVariantsCopyWithImpl<$Res, _$_MediaVariants>
    implements _$$_MediaVariantsCopyWith<$Res> {
  __$$_MediaVariantsCopyWithImpl(
      _$_MediaVariants _value, $Res Function(_$_MediaVariants) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? size = freezed,
    Object? aspect = freezed,
    Object? frameRate = freezed,
    Object? durationInSeconds = freezed,
    Object? bitrate = freezed,
  }) {
    return _then(_$_MediaVariants(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      aspect: freezed == aspect
          ? _value.aspect
          : aspect // ignore: cast_nullable_to_non_nullable
              as double?,
      frameRate: freezed == frameRate
          ? _value.frameRate
          : frameRate // ignore: cast_nullable_to_non_nullable
              as String?,
      durationInSeconds: freezed == durationInSeconds
          ? _value.durationInSeconds
          : durationInSeconds // ignore: cast_nullable_to_non_nullable
              as double?,
      bitrate: freezed == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaVariants implements _MediaVariants {
  const _$_MediaVariants(
      {required this.width,
      required this.height,
      this.size,
      this.aspect,
      this.frameRate,
      @JsonKey(name: 'duration') this.durationInSeconds,
      this.bitrate});

  factory _$_MediaVariants.fromJson(Map<String, dynamic> json) =>
      _$$_MediaVariantsFromJson(json);

  @override
  final int width;
  @override
  final int height;
  @override
  final String? size;
  @override
  final double? aspect;
  @override
  final String? frameRate;
  @override
  @JsonKey(name: 'duration')
  final double? durationInSeconds;
  @override
  final int? bitrate;

  @override
  String toString() {
    return 'MediaVariants(width: $width, height: $height, size: $size, aspect: $aspect, frameRate: $frameRate, durationInSeconds: $durationInSeconds, bitrate: $bitrate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaVariants &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.aspect, aspect) || other.aspect == aspect) &&
            (identical(other.frameRate, frameRate) ||
                other.frameRate == frameRate) &&
            (identical(other.durationInSeconds, durationInSeconds) ||
                other.durationInSeconds == durationInSeconds) &&
            (identical(other.bitrate, bitrate) || other.bitrate == bitrate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, width, height, size, aspect,
      frameRate, durationInSeconds, bitrate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaVariantsCopyWith<_$_MediaVariants> get copyWith =>
      __$$_MediaVariantsCopyWithImpl<_$_MediaVariants>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaVariantsToJson(
      this,
    );
  }
}

abstract class _MediaVariants implements MediaVariants {
  const factory _MediaVariants(
      {required final int width,
      required final int height,
      final String? size,
      final double? aspect,
      final String? frameRate,
      @JsonKey(name: 'duration') final double? durationInSeconds,
      final int? bitrate}) = _$_MediaVariants;

  factory _MediaVariants.fromJson(Map<String, dynamic> json) =
      _$_MediaVariants.fromJson;

  @override
  int get width;
  @override
  int get height;
  @override
  String? get size;
  @override
  double? get aspect;
  @override
  String? get frameRate;
  @override
  @JsonKey(name: 'duration')
  double? get durationInSeconds;
  @override
  int? get bitrate;
  @override
  @JsonKey(ignore: true)
  _$$_MediaVariantsCopyWith<_$_MediaVariants> get copyWith =>
      throw _privateConstructorUsedError;
}
