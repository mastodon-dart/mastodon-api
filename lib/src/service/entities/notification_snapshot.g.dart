// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'notification_snapshot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationSnapshot _$$_NotificationSnapshotFromJson(Map json) =>
    $checkedCreate(
      r'_$_NotificationSnapshot',
      json,
      ($checkedConvert) {
        final val = _$_NotificationSnapshot(
          marker: $checkedConvert(
              'notifications',
              (v) =>
                  PositionMarker.fromJson(Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {'marker': 'notifications'},
    );

Map<String, dynamic> _$$_NotificationSnapshotToJson(
        _$_NotificationSnapshot instance) =>
    <String, dynamic>{
      'notifications': instance.marker.toJson(),
    };
