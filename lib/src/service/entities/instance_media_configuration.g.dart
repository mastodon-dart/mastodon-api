// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'instance_media_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstanceMediaConfiguration _$$_InstanceMediaConfigurationFromJson(
        Map json) =>
    $checkedCreate(
      r'_$_InstanceMediaConfiguration',
      json,
      ($checkedConvert) {
        final val = _$_InstanceMediaConfiguration(
          maxImageSize: $checkedConvert('image_size_limit', (v) => v as int),
          maxImageMatrix:
              $checkedConvert('image_matrix_limit', (v) => v as int),
          maxVideoSize: $checkedConvert('video_size_limit', (v) => v as int),
          maxVideoRateLimit:
              $checkedConvert('video_frame_rate_limit', (v) => v as int),
          maxVideoMatrix:
              $checkedConvert('video_matrix_limit', (v) => v as int),
          supportedMimeTypes: $checkedConvert(
              'supported_mime_types',
              (v) => (v as List<dynamic>)
                  .map((e) => $enumDecode(_$MimeTypeEnumMap, e))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'maxImageSize': 'image_size_limit',
        'maxImageMatrix': 'image_matrix_limit',
        'maxVideoSize': 'video_size_limit',
        'maxVideoRateLimit': 'video_frame_rate_limit',
        'maxVideoMatrix': 'video_matrix_limit',
        'supportedMimeTypes': 'supported_mime_types'
      },
    );

Map<String, dynamic> _$$_InstanceMediaConfigurationToJson(
        _$_InstanceMediaConfiguration instance) =>
    <String, dynamic>{
      'image_size_limit': instance.maxImageSize,
      'image_matrix_limit': instance.maxImageMatrix,
      'video_size_limit': instance.maxVideoSize,
      'video_frame_rate_limit': instance.maxVideoRateLimit,
      'video_matrix_limit': instance.maxVideoMatrix,
      'supported_mime_types': instance.supportedMimeTypes
          .map((e) => _$MimeTypeEnumMap[e]!)
          .toList(),
    };

const _$MimeTypeEnumMap = {
  MimeType.imageJpg: 'image/jpeg',
  MimeType.png: 'image/png',
  MimeType.gif: 'image/gif',
  MimeType.heic: 'image/heic',
  MimeType.heif: 'image/heif',
  MimeType.webp: 'image/webp',
  MimeType.avif: 'image/avif',
  MimeType.webmVideo: 'video/webm',
  MimeType.mp4Video: 'video/mp4',
  MimeType.quicktime: 'video/quicktime',
  MimeType.oggVideo: 'video/ogg',
  MimeType.asf: 'video/x-ms-asf',
  MimeType.wave: 'audio/wave',
  MimeType.wav: 'audio/wav',
  MimeType.xwav: 'audio/x-wav',
  MimeType.xpnwav: 'audio/x-pn-wave',
  MimeType.vndWave: 'audio/vnd.wave',
  MimeType.oggAudio: 'audio/ogg',
  MimeType.vorbis: 'audio/vorbis',
  MimeType.mpeg: 'audio/mpeg',
  MimeType.mp3: 'audio/mp3',
  MimeType.webmAudio: 'audio/webm',
  MimeType.flac: 'audio/flac',
  MimeType.aac: 'audio/aac',
  MimeType.m4a: 'audio/m4a',
  MimeType.xm4a: 'audio/x-m4a',
  MimeType.mp4Audio: 'audio/mp4',
  MimeType.$3gpp: 'audio/3gpp',
};
