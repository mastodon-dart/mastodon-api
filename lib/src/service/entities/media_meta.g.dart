// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'media_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MediaMeta _$$_MediaMetaFromJson(Map json) => $checkedCreate(
      r'_$_MediaMeta',
      json,
      ($checkedConvert) {
        final val = _$_MediaMeta(
          focus: $checkedConvert(
              'focus',
              (v) => v == null
                  ? null
                  : MediaFocalPoints.fromJson(
                      Map<String, Object?>.from(v as Map))),
          original: $checkedConvert(
              'original',
              (v) =>
                  MediaVariants.fromJson(Map<String, Object?>.from(v as Map))),
          small: $checkedConvert(
              'small',
              (v) =>
                  MediaVariants.fromJson(Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_MediaMetaToJson(_$_MediaMeta instance) =>
    <String, dynamic>{
      'focus': instance.focus?.toJson(),
      'original': instance.original.toJson(),
      'small': instance.small.toJson(),
    };
