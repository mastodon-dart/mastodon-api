// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'emoji.dart';
import 'field.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account {
  @JsonSerializable(includeIfNull: false)
  const factory Account({
    /// The account id.
    required String id,

    /// The username of the account, not including domain.
    required String username,

    /// The profile's display name.
    required String displayName,

    /// The Web finger account URI.
    ///
    /// Equal to `username` for local users, or `username@domain` for
    /// remote users.
    required String acct,

    /// The profile's bio / description.
    required String note,

    /// The url to the profile.
    required String url,

    /// An image icon that is shown next to statuses and in the profile.
    required String avatar,

    /// A static version of the avatar.
    ///
    /// Equal to avatar if its value is a static image; different if avatar is
    /// an animated GIF.
    required String avatarStatic,

    /// An image banner that is shown above the profile and in profile cards.
    required String header,

    /// A static version of the header.
    ///
    /// Equal to header if its value is a static image; different if header is
    /// an animated GIF.
    required String headerStatic,

    /// An extra attribute that contains source values to be used with API
    /// methods that verify credentials and update credentials.
    // String? source,

    /// The reported followers of this profile.
    required int followersCount,

    /// The reported follows of this profile.
    required int followingCount,

    /// The reported subscriptions of this profile.
    int? subscribingCount,

    /// How many statuses are attached to this account.
    required int statusesCount,

    /// Custom emoji entities to be used when rendering the profile.
    ///
    /// If none, an empty array will be returned.
    required List<Emoji> emojis,

    /// Additional metadata attached to a profile as name-value pairs.
    required List<Field> fields,

    /// Whether the account has opted into discovery features such as the
    /// profile directory.
    @JsonKey(name: 'discoverable') bool? isDiscoverable,

    /// Whether the account manually approves follow requests.
    @JsonKey(name: 'locked') bool? isLocked,

    /// Indicates that the account may perform automated actions,
    /// may not be monitored, or identifies as a robot.
    @JsonKey(name: 'bot') bool? isBot,

    /// When the most recent status was posted.
    DateTime? lastStatusAt,

    /// When the account was created.
    required DateTime createdAt,
  }) = _Account;

  factory Account.fromJson(Map<String, Object?> json) =>
      _$AccountFromJson(json);
}
