// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_focal_points.freezed.dart';
part 'media_focal_points.g.dart';

/// See https://docs.joinmastodon.org/api/guidelines/#focal-points .
@freezed
class MediaFocalPoints with _$MediaFocalPoints {
  @Assert('-1.0 <= x && x <= 1.0')
  @Assert('-1.0 <= y && y <= 1.0')
  const factory MediaFocalPoints({
    required double x,
    required double y,
  }) = _MediaFocalPoints;

  factory MediaFocalPoints.fromJson(Map<String, Object?> json) =>
      _$MediaFocalPointsFromJson(json);
}
