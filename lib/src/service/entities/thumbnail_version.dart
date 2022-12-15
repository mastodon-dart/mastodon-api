// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'thumbnail_version.freezed.dart';
part 'thumbnail_version.g.dart';

@freezed
class ThumbnailVersion with _$ThumbnailVersion {
  @JsonSerializable(includeIfNull: false)
  const factory ThumbnailVersion({
    /// The URL for the thumbnail image at 1x resolution.
    @JsonKey(name: '@1x') required String v1,

    /// The URL for the thumbnail image at 2x resolution.
    @JsonKey(name: '@2x') required String v2,
  }) = _ThumbnailVersion;

  factory ThumbnailVersion.fromJson(Map<String, Object?> json) =>
      _$ThumbnailVersionFromJson(json);
}
