// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'featured_tag.freezed.dart';
part 'featured_tag.g.dart';

@freezed
class FeaturedTag with _$FeaturedTag {
  @JsonSerializable(includeIfNull: false)
  const factory FeaturedTag({
    /// The internal ID of the featured tag in the database.
    required String id,

    /// The name of the hashtag being featured.
    required String name,

    /// A link to all statuses by a user that contain this hashtag.
    required String url,

    /// The number of authored statuses containing this hashtag.
    required int statusesCount,

    /// The timestamp of the last authored status containing this hashtag.
    required DateTime lastStatusAt,
  }) = _FeaturedTag;

  factory FeaturedTag.fromJson(Map<String, Object?> json) =>
      _$FeaturedTagFromJson(json);
}
