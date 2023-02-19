// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_variants.freezed.dart';
part 'media_variants.g.dart';

@freezed
class MediaVariants with _$MediaVariants {
  const factory MediaVariants({
    required int width,
    required int height,
    String? size,
    double? aspect,
    String? frameRate,
    @JsonKey(name: 'duration') double? durationInSeconds,
    int? bitrate,
  }) = _MediaVariants;

  factory MediaVariants.fromJson(Map<String, Object?> json) =>
      _$MediaVariantsFromJson(json);
}
