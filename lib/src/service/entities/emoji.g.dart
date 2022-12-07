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
          staticUrl: $checkedConvert('static_url', (v) => v as String?),
          isVisibleInPicker:
              $checkedConvert('visible_in_picker', (v) => v as bool),
          category: $checkedConvert('category', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'code': 'shortcode',
        'staticUrl': 'static_url',
        'isVisibleInPicker': 'visible_in_picker'
      },
    );

Map<String, dynamic> _$$_EmojiToJson(_$_Emoji instance) {
  final val = <String, dynamic>{
    'shortcode': instance.code,
    'url': instance.url,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('static_url', instance.staticUrl);
  val['visible_in_picker'] = instance.isVisibleInPicker;
  writeNotNull('category', instance.category);
  return val;
}
