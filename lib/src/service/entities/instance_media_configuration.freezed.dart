// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instance_media_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InstanceMediaConfiguration _$InstanceMediaConfigurationFromJson(
    Map<String, dynamic> json) {
  return _InstanceMediaConfiguration.fromJson(json);
}

/// @nodoc
mixin _$InstanceMediaConfiguration {
  /// The maximum size of any uploaded image, in bytes.
  @JsonKey(name: 'image_size_limit')
  int get maxImageSize => throw _privateConstructorUsedError;

  ///The maximum number of pixels (width times height) for image uploads.
  @JsonKey(name: 'image_matrix_limit')
  int get maxImageMatrix => throw _privateConstructorUsedError;

  /// The maximum size of any uploaded video, in bytes.
  @JsonKey(name: 'video_size_limit')
  int get maxVideoSize => throw _privateConstructorUsedError;

  /// The maximum frame rate for any uploaded video.
  @JsonKey(name: 'video_frame_rate_limit')
  int get maxVideoRateLimit => throw _privateConstructorUsedError;

  /// The maximum number of pixels (width times height) for video uploads.
  @JsonKey(name: 'video_matrix_limit')
  int get maxVideoMatrix => throw _privateConstructorUsedError;

  /// Contains MIME types that can be uploaded.
  List<MimeType> get supportedMimeTypes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstanceMediaConfigurationCopyWith<InstanceMediaConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstanceMediaConfigurationCopyWith<$Res> {
  factory $InstanceMediaConfigurationCopyWith(InstanceMediaConfiguration value,
          $Res Function(InstanceMediaConfiguration) then) =
      _$InstanceMediaConfigurationCopyWithImpl<$Res,
          InstanceMediaConfiguration>;
  @useResult
  $Res call(
      {@JsonKey(name: 'image_size_limit') int maxImageSize,
      @JsonKey(name: 'image_matrix_limit') int maxImageMatrix,
      @JsonKey(name: 'video_size_limit') int maxVideoSize,
      @JsonKey(name: 'video_frame_rate_limit') int maxVideoRateLimit,
      @JsonKey(name: 'video_matrix_limit') int maxVideoMatrix,
      List<MimeType> supportedMimeTypes});
}

/// @nodoc
class _$InstanceMediaConfigurationCopyWithImpl<$Res,
        $Val extends InstanceMediaConfiguration>
    implements $InstanceMediaConfigurationCopyWith<$Res> {
  _$InstanceMediaConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxImageSize = null,
    Object? maxImageMatrix = null,
    Object? maxVideoSize = null,
    Object? maxVideoRateLimit = null,
    Object? maxVideoMatrix = null,
    Object? supportedMimeTypes = null,
  }) {
    return _then(_value.copyWith(
      maxImageSize: null == maxImageSize
          ? _value.maxImageSize
          : maxImageSize // ignore: cast_nullable_to_non_nullable
              as int,
      maxImageMatrix: null == maxImageMatrix
          ? _value.maxImageMatrix
          : maxImageMatrix // ignore: cast_nullable_to_non_nullable
              as int,
      maxVideoSize: null == maxVideoSize
          ? _value.maxVideoSize
          : maxVideoSize // ignore: cast_nullable_to_non_nullable
              as int,
      maxVideoRateLimit: null == maxVideoRateLimit
          ? _value.maxVideoRateLimit
          : maxVideoRateLimit // ignore: cast_nullable_to_non_nullable
              as int,
      maxVideoMatrix: null == maxVideoMatrix
          ? _value.maxVideoMatrix
          : maxVideoMatrix // ignore: cast_nullable_to_non_nullable
              as int,
      supportedMimeTypes: null == supportedMimeTypes
          ? _value.supportedMimeTypes
          : supportedMimeTypes // ignore: cast_nullable_to_non_nullable
              as List<MimeType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InstanceMediaConfigurationCopyWith<$Res>
    implements $InstanceMediaConfigurationCopyWith<$Res> {
  factory _$$_InstanceMediaConfigurationCopyWith(
          _$_InstanceMediaConfiguration value,
          $Res Function(_$_InstanceMediaConfiguration) then) =
      __$$_InstanceMediaConfigurationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'image_size_limit') int maxImageSize,
      @JsonKey(name: 'image_matrix_limit') int maxImageMatrix,
      @JsonKey(name: 'video_size_limit') int maxVideoSize,
      @JsonKey(name: 'video_frame_rate_limit') int maxVideoRateLimit,
      @JsonKey(name: 'video_matrix_limit') int maxVideoMatrix,
      List<MimeType> supportedMimeTypes});
}

