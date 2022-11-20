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
          website: $checkedConvert('website', (v) => v as String?),
          vapidKey: $checkedConvert('vapid_key', (v) => v as String?),
          clientId: $checkedConvert('client_id', (v) => v as String?),
          clientSecret: $checkedConvert('client_secret', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'vapidKey': 'vapid_key',
        'clientId': 'client_id',
        'clientSecret': 'client_secret'
      },
    );

Map<String, dynamic> _$$_ApplicationToJson(_$_Application instance) =>
    <String, dynamic>{
      'name': instance.name,
      'website': instance.website,
      'vapid_key': instance.vapidKey,
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
    };
