// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'emoji.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Emoji _$$_EmojiFromJson(Map json) => $checkedCreate(
      r'_$_Emoji',
      json,
      ($checkedConvert) {
        final val = _$_Emoji(
          code: $checkedConvert('shortcode', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          statusUrl: $checkedConvert('status_url', (v) => v as String?),
          isVisibleInPicker:
              $checkedConvert('visible_in_picker', (v) => v as bool),
          category: $checkedConvert('category', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'code': 'shortcode',
        'statusUrl': 'status_url',
        'isVisibleInPicker': 'visible_in_picker'
      },
    );

Map<String, dynamic> _$$_EmojiToJson(_$_Emoji instance) => <String, dynamic>{
      'shortcode': instance.code,
      'url': instance.url,
      'status_url': instance.statusUrl,
      'visible_in_picker': instance.isVisibleInPicker,
      'category': instance.category,
    };