/// @nodoc
class __$$_InstanceMediaConfigurationCopyWithImpl<$Res>
    extends _$InstanceMediaConfigurationCopyWithImpl<$Res,
        _$_InstanceMediaConfiguration>
    implements _$$_InstanceMediaConfigurationCopyWith<$Res> {
  __$$_InstanceMediaConfigurationCopyWithImpl(
      _$_InstanceMediaConfiguration _value,
      $Res Function(_$_InstanceMediaConfiguration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxImageSize = null,
    Object? maxImageMatrix = null,
    Object? maxVideoSize = null,
    Object? maxVideoRateLimit = null,
    Object? maxVideoMatrix = null,
    Object? supportedMimeTypes = null,
  }) {
    return _then(_$_InstanceMediaConfiguration(
      maxImageSize: null == maxImageSize
          ? _value.maxImageSize
          : maxImageSize // ignore: cast_nullable_to_non_nullable
              as int,
      maxImageMatrix: null == maxImageMatrix
          ? _value.maxImageMatrix
          : maxImageMatrix // ignore: cast_nullable_to_non_nullable
              as int,
      maxVideoSize: null == maxVideoSize
          ? _value.maxVideoSize
          : maxVideoSize // ignore: cast_nullable_to_non_nullable
              as int,
      maxVideoRateLimit: null == maxVideoRateLimit
          ? _value.maxVideoRateLimit
          : maxVideoRateLimit // ignore: cast_nullable_to_non_nullable
              as int,
      maxVideoMatrix: null == maxVideoMatrix
          ? _value.maxVideoMatrix
          : maxVideoMatrix // ignore: cast_nullable_to_non_nullable
              as int,
      supportedMimeTypes: null == supportedMimeTypes
          ? _value._supportedMimeTypes
          : supportedMimeTypes // ignore: cast_nullable_to_non_nullable
              as List<MimeType>,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_InstanceMediaConfiguration implements _InstanceMediaConfiguration {
  const _$_InstanceMediaConfiguration(
      {@JsonKey(name: 'image_size_limit') required this.maxImageSize,
      @JsonKey(name: 'image_matrix_limit') required this.maxImageMatrix,
      @JsonKey(name: 'video_size_limit') required this.maxVideoSize,
      @JsonKey(name: 'video_frame_rate_limit') required this.maxVideoRateLimit,
      @JsonKey(name: 'video_matrix_limit') required this.maxVideoMatrix,
      required final List<MimeType> supportedMimeTypes})
      : _supportedMimeTypes = supportedMimeTypes;

  factory _$_InstanceMediaConfiguration.fromJson(Map<String, dynamic> json) =>
      _$$_InstanceMediaConfigurationFromJson(json);

  /// The maximum size of any uploaded image, in bytes.
  @override
  @JsonKey(name: 'image_size_limit')
  final int maxImageSize;

  ///The maximum number of pixels (width times height) for image uploads.
  @override
  @JsonKey(name: 'image_matrix_limit')
  final int maxImageMatrix;

  /// The maximum size of any uploaded video, in bytes.
  @override
  @JsonKey(name: 'video_size_limit')
  final int maxVideoSize;

  /// The maximum frame rate for any uploaded video.
  @override
  @JsonKey(name: 'video_frame_rate_limit')
  final int maxVideoRateLimit;

  /// The maximum number of pixels (width times height) for video uploads.
  @override
  @JsonKey(name: 'video_matrix_limit')
  final int maxVideoMatrix;

  /// Contains MIME types that can be uploaded.
  final List<MimeType> _supportedMimeTypes;

  /// Contains MIME types that can be uploaded.
  @override
  List<MimeType> get supportedMimeTypes {
    if (_supportedMimeTypes is EqualUnmodifiableListView)
      return _supportedMimeTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportedMimeTypes);
  }

  @override
  String toString() {
    return 'InstanceMediaConfiguration(maxImageSize: $maxImageSize, maxImageMatrix: $maxImageMatrix, maxVideoSize: $maxVideoSize, maxVideoRateLimit: $maxVideoRateLimit, maxVideoMatrix: $maxVideoMatrix, supportedMimeTypes: $supportedMimeTypes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InstanceMediaConfiguration &&
            (identical(other.maxImageSize, maxImageSize) ||
                other.maxImageSize == maxImageSize) &&
            (identical(other.maxImageMatrix, maxImageMatrix) ||
                other.maxImageMatrix == maxImageMatrix) &&
            (identical(other.maxVideoSize, maxVideoSize) ||
                other.maxVideoSize == maxVideoSize) &&
            (identical(other.maxVideoRateLimit, maxVideoRateLimit) ||
                other.maxVideoRateLimit == maxVideoRateLimit) &&
            (identical(other.maxVideoMatrix, maxVideoMatrix) ||
                other.maxVideoMatrix == maxVideoMatrix) &&
            const DeepCollectionEquality()
                .equals(other._supportedMimeTypes, _supportedMimeTypes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      maxImageSize,
      maxImageMatrix,
      maxVideoSize,
      maxVideoRateLimit,
      maxVideoMatrix,
      const DeepCollectionEquality().hash(_supportedMimeTypes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InstanceMediaConfigurationCopyWith<_$_InstanceMediaConfiguration>
      get copyWith => __$$_InstanceMediaConfigurationCopyWithImpl<
          _$_InstanceMediaConfiguration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstanceMediaConfigurationToJson(
      this,
    );
  }
}

abstract class _InstanceMediaConfiguration
    implements InstanceMediaConfiguration {
  const factory _InstanceMediaConfiguration(
          {@JsonKey(name: 'image_size_limit')
              required final int maxImageSize,
          @JsonKey(name: 'image_matrix_limit')
              required final int maxImageMatrix,
          @JsonKey(name: 'video_size_limit')
              required final int maxVideoSize,
          @JsonKey(name: 'video_frame_rate_limit')
              required final int maxVideoRateLimit,
          @JsonKey(name: 'video_matrix_limit')
              required final int maxVideoMatrix,
          required final List<MimeType> supportedMimeTypes}) =
      _$_InstanceMediaConfiguration;

  factory _InstanceMediaConfiguration.fromJson(Map<String, dynamic> json) =
      _$_InstanceMediaConfiguration.fromJson;

  @override

  /// The maximum size of any uploaded image, in bytes.
  @JsonKey(name: 'image_size_limit')
  int get maxImageSize;
  @override

  ///The maximum number of pixels (width times height) for image uploads.
  @JsonKey(name: 'image_matrix_limit')
  int get maxImageMatrix;
  @override

  /// The maximum size of any uploaded video, in bytes.
  @JsonKey(name: 'video_size_limit')
  int get maxVideoSize;
  @override

  /// The maximum frame rate for any uploaded video.
  @JsonKey(name: 'video_frame_rate_limit')
  int get maxVideoRateLimit;
  @override

  /// The maximum number of pixels (width times height) for video uploads.
  @JsonKey(name: 'video_matrix_limit')
  int get maxVideoMatrix;
  @override

  /// Contains MIME types that can be uploaded.
  List<MimeType> get supportedMimeTypes;
  @override
  @JsonKey(ignore: true)
  _$$_InstanceMediaConfigurationCopyWith<_$_InstanceMediaConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}
