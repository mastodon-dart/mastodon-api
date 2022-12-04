// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'instance_accounts_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstanceAccountsConfiguration _$$_InstanceAccountsConfigurationFromJson(
        Map json) =>
    $checkedCreate(
      r'_$_InstanceAccountsConfiguration',
      json,
      ($checkedConvert) {
        final val = _$_InstanceAccountsConfiguration(
          maxFeaturedTags:
              $checkedConvert('max_featured_tags', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {'maxFeaturedTags': 'max_featured_tags'},
    );

Map<String, dynamic> _$$_InstanceAccountsConfigurationToJson(
        _$_InstanceAccountsConfiguration instance) =>
    <String, dynamic>{
      'max_featured_tags': instance.maxFeaturedTags,
    };
