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
          versions: $checkedConvert(
              'versions',
              (v) => (v as List<dynamic>)
                  .map((e) => ThumbnailVersion.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'blurHash': 'blurhash'},
    );

Map<String, dynamic> _$$_ThumbnailToJson(_$_Thumbnail instance) =>
    <String, dynamic>{
      'url': instance.url,
      'blurhash': instance.blurHash,
      'versions': instance.versions.map((e) => e.toJson()).toList(),
    };
