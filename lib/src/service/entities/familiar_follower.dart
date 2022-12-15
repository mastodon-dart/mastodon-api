// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'account.dart';

part 'familiar_follower.freezed.dart';
part 'familiar_follower.g.dart';

@freezed
class FamiliarFollower with _$FamiliarFollower {
  @JsonSerializable(includeIfNull: false)
  const factory FamiliarFollower({
    /// The ID of the Account in the database.
    @JsonKey(name: 'id') required String accountId,

    /// Accounts you follow that also follow this account.
    required List<Account> accounts,
  }) = _FamiliarFollower;

  factory FamiliarFollower.fromJson(Map<String, Object?> json) =>
      _$FamiliarFollowerFromJson(json);
}
