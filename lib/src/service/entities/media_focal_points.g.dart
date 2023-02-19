// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'media_focal_points.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MediaFocalPoints _$$_MediaFocalPointsFromJson(Map json) => $checkedCreate(
      r'_$_MediaFocalPoints',
      json,
      ($checkedConvert) {
        final val = _$_MediaFocalPoints(
          x: $checkedConvert('x', (v) => (v as num).toDouble()),
          y: $checkedConvert('y', (v) => (v as num).toDouble()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_MediaFocalPointsToJson(_$_MediaFocalPoints instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };
