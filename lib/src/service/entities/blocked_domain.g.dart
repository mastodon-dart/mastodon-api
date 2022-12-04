// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'blocked_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BlockedDomain _$$_BlockedDomainFromJson(Map json) => $checkedCreate(
      r'_$_BlockedDomain',
      json,
      ($checkedConvert) {
        final val = _$_BlockedDomain(
          name: $checkedConvert('domain', (v) => v as String),
          sha256digest: $checkedConvert('digest', (v) => v as String),
          severity: $checkedConvert(
              'severity', (v) => $enumDecode(_$BlockSeverityEnumMap, v)),
          reason: $checkedConvert('comment', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'name': 'domain',
        'sha256digest': 'digest',
        'reason': 'comment'
      },
    );

Map<String, dynamic> _$$_BlockedDomainToJson(_$_BlockedDomain instance) =>
    <String, dynamic>{
      'domain': instance.name,
      'digest': instance.sha256digest,
      'severity': _$BlockSeverityEnumMap[instance.severity]!,
      'comment': instance.reason,
    };

const _$BlockSeverityEnumMap = {
  BlockSeverity.silence: 'silence',
  BlockSeverity.suspend: 'suspend',
};
