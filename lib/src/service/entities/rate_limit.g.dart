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
          limitCount: $checkedConvert('x-ratelimit-limit', (v) => v as int),
          remainingCount:
              $checkedConvert('x-ratelimit-remaining', (v) => v as int),
          resetAt: $checkedConvert(
              'x-ratelimit-reset', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'limitCount': 'x-ratelimit-limit',
        'remainingCount': 'x-ratelimit-remaining',
        'resetAt': 'x-ratelimit-reset'
      },
    );

Map<String, dynamic> _$$_RateLimitToJson(_$_RateLimit instance) =>
    <String, dynamic>{
      'x-ratelimit-limit': instance.limitCount,
      'x-ratelimit-remaining': instance.remainingCount,
      'x-ratelimit-reset': instance.resetAt.toIso8601String(),
    };
