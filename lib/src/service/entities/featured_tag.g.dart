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
          url: $checkedConvert('url', (v) => v as String?),
          statusesCount: $checkedConvert(
              'statuses_count',
              (v) => _$JsonConverterFromJson<String, int>(
                  v, const IntConverter().fromJson)),
          lastStatusAt: $checkedConvert('last_status_at',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'statusesCount': 'statuses_count',
        'lastStatusAt': 'last_status_at'
      },
    );

Map<String, dynamic> _$$_FeaturedTagToJson(_$_FeaturedTag instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url', instance.url);
  writeNotNull(
      'statuses_count',
      _$JsonConverterToJson<String, int>(
          instance.statusesCount, const IntConverter().toJson));
  writeNotNull('last_status_at', instance.lastStatusAt?.toIso8601String());
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
