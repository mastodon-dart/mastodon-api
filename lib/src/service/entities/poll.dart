// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'emoji.dart';
import 'poll_option.dart';

part 'poll.freezed.dart';
part 'poll.g.dart';

@freezed
class Poll with _$Poll {
  const factory Poll({
    /// The ID of the poll in the database.
    required String id,

    /// How many votes have been received.
    required int votesCount,

    /// How many unique accounts have voted on a multiple-choice poll.
    ///
    /// It will be `null` if `isMultiple` is `false`.
    int? votersCount,

    /// Does the poll allow multiple-choice answers?
    @JsonKey(name: 'multiple') required bool isMultiple,

    /// When called with a user token, has the authorized user voted?
    @JsonKey(name: 'voted') bool? isVoted,

    /// Is the poll currently expired?
    @JsonKey(name: 'expired') required bool isExpired,

    /// Possible answers for the poll.
    required List<PollOption> options,

    /// When called with a user token, which options has the authorized
    /// user chosen?
    ///
    /// Contains an array of index values for `options`.
    List<int>? ownVotes,

    /// Custom emoji to be used for rendering poll options.
    required List<Emoji> emojis,

    /// When the poll ends.
    ///
    /// If it's `null`, the poll does not end.
    DateTime? expiresAt,
  }) = _Poll;

  factory Poll.fromJson(Map<String, Object?> json) => _$PollFromJson(json);
}
