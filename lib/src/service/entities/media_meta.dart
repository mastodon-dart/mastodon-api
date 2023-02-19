// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

import 'media_focal_points.dart';
import 'media_variants.dart';

part 'media_meta.freezed.dart';
part 'media_meta.g.dart';

@freezed
class MediaMeta with _$MediaMeta {
  const factory MediaMeta({
    MediaFocalPoints? focus,
    required MediaVariants original,
    required MediaVariants small,
  }) = _MediaMeta;

  factory MediaMeta.fromJson(Map<String, Object?> json) =>
      _$MediaMetaFromJson(json);
}
