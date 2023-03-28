// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'media_attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MediaAttachment _$$_MediaAttachmentFromJson(Map json) => $checkedCreate(
      r'_$_MediaAttachment',
      json,
      ($checkedConvert) {
        final val = _$_MediaAttachment(
          id: $checkedConvert('id', (v) => v as String),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$MediaAttachmentTypeEnumMap, v)),
          url: $checkedConvert('url', (v) => v as String?),
          previewUrl: $checkedConvert('preview_url', (v) => v as String?),
          remoteUrl: $checkedConvert('remote_url', (v) => v as String?),
          meta: $checkedConvert('meta',
              (v) => MediaMeta.fromJson(Map<String, Object?>.from(v as Map))),
          description: $checkedConvert('description', (v) => v as String?),
          blurHash: $checkedConvert('blurhash', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'previewUrl': 'preview_url',
        'remoteUrl': 'remote_url',
        'blurHash': 'blurhash'
      },
    );

Map<String, dynamic> _$$_MediaAttachmentToJson(_$_MediaAttachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$MediaAttachmentTypeEnumMap[instance.type]!,
      'url': instance.url,
      'preview_url': instance.previewUrl,
      'remote_url': instance.remoteUrl,
      'meta': instance.meta.toJson(),
      'description': instance.description,
      'blurhash': instance.blurHash,
    };

const _$MediaAttachmentTypeEnumMap = {
  MediaAttachmentType.unknown: 'unknown',
  MediaAttachmentType.image: 'image',
  MediaAttachmentType.gifv: 'gifv',
  MediaAttachmentType.video: 'video',
  MediaAttachmentType.audio: 'audio',
};
