// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'preview_card_type.dart';
import 'usage_statistics.dart';

part 'trends_link.freezed.dart';
part 'trends_link.g.dart';

@freezed
class TrendsLink with _$TrendsLink {
  const factory TrendsLink({
    /// Location of linked resource.
    required String url,

    /// Title of linked resource.
    required String title,

    /// Description of preview.
    required String description,

    /// The type of the preview card.
    required PreviewCardType type,

    /// The author of the original resource.
    required String authorName,

    /// A link to the author of the original resource.
    required String authorUrl,

    /// The provider of the original resource.
    required String providerName,

    /// A link to the provider of the original resource.
    required String providerUrl,

    /// HTML to be used for generating the preview card.
    required String html,

    /// Width of preview, in pixels.
    required int width,

    /// Height of preview, in pixels.
    required int height,

    /// Preview thumbnail.
    @JsonKey(name: 'image') String? imageUrl,

    /// Used for photo embeds, instead of custom html.
    required String embedUrl,

    /// A hash computed by the BlurHash algorithm, for generating colorful
    /// preview thumbnails when media has not been downloaded yet.
    @JsonKey(name: 'blurhash') String? blurHash,

    /// Usage statistics for given days (typically the past week).
    @JsonKey(name: 'history') required List<UsageStatistics> usageHistory,
  }) = _TrendsLink;

  factory TrendsLink.fromJson(Map<String, Object?> json) =>
      _$TrendsLinkFromJson(json);
}
