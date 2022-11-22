// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Account _$$_AccountFromJson(Map json) => $checkedCreate(
      r'_$_Account',
      json,
      ($checkedConvert) {
        final val = _$_Account(
          id: $checkedConvert('id', (v) => v as String),
          username: $checkedConvert('username', (v) => v as String),
          displayName: $checkedConvert('display_name', (v) => v as String),
          acct: $checkedConvert('acct', (v) => v as String),
          note: $checkedConvert('note', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          avatar: $checkedConvert('avatar', (v) => v as String),
          avatarStatic: $checkedConvert('avatar_static', (v) => v as String),
          header: $checkedConvert('header', (v) => v as String),
          headerStatic: $checkedConvert('header_static', (v) => v as String),
          followersCount: $checkedConvert('followers_count', (v) => v as int),
          followingCount: $checkedConvert('following_count', (v) => v as int),
          subscribingCount:
              $checkedConvert('subscribing_count', (v) => v as int),
          statusesCount: $checkedConvert('statuses_count', (v) => v as int),
          emojis: $checkedConvert(
              'emojis',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Emoji.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
          fields: $checkedConvert(
              'fields',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Field.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
          isDiscoverable:
              $checkedConvert('discoverable', (v) => v as bool? ?? false),
          isLocked: $checkedConvert('locked', (v) => v as bool? ?? false),
          isBot: $checkedConvert('bot', (v) => v as bool? ?? false),
          lastStatusAt: $checkedConvert(
              'last_status_at', (v) => DateTime.parse(v as String)),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'displayName': 'display_name',
        'avatarStatic': 'avatar_static',
        'headerStatic': 'header_static',
        'followersCount': 'followers_count',
        'followingCount': 'following_count',
        'subscribingCount': 'subscribing_count',
        'statusesCount': 'statuses_count',
        'isDiscoverable': 'discoverable',
        'isLocked': 'locked',
        'isBot': 'bot',
        'lastStatusAt': 'last_status_at',
        'createdAt': 'created_at'
      },
    );

Map<String, dynamic> _$$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'display_name': instance.displayName,
      'acct': instance.acct,
      'note': instance.note,
      'url': instance.url,
      'avatar': instance.avatar,
      'avatar_static': instance.avatarStatic,
      'header': instance.header,
      'header_static': instance.headerStatic,
      'followers_count': instance.followersCount,
      'following_count': instance.followingCount,
      'subscribing_count': instance.subscribingCount,
      'statuses_count': instance.statusesCount,
      'emojis': instance.emojis.map((e) => e.toJson()).toList(),
      'fields': instance.fields.map((e) => e.toJson()).toList(),
      'discoverable': instance.isDiscoverable,
      'locked': instance.isLocked,
      'bot': instance.isBot,
      'last_status_at': instance.lastStatusAt.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
    };
