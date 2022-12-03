// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'instance_urls_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstanceUrlsConfiguration _$$_InstanceUrlsConfigurationFromJson(Map json) =>
    $checkedCreate(
      r'_$_InstanceUrlsConfiguration',
      json,
      ($checkedConvert) {
        final val = _$_InstanceUrlsConfiguration(
          streaming: $checkedConvert('streaming', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_InstanceUrlsConfigurationToJson(
        _$_InstanceUrlsConfiguration instance) =>
    <String, dynamic>{
      'streaming': instance.streaming,
    };
