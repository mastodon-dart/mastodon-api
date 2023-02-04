// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'usage_statistics.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

@freezed
class Tag with _$Tag {
  @JsonSerializable(includeIfNull: false)
  const factory Tag({
    /// The value of the hashtag after the # sign.
    required String name,

    /// A link to the hashtag on the instance.
    required String url,

    /// Usage history for given days (typically the past week).
    @JsonKey(name: 'history') List<UsageStatistics>? usageHistory,

    /// Whether the current token’s authorized user is following this tag.
    @JsonKey(name: 'following') bool? isFollowing,
  }) = _Tag;

  factory Tag.fromJson(Map<String, Object?> json) => _$TagFromJson(json);
}
