// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'announcement_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnnouncementAccount _$$_AnnouncementAccountFromJson(Map json) =>
    $checkedCreate(
      r'_$_AnnouncementAccount',
      json,
      ($checkedConvert) {
        final val = _$_AnnouncementAccount(
          id: $checkedConvert('id', (v) => v as String),
          username: $checkedConvert('username', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          webFingerAccountUri: $checkedConvert('acct', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'webFingerAccountUri': 'acct'},
    );

Map<String, dynamic> _$$_AnnouncementAccountToJson(
        _$_AnnouncementAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'url': instance.url,
      'acct': instance.webFingerAccountUri,
    };
