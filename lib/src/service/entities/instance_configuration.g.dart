// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'instance_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstanceConfiguration _$$_InstanceConfigurationFromJson(Map json) =>
    $checkedCreate(
      r'_$_InstanceConfiguration',
      json,
      ($checkedConvert) {
        final val = _$_InstanceConfiguration(
          accounts: $checkedConvert(
              'accounts',
              (v) => InstanceAccountsConfiguration.fromJson(
                  Map<String, Object?>.from(v as Map))),
          statuses: $checkedConvert(
              'statuses',
              (v) => InstanceStatusesConfiguration.fromJson(
                  Map<String, Object?>.from(v as Map))),
          media: $checkedConvert(
              'media_attachments',
              (v) => InstanceMediaConfiguration.fromJson(
                  Map<String, Object?>.from(v as Map))),
          polls: $checkedConvert(
              'polls',
              (v) => InstancePollsConfiguration.fromJson(
                  Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {'media': 'media_attachments'},
    );

Map<String, dynamic> _$$_InstanceConfigurationToJson(
        _$_InstanceConfiguration instance) =>
    <String, dynamic>{
      'accounts': instance.accounts.toJson(),
      'statuses': instance.statuses.toJson(),
      'media_attachments': instance.media.toJson(),
      'polls': instance.polls.toJson(),
    };
