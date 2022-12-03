// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'instance_usage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstanceUsage _$$_InstanceUsageFromJson(Map json) => $checkedCreate(
      r'_$_InstanceUsage',
      json,
      ($checkedConvert) {
        final val = _$_InstanceUsage(
          users: $checkedConvert(
              'users',
              (v) => InstanceUsageUsers.fromJson(
                  Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_InstanceUsageToJson(_$_InstanceUsage instance) =>
    <String, dynamic>{
      'users': instance.users.toJson(),
    };
