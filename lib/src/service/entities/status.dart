// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../core/language.dart';
import '../../core/visibility.dart';
import 'account.dart';
import 'application.dart';

part 'status.freezed.dart';
part 'status.g.dart';

@freezed
class Status with _$Status {
  const factory Status({
    /// ID of the status in the database.
    required String id,

    /// A link to the status's HTML representation.
    required String url,

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
    required Language language,

    /// ID of the status being replied.
    String? inReplyToTweetId,

    /// ID of the account being replied to.
    String? inReplyToAccountId,

    /// Have you favourited this status?
    @JsonKey(name: 'favourited') @Default(false) bool isFavourited,

    /// Have you boosted this status?
    @JsonKey(name: 'reblogged') @Default(false) bool isReblogged,

    /// Have you muted notifications for this status's conversation?
    @JsonKey(name: 'muted') @Default(false) bool isMuted,

    /// Have you bookmarked this status?
    @JsonKey(name: 'bookmarked') @Default(false) bool isBookmarked,

    /// Is this status marked as sensitive content?
    @JsonKey(name: 'sensitive') @Default(false) bool isSensitive,

    /// Have you pinned this status?
    @JsonKey(name: 'pinned') @Default(false) bool isPinned,

    /// The time and date the last status was posted at.
    DateTime? lastStatusAt,

    /// The account that authored this status.
    required Account account,

    /// The application used to post this status.
    Application? application,

    /// The date when this status was created.
    required DateTime createdAt,
  }) = _Status;

  factory Status.fromJson(Map<String, Object?> json) => _$StatusFromJson(json);
}
