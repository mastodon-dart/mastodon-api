// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'instance_usage_users.freezed.dart';
part 'instance_usage_users.g.dart';

@freezed
class InstanceUsageUsers with _$InstanceUsageUsers {
  @JsonSerializable(includeIfNull: false)
  const factory InstanceUsageUsers({
    /// The number of active users in the past 4 weeks.
    required int activeMonth,
  }) = _InstanceUsageUsers;

  factory InstanceUsageUsers.fromJson(Map<String, Object?> json) =>
      _$InstanceUsageUsersFromJson(json);
}
