// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'thumbnail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Thumbnail _$ThumbnailFromJson(Map<String, dynamic> json) {
  return _Thumbnail.fromJson(json);
}

/// @nodoc
mixin _$Thumbnail {
  /// The URL for the thumbnail image.
  String get url => throw _privateConstructorUsedError;

  /// A hash computed by the `BlurHash algorithm`,
  /// for generating colorful preview thumbnails when media
  /// has not been downloaded yet.
  @JsonKey(name: 'blurhash')
  String get blurHash => throw _privateConstructorUsedError;

  /// Links to scaled resolution images, for high DPI screens.
  @JsonKey(name: 'versions')
  ThumbnailVersion get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThumbnailCopyWith<Thumbnail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbnailCopyWith<$Res> {
  factory $ThumbnailCopyWith(Thumbnail value, $Res Function(Thumbnail) then) =
      _$ThumbnailCopyWithImpl<$Res, Thumbnail>;
  @useResult
  $Res call(
      {String url,
      @JsonKey(name: 'blurhash') String blurHash,
      @JsonKey(name: 'versions') ThumbnailVersion version});

  $ThumbnailVersionCopyWith<$Res> get version;
}

/// @nodoc
class _$ThumbnailCopyWithImpl<$Res, $Val extends Thumbnail>
    implements $ThumbnailCopyWith<$Res> {
  _$ThumbnailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? blurHash = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      blurHash: null == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as ThumbnailVersion,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ThumbnailVersionCopyWith<$Res> get version {
    return $ThumbnailVersionCopyWith<$Res>(_value.version, (value) {
      return _then(_value.copyWith(version: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ThumbnailCopyWith<$Res> implements $ThumbnailCopyWith<$Res> {
  factory _$$_ThumbnailCopyWith(
          _$_Thumbnail value, $Res Function(_$_Thumbnail) then) =
      __$$_ThumbnailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      @JsonKey(name: 'blurhash') String blurHash,
      @JsonKey(name: 'versions') ThumbnailVersion version});

  @override
  $ThumbnailVersionCopyWith<$Res> get version;
}

/// @nodoc
class __$$_ThumbnailCopyWithImpl<$Res>
    extends _$ThumbnailCopyWithImpl<$Res, _$_Thumbnail>
    implements _$$_ThumbnailCopyWith<$Res> {
  __$$_ThumbnailCopyWithImpl(
      _$_Thumbnail _value, $Res Function(_$_Thumbnail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? blurHash = null,
    Object? version = null,
  }) {
    return _then(_$_Thumbnail(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      blurHash: null == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as ThumbnailVersion,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_Thumbnail implements _Thumbnail {
  const _$_Thumbnail(
      {required this.url,
      @JsonKey(name: 'blurhash') required this.blurHash,
      @JsonKey(name: 'versions') required this.version});

  factory _$_Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$$_ThumbnailFromJson(json);

  /// The URL for the thumbnail image.
  @override
  final String url;

  /// A hash computed by the `BlurHash algorithm`,
  /// for generating colorful preview thumbnails when media
  /// has not been downloaded yet.
  @override
  @JsonKey(name: 'blurhash')
  final String blurHash;

  /// Links to scaled resolution images, for high DPI screens.
  @override
  @JsonKey(name: 'versions')
  final ThumbnailVersion version;

  @override
  String toString() {
    return 'Thumbnail(url: $url, blurHash: $blurHash, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Thumbnail &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.blurHash, blurHash) ||
                other.blurHash == blurHash) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, blurHash, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThumbnailCopyWith<_$_Thumbnail> get copyWith =>
      __$$_ThumbnailCopyWithImpl<_$_Thumbnail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ThumbnailToJson(
      this,
    );
  }
}

abstract class _Thumbnail implements Thumbnail {
  const factory _Thumbnail(
          {required final String url,
          @JsonKey(name: 'blurhash') required final String blurHash,
          @JsonKey(name: 'versions') required final ThumbnailVersion version}) =
      _$_Thumbnail;

  factory _Thumbnail.fromJson(Map<String, dynamic> json) =
      _$_Thumbnail.fromJson;

  @override

  /// The URL for the thumbnail image.
  String get url;
  @override

  /// A hash computed by the `BlurHash algorithm`,
  /// for generating colorful preview thumbnails when media
  /// has not been downloaded yet.
  @JsonKey(name: 'blurhash')
  String get blurHash;
  @override

  /// Links to scaled resolution images, for high DPI screens.
  @JsonKey(name: 'versions')
  ThumbnailVersion get version;
  @override
  @JsonKey(ignore: true)
  _$$_ThumbnailCopyWith<_$_Thumbnail> get copyWith =>
      throw _privateConstructorUsedError;
}
