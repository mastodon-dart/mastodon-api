// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'emoji_reaction.freezed.dart';
part 'emoji_reaction.g.dart';

@freezed
class EmojiReaction with _$EmojiReaction {
  @JsonSerializable(includeIfNull: false)
  const factory EmojiReaction({
    /// The emoji used for the reaction. Either a unicode emoji,
    /// or a custom emoji’s shortcode.
    required String name,

    /// The total number of users who have added this reaction.
    required int count,

    /// If there is a currently authorized user: Have you added this reaction?
    @JsonKey(name: 'me') bool? isReacted,

    /// If the reaction is a custom emoji: A link to the custom emoji.
    String? url,

    /// If the reaction is a custom emoji: A link to a non-animated version of
    /// the custom emoji.
    String? staticUrl,
  }) = _EmojiReaction;

  factory EmojiReaction.fromJson(Map<String, Object?> json) =>
      _$EmojiReactionFromJson(json);
}
