// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'instance_accounts_configuration.dart';
import 'instance_media_configuration.dart';
import 'instance_polls_configuration.dart';
import 'instance_statuses_configuration.dart';

part 'instance_configuration.freezed.dart';
part 'instance_configuration.g.dart';

@freezed
class InstanceConfiguration with _$InstanceConfiguration {
  @JsonSerializable(includeIfNull: false)
  const factory InstanceConfiguration({
    /// Limits related to accounts.
    required InstanceAccountsConfiguration accounts,

    /// Limits related to authoring statuses.
    required InstanceStatusesConfiguration statuses,

    /// Hints for which attachments will be accepted.
    @JsonKey(name: 'media_attachments')
        required InstanceMediaConfiguration media,

    /// Limits related to polls.
    required InstancePollsConfiguration polls,
  }) = _InstanceConfiguration;

  factory InstanceConfiguration.fromJson(Map<String, Object?> json) =>
      _$InstanceConfigurationFromJson(json);
}
