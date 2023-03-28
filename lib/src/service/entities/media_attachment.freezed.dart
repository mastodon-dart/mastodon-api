// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_attachment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaAttachment _$MediaAttachmentFromJson(Map<String, dynamic> json) {
  return _MediaAttachment.fromJson(json);
}

/// @nodoc
mixin _$MediaAttachment {
  /// The ID of the attachment in the database.
  String get id => throw _privateConstructorUsedError;

  /// The type of the attachment.
  MediaAttachmentType get type => throw _privateConstructorUsedError;

  /// The location of the original full-size attachment.
  String? get url => throw _privateConstructorUsedError;

  /// The location of a scaled-down preview of the attachment.
  String? get previewUrl => throw _privateConstructorUsedError;

  /// The location of the full-size original attachment on the remote website.
  String? get remoteUrl => throw _privateConstructorUsedError;

  /// Metadata returned by Paperclip.
  MediaMeta get meta => throw _privateConstructorUsedError;

  /// Alternate text that describes what is in the media attachment, to be
  /// used for the visually impaired or when media attachments do not load.
  String? get description => throw _privateConstructorUsedError;

  /// A hash computed by the BlurHash algorithm, for generating colorful
  /// preview thumbnails when media has not been downloaded yet.
  @JsonKey(name: 'blurhash')
  String? get blurHash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaAttachmentCopyWith<MediaAttachment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaAttachmentCopyWith<$Res> {
  factory $MediaAttachmentCopyWith(
          MediaAttachment value, $Res Function(MediaAttachment) then) =
      _$MediaAttachmentCopyWithImpl<$Res, MediaAttachment>;
  @useResult
  $Res call(
      {String id,
      MediaAttachmentType type,
      String? url,
      String? previewUrl,
      String? remoteUrl,
      MediaMeta meta,
      String? description,
      @JsonKey(name: 'blurhash') String? blurHash});

  $MediaMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$MediaAttachmentCopyWithImpl<$Res, $Val extends MediaAttachment>
    implements $MediaAttachmentCopyWith<$Res> {
  _$MediaAttachmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? url = freezed,
    Object? previewUrl = freezed,
    Object? remoteUrl = freezed,
    Object? meta = null,
    Object? description = freezed,
    Object? blurHash = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaAttachmentType,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      remoteUrl: freezed == remoteUrl
          ? _value.remoteUrl
          : remoteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MediaMeta,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      blurHash: freezed == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaMetaCopyWith<$Res> get meta {
    return $MediaMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MediaAttachmentCopyWith<$Res>
    implements $MediaAttachmentCopyWith<$Res> {
  factory _$$_MediaAttachmentCopyWith(
          _$_MediaAttachment value, $Res Function(_$_MediaAttachment) then) =
      __$$_MediaAttachmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      MediaAttachmentType type,
      String? url,
      String? previewUrl,
      String? remoteUrl,
      MediaMeta meta,
      String? description,
      @JsonKey(name: 'blurhash') String? blurHash});

  @override
  $MediaMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_MediaAttachmentCopyWithImpl<$Res>
    extends _$MediaAttachmentCopyWithImpl<$Res, _$_MediaAttachment>
    implements _$$_MediaAttachmentCopyWith<$Res> {
  __$$_MediaAttachmentCopyWithImpl(
      _$_MediaAttachment _value, $Res Function(_$_MediaAttachment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? url = freezed,
    Object? previewUrl = freezed,
    Object? remoteUrl = freezed,
    Object? meta = null,
    Object? description = freezed,
    Object? blurHash = freezed,
  }) {
    return _then(_$_MediaAttachment(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaAttachmentType,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      remoteUrl: freezed == remoteUrl
          ? _value.remoteUrl
          : remoteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MediaMeta,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      blurHash: freezed == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaAttachment implements _MediaAttachment {
  const _$_MediaAttachment(
      {required this.id,
      required this.type,
      this.url,
      required this.previewUrl,
      this.remoteUrl,
      required this.meta,
      this.description,
      @JsonKey(name: 'blurhash') this.blurHash});

  factory _$_MediaAttachment.fromJson(Map<String, dynamic> json) =>
      _$$_MediaAttachmentFromJson(json);

  /// The ID of the attachment in the database.
  @override
  final String id;

  /// The type of the attachment.
  @override
  final MediaAttachmentType type;

  /// The location of the original full-size attachment.
  @override
  final String? url;

  /// The location of a scaled-down preview of the attachment.
  @override
  final String? previewUrl;

  /// The location of the full-size original attachment on the remote website.
  @override
  final String? remoteUrl;

  /// Metadata returned by Paperclip.
  @override
  final MediaMeta meta;

  /// Alternate text that describes what is in the media attachment, to be
  /// used for the visually impaired or when media attachments do not load.
  @override
  final String? description;

  /// A hash computed by the BlurHash algorithm, for generating colorful
  /// preview thumbnails when media has not been downloaded yet.
  @override
  @JsonKey(name: 'blurhash')
  final String? blurHash;

  @override
  String toString() {
    return 'MediaAttachment(id: $id, type: $type, url: $url, previewUrl: $previewUrl, remoteUrl: $remoteUrl, meta: $meta, description: $description, blurHash: $blurHash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaAttachment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl) &&
            (identical(other.remoteUrl, remoteUrl) ||
                other.remoteUrl == remoteUrl) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.blurHash, blurHash) ||
                other.blurHash == blurHash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, url, previewUrl,
      remoteUrl, meta, description, blurHash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaAttachmentCopyWith<_$_MediaAttachment> get copyWith =>
      __$$_MediaAttachmentCopyWithImpl<_$_MediaAttachment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaAttachmentToJson(
      this,
    );
  }
}

abstract class _MediaAttachment implements MediaAttachment {
  const factory _MediaAttachment(
      {required final String id,
      required final MediaAttachmentType type,
      final String? url,
      required final String? previewUrl,
      final String? remoteUrl,
      required final MediaMeta meta,
      final String? description,
      @JsonKey(name: 'blurhash') final String? blurHash}) = _$_MediaAttachment;

  factory _MediaAttachment.fromJson(Map<String, dynamic> json) =
      _$_MediaAttachment.fromJson;

  @override

  /// The ID of the attachment in the database.
  String get id;
  @override

  /// The type of the attachment.
  MediaAttachmentType get type;
  @override

  /// The location of the original full-size attachment.
  String? get url;
  @override

  /// The location of a scaled-down preview of the attachment.
  String? get previewUrl;
  @override

  /// The location of the full-size original attachment on the remote website.
  String? get remoteUrl;
  @override

  /// Metadata returned by Paperclip.
  MediaMeta get meta;
  @override

  /// Alternate text that describes what is in the media attachment, to be
  /// used for the visually impaired or when media attachments do not load.
  String? get description;
  @override

  /// A hash computed by the BlurHash algorithm, for generating colorful
  /// preview thumbnails when media has not been downloaded yet.
  @JsonKey(name: 'blurhash')
  String? get blurHash;
  @override
  @JsonKey(ignore: true)
  _$$_MediaAttachmentCopyWith<_$_MediaAttachment> get copyWith =>
      throw _privateConstructorUsedError;
}
