// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Application _$$_ApplicationFromJson(Map json) => $checkedCreate(
      r'_$_Application',
      json,
      ($checkedConvert) {
        final val = _$_Application(
          name: $checkedConvert('name', (v) => v as String),
          vapidKey: $checkedConvert('vapid_key', (v) => v as String?),
          website: $checkedConvert('website', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'vapidKey': 'vapid_key'},
    );

Map<String, dynamic> _$$_ApplicationToJson(_$_Application instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('vapid_key', instance.vapidKey);
  writeNotNull('website', instance.website);
  return val;
}
