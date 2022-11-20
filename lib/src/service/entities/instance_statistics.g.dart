// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'instance_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstanceStatistics _$$_InstanceStatisticsFromJson(Map json) =>
    $checkedCreate(
      r'_$_InstanceStatistics',
      json,
      ($checkedConvert) {
        final val = _$_InstanceStatistics(
          userCount: $checkedConvert('user_count', (v) => v as int),
          statusCount: $checkedConvert('status_count', (v) => v as int),
          domainCount: $checkedConvert('domain_count', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'userCount': 'user_count',
        'statusCount': 'status_count',
        'domainCount': 'domain_count'
      },
    );

Map<String, dynamic> _$$_InstanceStatisticsToJson(
        _$_InstanceStatistics instance) =>
    <String, dynamic>{
      'user_count': instance.userCount,
      'status_count': instance.statusCount,
      'domain_count': instance.domainCount,
    };
