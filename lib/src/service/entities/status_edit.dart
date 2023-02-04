// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

import 'account.dart';
import 'emoji.dart';
import 'media_attachment.dart';
import 'poll.dart';

part 'status_edit.freezed.dart';
part 'status_edit.g.dart';

/// Represents a revision of a status that has been edited.
@freezed
class StatusEdit with _$StatusEdit {
  @JsonSerializable(includeIfNull: false)
  const factory StatusEdit({
    /// The content of the status at this revision.
    required String content,

    /// The content of the subject or content warning at this revision.
    required String spoilerText,

    /// The account that published this revision.
    required Account account,

    /// The current state of the poll options at this revision.
    ///
    /// Note that edits changing the poll options will be collapsed together
    /// into one edit, since this action resets the poll.
    Poll? poll,

    /// The current state of the poll options at this revision.
    ///
    /// Note that edits changing the poll options will be collapsed together
    /// into one edit, since this action resets the poll.
    required List<MediaAttachment> mediaAttachments,

    /// Any custom emoji that are used in the current revision.
    required List<Emoji> emojis,

    /// Whether the status was marked sensitive at this revision.
    @JsonKey(name: 'sensitive') required bool isSensitive,

    /// The timestamp of when the revision was published.
    required DateTime createdAt,
  }) = _StatusEdit;

  factory StatusEdit.fromJson(Map<String, Object?> json) =>
      _$StatusEditFromJson(json);
}
