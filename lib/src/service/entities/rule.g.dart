// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Rule _$$_RuleFromJson(Map json) => $checkedCreate(
      r'_$_Rule',
      json,
      ($checkedConvert) {
        final val = _$_Rule(
          id: $checkedConvert('id', (v) => v as String),
          text: $checkedConvert('text', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_RuleToJson(_$_Rule instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
    };
