// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'trends_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrendsLink _$$_TrendsLinkFromJson(Map json) => $checkedCreate(
      r'_$_TrendsLink',
      json,
      ($checkedConvert) {
        final val = _$_TrendsLink(
          url: $checkedConvert('url', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$PreviewCardTypeEnumMap, v)),
          authorName: $checkedConvert('author_name', (v) => v as String),
          authorUrl: $checkedConvert('author_url', (v) => v as String),
          providerName: $checkedConvert('provider_name', (v) => v as String),
          providerUrl: $checkedConvert('provider_url', (v) => v as String),
          html: $checkedConvert('html', (v) => v as String),
          width: $checkedConvert('width', (v) => v as int),
          height: $checkedConvert('height', (v) => v as int),
          imageUrl: $checkedConvert('image', (v) => v as String?),
          embedUrl: $checkedConvert('embed_url', (v) => v as String),
          blurHash: $checkedConvert('blurhash', (v) => v as String?),
          usageHistory: $checkedConvert(
              'history',
              (v) => (v as List<dynamic>)
                  .map((e) => UsageStatistics.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'authorName': 'author_name',
        'authorUrl': 'author_url',
        'providerName': 'provider_name',
        'providerUrl': 'provider_url',
        'imageUrl': 'image',
        'embedUrl': 'embed_url',
        'blurHash': 'blurhash',
        'usageHistory': 'history'
      },
    );

Map<String, dynamic> _$$_TrendsLinkToJson(_$_TrendsLink instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
      'description': instance.description,
      'type': _$PreviewCardTypeEnumMap[instance.type]!,
      'author_name': instance.authorName,
      'author_url': instance.authorUrl,
      'provider_name': instance.providerName,
      'provider_url': instance.providerUrl,
      'html': instance.html,
      'width': instance.width,
      'height': instance.height,
      'image': instance.imageUrl,
      'embed_url': instance.embedUrl,
      'blurhash': instance.blurHash,
      'history': instance.usageHistory.map((e) => e.toJson()).toList(),
    };

const _$PreviewCardTypeEnumMap = {
  PreviewCardType.link: 'link',
  PreviewCardType.photo: 'photo',
  PreviewCardType.video: 'video',
  PreviewCardType.rich: 'rich',
};
