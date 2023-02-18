// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/language.dart';
import '../../core/visibility.dart';
import 'scheduled_poll.dart';

part 'scheduled_status_params.freezed.dart';
part 'scheduled_status_params.g.dart';

@freezed
class ScheduledStatusParams with _$ScheduledStatusParams {
  @JsonSerializable(includeIfNull: false)
  const factory ScheduledStatusParams({
    /// Text to be used as status content.
    required String text,

    /// The text of the content warning or summary for the status.
    String? spoilerText,

    /// Poll to be attached to the status.
    ScheduledPoll? poll,

    /// IDs of the MediaAttachments that will be attached to the status.
    List<String>? mediaIds,

    /// ID of the Status that will be replied to.
    @JsonKey(name: 'in_reply_to_id') String? inReplyToStatusId,

    /// The language that will be used for the status.
    Language? language,

    ///  The visibility that the status will have once it is posted.
    Visibility? visibility,

    /// Idempotency key to prevent duplicate statuses.
    String? idempotency,

    /// Whether the status will be marked as sensitive.
    @JsonKey(name: 'sensitive') bool? isSensitive,
  }) = _ScheduledStatusParams;

  factory ScheduledStatusParams.fromJson(Map<String, Object?> json) =>
      _$ScheduledStatusParamsFromJson(json);
}
