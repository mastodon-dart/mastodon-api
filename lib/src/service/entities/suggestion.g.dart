// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'suggestion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Suggestion _$$_SuggestionFromJson(Map json) => $checkedCreate(
      r'_$_Suggestion',
      json,
      ($checkedConvert) {
        final val = _$_Suggestion(
          source: $checkedConvert(
              'source', (v) => $enumDecode(_$SuggestedReasonEnumMap, v)),
          account: $checkedConvert('account',
              (v) => Account.fromJson(Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_SuggestionToJson(_$_Suggestion instance) =>
    <String, dynamic>{
      'source': _$SuggestedReasonEnumMap[instance.source]!,
      'account': instance.account.toJson(),
    };

const _$SuggestedReasonEnumMap = {
  SuggestedReason.staff: 'staff',
  SuggestedReason.pastInteractions: 'past_interactions',
  SuggestedReason.global: 'global',
};
