// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'featured_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeaturedTag _$$_FeaturedTagFromJson(Map json) => $checkedCreate(
      r'_$_FeaturedTag',
      json,
      ($checkedConvert) {
        final val = _$_FeaturedTag(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          statusesCount: $checkedConvert('statuses_count', (v) => v as int),
          lastStatusAt: $checkedConvert(
              'last_status_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'statusesCount': 'statuses_count',
        'lastStatusAt': 'last_status_at'
      },
    );

Map<String, dynamic> _$$_FeaturedTagToJson(_$_FeaturedTag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'statuses_count': instance.statusesCount,
      'last_status_at': instance.lastStatusAt.toIso8601String(),
    };
