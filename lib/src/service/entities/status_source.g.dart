// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'status_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatusSource _$$_StatusSourceFromJson(Map json) => $checkedCreate(
      r'_$_StatusSource',
      json,
      ($checkedConvert) {
        final val = _$_StatusSource(
          id: $checkedConvert('id', (v) => v as String),
          text: $checkedConvert('text', (v) => v as String),
          spoilerText: $checkedConvert('spoiler_text', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'spoilerText': 'spoiler_text'},
    );

Map<String, dynamic> _$$_StatusSourceToJson(_$_StatusSource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'spoiler_text': instance.spoilerText,
    };
