// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'thumbnail_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ThumbnailVersion _$$_ThumbnailVersionFromJson(Map json) => $checkedCreate(
      r'_$_ThumbnailVersion',
      json,
      ($checkedConvert) {
        final val = _$_ThumbnailVersion(
          v1: $checkedConvert('@1x', (v) => v as String),
          v2: $checkedConvert('@2x', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'v1': '@1x', 'v2': '@2x'},
    );

Map<String, dynamic> _$$_ThumbnailVersionToJson(_$_ThumbnailVersion instance) =>
    <String, dynamic>{
      '@1x': instance.v1,
      '@2x': instance.v2,
    };
