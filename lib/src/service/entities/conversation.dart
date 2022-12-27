// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

import 'account.dart';
import 'status.dart';

part 'conversation.freezed.dart';
part 'conversation.g.dart';

@freezed
class Conversation with _$Conversation {
  @JsonSerializable(includeIfNull: false)
  const factory Conversation({
    /// The ID of the conversation in the database.
    required String id,

    /// Is the conversation currently marked as unread?
    @JsonKey(name: 'unread') required bool isUnread,

    /// Participants in the conversation.
    required List<Account> accounts,

    /// The last status in the conversation.
    Status? lastStatus,
  }) = _Conversation;

  factory Conversation.fromJson(Map<String, Object?> json) =>
      _$ConversationFromJson(json);
}
