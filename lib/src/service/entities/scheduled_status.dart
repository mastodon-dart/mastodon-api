// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

import 'media_attachment.dart';
import 'scheduled_status_params.dart';

part 'scheduled_status.freezed.dart';
part 'scheduled_status.g.dart';

@freezed
class ScheduledStatus with _$ScheduledStatus {
  @JsonSerializable(includeIfNull: false)
  const factory ScheduledStatus({
    /// ID of the scheduled status in the database.
    required String id,

    /// The parameters that were used when scheduling the status, to be used
    /// when the status is posted.
    required ScheduledStatusParams params,

    /// Media that will be attached when the status is posted.
    required List<MediaAttachment> mediaAttachments,

    /// The timestamp for when the status will be posted.
    required DateTime scheduledAt,
  }) = _ScheduledStatus;

  factory ScheduledStatus.fromJson(Map<String, Object?> json) =>
      _$ScheduledStatusFromJson(json);
}
