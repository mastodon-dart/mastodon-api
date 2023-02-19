// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaMeta _$MediaMetaFromJson(Map<String, dynamic> json) {
  return _MediaMeta.fromJson(json);
}

/// @nodoc
mixin _$MediaMeta {
  MediaFocalPoints? get focus => throw _privateConstructorUsedError;
  MediaVariants get original => throw _privateConstructorUsedError;
  MediaVariants get small => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaMetaCopyWith<MediaMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaMetaCopyWith<$Res> {
  factory $MediaMetaCopyWith(MediaMeta value, $Res Function(MediaMeta) then) =
      _$MediaMetaCopyWithImpl<$Res, MediaMeta>;
  @useResult
  $Res call(
      {MediaFocalPoints? focus, MediaVariants original, MediaVariants small});

  $MediaFocalPointsCopyWith<$Res>? get focus;
  $MediaVariantsCopyWith<$Res> get original;
  $MediaVariantsCopyWith<$Res> get small;
}

/// @nodoc
class _$MediaMetaCopyWithImpl<$Res, $Val extends MediaMeta>
    implements $MediaMetaCopyWith<$Res> {
  _$MediaMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focus = freezed,
    Object? original = null,
    Object? small = null,
  }) {
    return _then(_value.copyWith(
      focus: freezed == focus
          ? _value.focus
          : focus // ignore: cast_nullable_to_non_nullable
              as MediaFocalPoints?,
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as MediaVariants,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as MediaVariants,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaFocalPointsCopyWith<$Res>? get focus {
    if (_value.focus == null) {
      return null;
    }

    return $MediaFocalPointsCopyWith<$Res>(_value.focus!, (value) {
      return _then(_value.copyWith(focus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaVariantsCopyWith<$Res> get original {
    return $MediaVariantsCopyWith<$Res>(_value.original, (value) {
      return _then(_value.copyWith(original: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaVariantsCopyWith<$Res> get small {
    return $MediaVariantsCopyWith<$Res>(_value.small, (value) {
      return _then(_value.copyWith(small: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MediaMetaCopyWith<$Res> implements $MediaMetaCopyWith<$Res> {
  factory _$$_MediaMetaCopyWith(
          _$_MediaMeta value, $Res Function(_$_MediaMeta) then) =
      __$$_MediaMetaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MediaFocalPoints? focus, MediaVariants original, MediaVariants small});

  @override
  $MediaFocalPointsCopyWith<$Res>? get focus;
  @override
  $MediaVariantsCopyWith<$Res> get original;
  @override
  $MediaVariantsCopyWith<$Res> get small;
}

/// @nodoc
class __$$_MediaMetaCopyWithImpl<$Res>
    extends _$MediaMetaCopyWithImpl<$Res, _$_MediaMeta>
    implements _$$_MediaMetaCopyWith<$Res> {
  __$$_MediaMetaCopyWithImpl(
      _$_MediaMeta _value, $Res Function(_$_MediaMeta) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focus = freezed,
    Object? original = null,
    Object? small = null,
  }) {
    return _then(_$_MediaMeta(
      focus: freezed == focus
          ? _value.focus
          : focus // ignore: cast_nullable_to_non_nullable
              as MediaFocalPoints?,
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as MediaVariants,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as MediaVariants,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaMeta implements _MediaMeta {
  const _$_MediaMeta({this.focus, required this.original, required this.small});

  factory _$_MediaMeta.fromJson(Map<String, dynamic> json) =>
      _$$_MediaMetaFromJson(json);

  @override
  final MediaFocalPoints? focus;
  @override
  final MediaVariants original;
  @override
  final MediaVariants small;

  @override
  String toString() {
    return 'MediaMeta(focus: $focus, original: $original, small: $small)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaMeta &&
            (identical(other.focus, focus) || other.focus == focus) &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.small, small) || other.small == small));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, focus, original, small);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaMetaCopyWith<_$_MediaMeta> get copyWith =>
      __$$_MediaMetaCopyWithImpl<_$_MediaMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaMetaToJson(
      this,
    );
  }
}

abstract class _MediaMeta implements MediaMeta {
  const factory _MediaMeta(
      {final MediaFocalPoints? focus,
      required final MediaVariants original,
      required final MediaVariants small}) = _$_MediaMeta;

  factory _MediaMeta.fromJson(Map<String, dynamic> json) =
      _$_MediaMeta.fromJson;

  @override
  MediaFocalPoints? get focus;
  @override
  MediaVariants get original;
  @override
  MediaVariants get small;
  @override
  @JsonKey(ignore: true)
  _$$_MediaMetaCopyWith<_$_MediaMeta> get copyWith =>
      throw _privateConstructorUsedError;
}
