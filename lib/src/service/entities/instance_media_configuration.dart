// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../core/mime_type.dart';

part 'instance_media_configuration.freezed.dart';
part 'instance_media_configuration.g.dart';

@freezed
class InstanceMediaConfiguration with _$InstanceMediaConfiguration {
  @JsonSerializable(includeIfNull: false)
  const factory InstanceMediaConfiguration({
    /// The maximum size of any uploaded image, in bytes.
    @JsonKey(name: 'image_size_limit') required int maxImageSize,

    ///The maximum number of pixels (width times height) for image uploads.
    @JsonKey(name: 'image_matrix_limit') required int maxImageMatrix,

    /// The maximum size of any uploaded video, in bytes.
    @JsonKey(name: 'video_size_limit') required int maxVideoSize,

    /// The maximum frame rate for any uploaded video.
    @JsonKey(name: 'video_frame_rate_limit') required int maxVideoRateLimit,

    /// The maximum number of pixels (width times height) for video uploads.
    @JsonKey(name: 'video_matrix_limit') required int maxVideoMatrix,

    /// Contains MIME types that can be uploaded.
    required List<MimeType> supportedMimeTypes,
  }) = _InstanceMediaConfiguration;

  factory InstanceMediaConfiguration.fromJson(Map<String, Object?> json) =>
      _$InstanceMediaConfigurationFromJson(json);
}
