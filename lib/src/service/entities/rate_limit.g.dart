// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'rate_limit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RateLimit _$$_RateLimitFromJson(Map json) => $checkedCreate(
      r'_$_RateLimit',
      json,
      ($checkedConvert) {
        final val = _$_RateLimit(
          limitCount: $checkedConvert('x-rate-limit-limit', (v) => v as int),
          remainingCount:
              $checkedConvert('x-rate-limit-remaining', (v) => v as int),
          resetAt: $checkedConvert(
              'x-rate-limit-reset', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'limitCount': 'x-rate-limit-limit',
        'remainingCount': 'x-rate-limit-remaining',
        'resetAt': 'x-rate-limit-reset'
      },
    );

Map<String, dynamic> _$$_RateLimitToJson(_$_RateLimit instance) =>
    <String, dynamic>{
      'x-rate-limit-limit': instance.limitCount,
      'x-rate-limit-remaining': instance.remainingCount,
      'x-rate-limit-reset': instance.resetAt.toIso8601String(),
    };
