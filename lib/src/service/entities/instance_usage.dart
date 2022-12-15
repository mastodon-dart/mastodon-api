// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'instance_usage_users.dart';

part 'instance_usage.freezed.dart';
part 'instance_usage.g.dart';

@freezed
class InstanceUsage with _$InstanceUsage {
  @JsonSerializable(includeIfNull: false)
  const factory InstanceUsage({
    /// Usage data related to users on this instance.
    required InstanceUsageUsers users,
  }) = _InstanceUsage;

  factory InstanceUsage.fromJson(Map<String, Object?> json) =>
      _$InstanceUsageFromJson(json);
}
