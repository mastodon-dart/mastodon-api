// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'instance_registrations.freezed.dart';
part 'instance_registrations.g.dart';

@freezed
class InstanceRegistrations with _$InstanceRegistrations {
  @JsonSerializable(includeIfNull: false)
  const factory InstanceRegistrations({
    /// Whether registrations are enabled.
    @JsonKey(name: 'enabled') required bool isEnabled,

    /// Whether registrations require moderator approval.
    @JsonKey(name: 'approval_required') required bool isApprovalRequired,

    /// A custom message to be shown when registrations are closed.
    @JsonKey(name: 'message') String? closedMessage,
  }) = _InstanceRegistrations;

  factory InstanceRegistrations.fromJson(Map<String, Object?> json) =>
      _$InstanceRegistrationsFromJson(json);
}
