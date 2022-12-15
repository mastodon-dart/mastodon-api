// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'announcement_account.dart';
import 'announcement_status.dart';
import 'emoji.dart';
import 'emoji_reaction.dart';
import 'tag.dart';

part 'announcement.freezed.dart';
part 'announcement.g.dart';

@freezed
class Announcement with _$Announcement {
  @JsonSerializable(includeIfNull: false)
  const factory Announcement({
    /// The ID of the announcement in the database.
    required String id,

    /// The text of the announcement.
    required String content,

    /// Whether the announcement is currently active.
    @JsonKey(name: 'published') bool? isPublished,

    /// Whether the announcement should start and end on dates only instead of
    /// date times.
    ///
    /// Will be `false` if there is no `startsAt` or `endsAt`.
    @JsonKey(name: 'all_day') required bool isAllDay,

    /// Whether the announcement has been read by the current user.
    @JsonKey(name: 'read') bool? isRead,

    /// When the announcement will start.
    DateTime? startsAt,

    /// When the announcement will end.
    DateTime? endsAt,

    /// When the announcement was published.
    required DateTime publishedAt,

    /// When the announcement was last updated.
    required DateTime updatedAt,

    /// Accounts mentioned in the announcement text.
    required List<AnnouncementAccount> mentions,

    /// Statuses linked in the announcement text.
    required List<AnnouncementStatus> statuses,

    /// Tags linked in the announcement text.
    required List<Tag> tags,

    /// Custom emoji used in the announcement text.
    required List<Emoji> emojis,

    /// Emoji reactions attached to the announcement.
    required List<EmojiReaction> reactions,
  }) = _Announcement;

  factory Announcement.fromJson(Map<String, Object?> json) =>
      _$AnnouncementFromJson(json);
}
