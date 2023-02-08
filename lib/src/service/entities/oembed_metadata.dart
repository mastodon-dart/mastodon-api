// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'oembed_metadata.freezed.dart';
part 'oembed_metadata.g.dart';

@freezed
class OEmbedMetadata with _$OEmbedMetadata {
  @JsonSerializable(includeIfNull: false)
  const factory OEmbedMetadata({
    required String type,
    required String version,
    String? title,
    required String authorName,
    required String authorUrl,
    required String providerName,
    required String providerUrl,
    required int cacheAge,
    required String html,
    required int width,
    int? height,
  }) = _OEmbedMetadata;

  factory OEmbedMetadata.fromJson(Map<String, Object?> json) =>
      _$OEmbedMetadataFromJson(json);
}
