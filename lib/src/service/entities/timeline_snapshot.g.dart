// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'timeline_snapshot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimelineSnapshot _$$_TimelineSnapshotFromJson(Map json) => $checkedCreate(
      r'_$_TimelineSnapshot',
      json,
      ($checkedConvert) {
        final val = _$_TimelineSnapshot(
          notifications: $checkedConvert(
              'notifications',
              (v) => v == null
                  ? null
                  : PositionMarker.fromJson(
                      Map<String, Object?>.from(v as Map))),
          home: $checkedConvert(
              'home',
              (v) => v == null
                  ? null
                  : PositionMarker.fromJson(
                      Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_TimelineSnapshotToJson(_$_TimelineSnapshot instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('notifications', instance.notifications?.toJson());
  writeNotNull('home', instance.home?.toJson());
  return val;
}
