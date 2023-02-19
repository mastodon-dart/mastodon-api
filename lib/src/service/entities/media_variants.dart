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
    required String size,
    required double aspect,
  }) = _MediaVariants;

  factory MediaVariants.fromJson(Map<String, Object?> json) =>
      _$MediaVariantsFromJson(json);
}
