// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Report _$$_ReportFromJson(Map json) => $checkedCreate(
      r'_$_Report',
      json,
      ($checkedConvert) {
        final val = _$_Report(
          id: $checkedConvert('id', (v) => v as String),
          category: $checkedConvert(
              'category', (v) => $enumDecode(_$ReportCategoryEnumMap, v)),
          comment: $checkedConvert('comment', (v) => v as String),
          statusIds: $checkedConvert('status_ids',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          ruleIds: $checkedConvert('rule_ids',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          account: $checkedConvert('target_account',
              (v) => Account.fromJson(Map<String, Object?>.from(v as Map))),
          isForwarded: $checkedConvert('forwarded', (v) => v as bool),
          isActionTaken: $checkedConvert('action_taken', (v) => v as bool),
          actionTakenAt: $checkedConvert('action_taken_at',
              (v) => v == null ? null : DateTime.parse(v as String)),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'statusIds': 'status_ids',
        'ruleIds': 'rule_ids',
        'account': 'target_account',
        'isForwarded': 'forwarded',
        'isActionTaken': 'action_taken',
        'actionTakenAt': 'action_taken_at',
        'createdAt': 'created_at'
      },
    );

Map<String, dynamic> _$$_ReportToJson(_$_Report instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'category': _$ReportCategoryEnumMap[instance.category]!,
    'comment': instance.comment,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status_ids', instance.statusIds);
  writeNotNull('rule_ids', instance.ruleIds);
  val['target_account'] = instance.account.toJson();
  val['forwarded'] = instance.isForwarded;
  val['action_taken'] = instance.isActionTaken;
  writeNotNull('action_taken_at', instance.actionTakenAt?.toIso8601String());
  val['created_at'] = instance.createdAt.toIso8601String();
  return val;
}

const _$ReportCategoryEnumMap = {
  ReportCategory.spam: 'spam',
  ReportCategory.violation: 'violation',
  ReportCategory.other: 'other',
};
