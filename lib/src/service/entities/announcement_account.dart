// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_account.freezed.dart';
part 'announcement_account.g.dart';

@freezed
class AnnouncementAccount with _$AnnouncementAccount {
  @JsonSerializable(includeIfNull: false)
  const factory AnnouncementAccount({
    /// The account ID of the mentioned user.
    required String id,

    /// The username of the mentioned user.
    required String username,

    /// The location of the mentioned user’s profile.
    required String url,

    /// The web finger acct: URI of the mentioned user. Equivalent to username
    /// for local users, or username@domain for remote users.
    @JsonKey(name: 'acct') required String webFingerAccountUri,
  }) = _AnnouncementAccount;

  factory AnnouncementAccount.fromJson(Map<String, Object?> json) =>
      _$AnnouncementAccountFromJson(json);
}
