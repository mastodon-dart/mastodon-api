// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'v2_instance_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_V2InstanceConfiguration _$$_V2InstanceConfigurationFromJson(Map json) =>
    $checkedCreate(
      r'_$_V2InstanceConfiguration',
      json,
      ($checkedConvert) {
        final val = _$_V2InstanceConfiguration(
          urls: $checkedConvert(
              'urls',
              (v) => InstanceUrlsConfiguration.fromJson(
                  Map<String, Object?>.from(v as Map))),
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
          translation: $checkedConvert(
              'translation',
              (v) => InstanceTranslationConfiguration.fromJson(
                  Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {'media': 'media_attachments'},
    );

Map<String, dynamic> _$$_V2InstanceConfigurationToJson(
        _$_V2InstanceConfiguration instance) =>
    <String, dynamic>{
      'urls': instance.urls.toJson(),
      'accounts': instance.accounts.toJson(),
      'statuses': instance.statuses.toJson(),
      'media_attachments': instance.media.toJson(),
      'polls': instance.polls.toJson(),
      'translation': instance.translation.toJson(),
    };
