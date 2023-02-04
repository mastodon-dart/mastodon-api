// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Notification _$$_NotificationFromJson(Map json) => $checkedCreate(
      r'_$_Notification',
      json,
      ($checkedConvert) {
        final val = _$_Notification(
          id: $checkedConvert('id', (v) => v as String),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$NotificationTypeEnumMap, v)),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
          account: $checkedConvert('account',
              (v) => Account.fromJson(Map<String, Object?>.from(v as Map))),
          status: $checkedConvert(
              'status',
              (v) => v == null
                  ? null
                  : Status.fromJson(Map<String, Object?>.from(v as Map))),
          report: $checkedConvert(
              'report',
              (v) => v == null
                  ? null
                  : Report.fromJson(Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
    );

Map<String, dynamic> _$$_NotificationToJson(_$_Notification instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'type': _$NotificationTypeEnumMap[instance.type]!,
    'created_at': instance.createdAt.toIso8601String(),
    'account': instance.account.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status?.toJson());
  writeNotNull('report', instance.report?.toJson());
  return val;
}

const _$NotificationTypeEnumMap = {
  NotificationType.mention: 'mention',
  NotificationType.status: 'status',
  NotificationType.reblog: 'reblog',
  NotificationType.follow: 'follow',
  NotificationType.followRequest: 'follow_request',
  NotificationType.favourite: 'favourite',
  NotificationType.poll: 'poll',
  NotificationType.update: 'update',
  NotificationType.adminSignUp: 'admin.sign_up',
  NotificationType.adminReport: 'admin.report',
};
