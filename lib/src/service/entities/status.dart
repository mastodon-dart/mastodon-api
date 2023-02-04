// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/language.dart';
import '../../core/visibility.dart';
import 'account.dart';
import 'application.dart';
import 'emoji.dart';
import 'media_attachment.dart';
import 'poll.dart';
import 'tag.dart';

// 🌎 Project imports:

part 'status.freezed.dart';
part 'status.g.dart';

@freezed
class Status with _$Status {
  @JsonSerializable(includeIfNull: false)
  const factory Status({
    /// ID of the status in the database.
    required String id,

    /// A link to the status's HTML representation.
    String? url,

    /// URI of the status used for federation.
    required String uri,

    /// HTML-encoded status content.
    required String content,

    /// Subject or summary line, below which status content is collapsed until
    /// expanded.
    required String spoilerText,

    /// Visibility of this status.
    required Visibility visibility,

    /// How many favourites this status has received.
    required int favouritesCount,

    /// How many replies this status has received.
    required int repliesCount,

    /// How many boosts this status has received.
    required int reblogsCount,

    /// Primary language of this status.
    Language? language,

    /// ID of the status being replied.
    String? inReplyToId,

    /// ID of the account being replied to.
    String? inReplyToAccountId,

    /// Have you favourited this status?
    @JsonKey(name: 'favourited') bool? isFavourited,

    /// Have you boosted this status?
    @JsonKey(name: 'reblogged') bool? isReblogged,

    /// Have you muted notifications for this status's conversation?
    @JsonKey(name: 'muted') bool? isMuted,

    /// Have you bookmarked this status?
    @JsonKey(name: 'bookmarked') bool? isBookmarked,

    /// Is this status marked as sensitive content?
    @JsonKey(name: 'sensitive') bool? isSensitive,

    /// Have you pinned this status?
    @JsonKey(name: 'pinned') bool? isPinned,

    /// The time and date the last status was posted at.
    DateTime? lastStatusAt,

    /// The account that authored this status.
    required Account account,

    /// The application used to post this status.
    Application? application,

    /// The poll attached to the status.
    Poll? poll,

    /// The status being reblogged.
    Status? reblog,

    /// Media that is attached to this status.
    required List<MediaAttachment> mediaAttachments,

    /// Custom emoji to be used when rendering status content.
    required List<Emoji> emojis,

    /// Hashtags used within the status content.
    required List<Tag> tags,

    /// The date when this status was created.
    required DateTime createdAt,
  }) = _Status;

  factory Status.fromJson(Map<String, Object?> json) => _$StatusFromJson(json);
}
