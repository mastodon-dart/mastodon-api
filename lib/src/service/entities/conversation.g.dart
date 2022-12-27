// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Conversation _$$_ConversationFromJson(Map json) => $checkedCreate(
      r'_$_Conversation',
      json,
      ($checkedConvert) {
        final val = _$_Conversation(
          id: $checkedConvert('id', (v) => v as String),
          isUnread: $checkedConvert('unread', (v) => v as bool),
          accounts: $checkedConvert(
              'accounts',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Account.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
          lastStatus: $checkedConvert(
              'last_status',
              (v) => v == null
                  ? null
                  : Status.fromJson(Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {'isUnread': 'unread', 'lastStatus': 'last_status'},
    );

Map<String, dynamic> _$$_ConversationToJson(_$_Conversation instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'unread': instance.isUnread,
    'accounts': instance.accounts.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('last_status', instance.lastStatus?.toJson());
  return val;
}
