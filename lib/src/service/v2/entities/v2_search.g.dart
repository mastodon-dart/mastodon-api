// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'v2_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_V2Search _$$_V2SearchFromJson(Map json) => $checkedCreate(
      r'_$_V2Search',
      json,
      ($checkedConvert) {
        final val = _$_V2Search(
          accounts: $checkedConvert(
              'accounts',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Account.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
          statuses: $checkedConvert(
              'statuses',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Status.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
          hashtags: $checkedConvert(
              'hashtags',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => Tag.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_V2SearchToJson(_$_V2Search instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('accounts', instance.accounts?.map((e) => e.toJson()).toList());
  writeNotNull('statuses', instance.statuses?.map((e) => e.toJson()).toList());
  writeNotNull('hashtags', instance.hashtags?.map((e) => e.toJson()).toList());
  return val;
}
