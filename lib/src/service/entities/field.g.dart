// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Field _$$_FieldFromJson(Map json) => $checkedCreate(
      r'_$_Field',
      json,
      ($checkedConvert) {
        final val = _$_Field(
          name: $checkedConvert('name', (v) => v as String),
          value: $checkedConvert('value', (v) => v as String),
          verifiedAt: $checkedConvert('verified_at',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'verifiedAt': 'verified_at'},
    );

Map<String, dynamic> _$$_FieldToJson(_$_Field instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'value': instance.value,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('verified_at', instance.verifiedAt?.toIso8601String());
  return val;
}
