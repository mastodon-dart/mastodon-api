// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'registered_application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisteredApplication _$$_RegisteredApplicationFromJson(Map json) =>
    $checkedCreate(
      r'_$_RegisteredApplication',
      json,
      ($checkedConvert) {
        final val = _$_RegisteredApplication(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          clientId: $checkedConvert('client_id', (v) => v as String),
          clientSecret: $checkedConvert('client_secret', (v) => v as String),
          redirectUri: $checkedConvert('redirect_uri', (v) => v as String),
          vapidKey: $checkedConvert('vapid_key', (v) => v as String),
          website: $checkedConvert('website', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'clientId': 'client_id',
        'clientSecret': 'client_secret',
        'redirectUri': 'redirect_uri',
        'vapidKey': 'vapid_key'
      },
    );

Map<String, dynamic> _$$_RegisteredApplicationToJson(
    _$_RegisteredApplication instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'client_id': instance.clientId,
    'client_secret': instance.clientSecret,
    'redirect_uri': instance.redirectUri,
    'vapid_key': instance.vapidKey,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('website', instance.website);
  return val;
}
