// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tag _$$_TagFromJson(Map json) => $checkedCreate(
      r'_$_Tag',
      json,
      ($checkedConvert) {
        final val = _$_Tag(
          name: $checkedConvert('name', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          usageHistory: $checkedConvert(
              'history',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => UsageStatistics.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
          isFollowing: $checkedConvert('following', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'usageHistory': 'history',
        'isFollowing': 'following'
      },
    );

Map<String, dynamic> _$$_TagToJson(_$_Tag instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'url': instance.url,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'history', instance.usageHistory?.map((e) => e.toJson()).toList());
  writeNotNull('following', instance.isFollowing);
  return val;
}
