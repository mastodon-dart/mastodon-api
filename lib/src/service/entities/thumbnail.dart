// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'thumbnail_version.dart';

part 'thumbnail.freezed.dart';
part 'thumbnail.g.dart';

@freezed
class Thumbnail with _$Thumbnail {
  @JsonSerializable(includeIfNull: false)
  const factory Thumbnail({
    /// The URL for the thumbnail image.
    required String url,

    /// A hash computed by the `BlurHash algorithm`,
    /// for generating colorful preview thumbnails when media
    /// has not been downloaded yet.
    @JsonKey(name: 'blurhash') required String blurHash,

    /// Links to scaled resolution images, for high DPI screens.
    @JsonKey(name: 'versions') required ThumbnailVersion version,
  }) = _Thumbnail;

  factory Thumbnail.fromJson(Map<String, Object?> json) =>
      _$ThumbnailFromJson(json);
}
