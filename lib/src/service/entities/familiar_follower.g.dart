// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'familiar_follower.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FamiliarFollower _$$_FamiliarFollowerFromJson(Map json) => $checkedCreate(
      r'_$_FamiliarFollower',
      json,
      ($checkedConvert) {
        final val = _$_FamiliarFollower(
          accountId: $checkedConvert('id', (v) => v as String),
          accounts: $checkedConvert(
              'accounts',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Account.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'accountId': 'id'},
    );

Map<String, dynamic> _$$_FamiliarFollowerToJson(_$_FamiliarFollower instance) =>
    <String, dynamic>{
      'id': instance.accountId,
      'accounts': instance.accounts.map((e) => e.toJson()).toList(),
    };
