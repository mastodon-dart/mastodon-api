// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'position_marker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PositionMarker _$$_PositionMarkerFromJson(Map json) => $checkedCreate(
      r'_$_PositionMarker',
      json,
      ($checkedConvert) {
        final val = _$_PositionMarker(
          lastReadId: $checkedConvert('last_read_id', (v) => v as String),
          version: $checkedConvert('version', (v) => v as int),
          updatedAt:
              $checkedConvert('updated_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'lastReadId': 'last_read_id',
        'updatedAt': 'updated_at'
      },
    );

Map<String, dynamic> _$$_PositionMarkerToJson(_$_PositionMarker instance) =>
    <String, dynamic>{
      'last_read_id': instance.lastReadId,
      'version': instance.version,
      'updated_at': instance.updatedAt.toIso8601String(),
    };
