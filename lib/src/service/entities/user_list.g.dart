// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'user_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserList _$$_UserListFromJson(Map json) => $checkedCreate(
      r'_$_UserList',
      json,
      ($checkedConvert) {
        final val = _$_UserList(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          repliesPolicy: $checkedConvert('replies_policy',
              (v) => $enumDecodeNullable(_$ListRepliesPolicyEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {'repliesPolicy': 'replies_policy'},
    );

Map<String, dynamic> _$$_UserListToJson(_$_UserList instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'replies_policy', _$ListRepliesPolicyEnumMap[instance.repliesPolicy]);
  return val;
}

const _$ListRepliesPolicyEnumMap = {
  ListRepliesPolicy.followed: 'followed',
  ListRepliesPolicy.list: 'list',
  ListRepliesPolicy.none: 'none',
};
