// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'thumbnail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Thumbnail _$$_ThumbnailFromJson(Map json) => $checkedCreate(
      r'_$_Thumbnail',
      json,
      ($checkedConvert) {
        final val = _$_Thumbnail(
          url: $checkedConvert('url', (v) => v as String),
          blurHash: $checkedConvert('blurhash', (v) => v as String),
          version: $checkedConvert(
              'versions',
              (v) => ThumbnailVersion.fromJson(
                  Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {'blurHash': 'blurhash', 'version': 'versions'},
    );

Map<String, dynamic> _$$_ThumbnailToJson(_$_Thumbnail instance) =>
    <String, dynamic>{
      'url': instance.url,
      'blurhash': instance.blurHash,
      'versions': instance.version.toJson(),
    };
