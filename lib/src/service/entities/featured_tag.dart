// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/convert/int_converter.dart';

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
    String? url,

    /// The number of authored statuses containing this hashtag.
    @IntConverter() int? statusesCount,

    /// The timestamp of the last authored status containing this hashtag.
    DateTime? lastStatusAt,
  }) = _FeaturedTag;

  factory FeaturedTag.fromJson(Map<String, Object?> json) =>
      _$FeaturedTagFromJson(json);
}
