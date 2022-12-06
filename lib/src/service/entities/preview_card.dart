// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

import 'preview_card_type.dart';
import 'usage_statistics.dart';

part 'preview_card.freezed.dart';
part 'preview_card.g.dart';

@freezed
class PreviewCard with _$PreviewCard {
  const factory PreviewCard({
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
    @JsonKey(name: 'history') required List<UsageStatistics> histories,
  }) = _PreviewCard;

  factory PreviewCard.fromJson(Map<String, Object?> json) =>
      _$PreviewCardFromJson(json);
}
