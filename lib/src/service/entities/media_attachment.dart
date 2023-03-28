// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'media_attachment_type.dart';
import 'media_meta.dart';

part 'media_attachment.freezed.dart';
part 'media_attachment.g.dart';

@freezed
class MediaAttachment with _$MediaAttachment {
  const factory MediaAttachment({
    /// The ID of the attachment in the database.
    required String id,

    /// The type of the attachment.
    required MediaAttachmentType type,

    /// The location of the original full-size attachment.
    String? url,

    /// The location of a scaled-down preview of the attachment.
    required String? previewUrl,

    /// The location of the full-size original attachment on the remote website.
    String? remoteUrl,

    /// Metadata returned by Paperclip.
    required MediaMeta meta,

    /// Alternate text that describes what is in the media attachment, to be
    /// used for the visually impaired or when media attachments do not load.
    String? description,

    /// A hash computed by the BlurHash algorithm, for generating colorful
    /// preview thumbnails when media has not been downloaded yet.
    @JsonKey(name: 'blurhash') String? blurHash,
  }) = _MediaAttachment;

  factory MediaAttachment.fromJson(Map<String, Object?> json) =>
      _$MediaAttachmentFromJson(json);
}
