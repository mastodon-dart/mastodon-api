// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'extended_description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExtendedDescription _$$_ExtendedDescriptionFromJson(Map json) =>
    $checkedCreate(
      r'_$_ExtendedDescription',
      json,
      ($checkedConvert) {
        final val = _$_ExtendedDescription(
          content: $checkedConvert('content', (v) => v as String),
          updatedAt:
              $checkedConvert('updated_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'updatedAt': 'updated_at'},
    );

Map<String, dynamic> _$$_ExtendedDescriptionToJson(
        _$_ExtendedDescription instance) =>
    <String, dynamic>{
      'content': instance.content,
      'updated_at': instance.updatedAt.toIso8601String(),
    };
