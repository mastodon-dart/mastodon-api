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
          histories: $checkedConvert(
              'history',
              (v) => (v as List<dynamic>)
                  .map((e) => TagStatistics.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
          isFollowing: $checkedConvert('is_following', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'histories': 'history',
        'isFollowing': 'is_following'
      },
    );

Map<String, dynamic> _$$_TagToJson(_$_Tag instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'url': instance.url,
    'history': instance.histories.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is_following', instance.isFollowing);
  return val;
}
