// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'instance_usage_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstanceUsageUsers _$$_InstanceUsageUsersFromJson(Map json) =>
    $checkedCreate(
      r'_$_InstanceUsageUsers',
      json,
      ($checkedConvert) {
        final val = _$_InstanceUsageUsers(
          activeMonth: $checkedConvert('active_month', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {'activeMonth': 'active_month'},
    );

Map<String, dynamic> _$$_InstanceUsageUsersToJson(
        _$_InstanceUsageUsers instance) =>
    <String, dynamic>{
      'active_month': instance.activeMonth,
    };
