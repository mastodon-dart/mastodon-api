// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'media_variants.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MediaVariants _$$_MediaVariantsFromJson(Map json) => $checkedCreate(
      r'_$_MediaVariants',
      json,
      ($checkedConvert) {
        final val = _$_MediaVariants(
          width: $checkedConvert('width', (v) => v as int),
          height: $checkedConvert('height', (v) => v as int),
          size: $checkedConvert('size', (v) => v as String),
          aspect: $checkedConvert('aspect', (v) => (v as num).toDouble()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_MediaVariantsToJson(_$_MediaVariants instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'size': instance.size,
      'aspect': instance.aspect,
    };
