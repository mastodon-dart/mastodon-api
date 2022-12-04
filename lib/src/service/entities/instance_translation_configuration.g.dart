// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'instance_translation_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstanceTranslationConfiguration
    _$$_InstanceTranslationConfigurationFromJson(Map json) => $checkedCreate(
          r'_$_InstanceTranslationConfiguration',
          json,
          ($checkedConvert) {
            final val = _$_InstanceTranslationConfiguration(
              isEnabled: $checkedConvert('enabled', (v) => v as bool),
            );
            return val;
          },
          fieldKeyMap: const {'isEnabled': 'enabled'},
        );

Map<String, dynamic> _$$_InstanceTranslationConfigurationToJson(
        _$_InstanceTranslationConfiguration instance) =>
    <String, dynamic>{
      'enabled': instance.isEnabled,
    };
