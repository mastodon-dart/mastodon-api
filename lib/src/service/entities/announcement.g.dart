// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'announcement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Announcement _$$_AnnouncementFromJson(Map json) => $checkedCreate(
      r'_$_Announcement',
      json,
      ($checkedConvert) {
        final val = _$_Announcement(
          id: $checkedConvert('id', (v) => v as String),
          content: $checkedConvert('content', (v) => v as String),
          isPublished: $checkedConvert('published', (v) => v as bool?),
          isAllDay: $checkedConvert('all_day', (v) => v as bool),
          isRead: $checkedConvert('read', (v) => v as bool?),
          startsAt: $checkedConvert('starts_at',
              (v) => v == null ? null : DateTime.parse(v as String)),
          endsAt: $checkedConvert(
              'ends_at', (v) => v == null ? null : DateTime.parse(v as String)),
          publishedAt: $checkedConvert(
              'published_at', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updated_at', (v) => DateTime.parse(v as String)),
          mentions: $checkedConvert(
              'mentions',
              (v) => (v as List<dynamic>)
                  .map((e) => AnnouncementAccount.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
          statuses: $checkedConvert(
              'statuses',
              (v) => (v as List<dynamic>)
                  .map((e) => AnnouncementStatus.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
          tags: $checkedConvert(
              'tags',
              (v) => (v as List<dynamic>)
                  .map((e) => Tag.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
          emojis: $checkedConvert(
              'emojis',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Emoji.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
          reactions: $checkedConvert(
              'reactions',
              (v) => (v as List<dynamic>)
                  .map((e) => EmojiReaction.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'isPublished': 'published',
        'isAllDay': 'all_day',
        'isRead': 'read',
        'startsAt': 'starts_at',
        'endsAt': 'ends_at',
        'publishedAt': 'published_at',
        'updatedAt': 'updated_at'
      },
    );

Map<String, dynamic> _$$_AnnouncementToJson(_$_Announcement instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'content': instance.content,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('published', instance.isPublished);
  val['all_day'] = instance.isAllDay;
  writeNotNull('read', instance.isRead);
  writeNotNull('starts_at', instance.startsAt?.toIso8601String());
  writeNotNull('ends_at', instance.endsAt?.toIso8601String());
  val['published_at'] = instance.publishedAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  val['mentions'] = instance.mentions.map((e) => e.toJson()).toList();
  val['statuses'] = instance.statuses.map((e) => e.toJson()).toList();
  val['tags'] = instance.tags.map((e) => e.toJson()).toList();
  val['emojis'] = instance.emojis.map((e) => e.toJson()).toList();
  val['reactions'] = instance.reactions.map((e) => e.toJson()).toList();
  return val;
}
