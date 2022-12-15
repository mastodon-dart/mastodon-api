// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../entities/instance_accounts_configuration.dart';
import '../../entities/instance_media_configuration.dart';
import '../../entities/instance_polls_configuration.dart';
import '../../entities/instance_statuses_configuration.dart';
import '../../entities/instance_translation_configuration.dart';
import '../../entities/instance_urls_configuration.dart';

part 'v2_instance_configuration.freezed.dart';
part 'v2_instance_configuration.g.dart';

@freezed
class V2InstanceConfiguration with _$V2InstanceConfiguration {
  @JsonSerializable(includeIfNull: false)
  const factory V2InstanceConfiguration({
    /// URLs of interest for clients apps.
    required InstanceUrlsConfiguration urls,

    /// Limits related to accounts.
    required InstanceAccountsConfiguration accounts,

    /// Limits related to authoring statuses.
    required InstanceStatusesConfiguration statuses,

    /// Hints for which attachments will be accepted.
    @JsonKey(name: 'media_attachments')
        required InstanceMediaConfiguration media,

    /// Limits related to polls.
    required InstancePollsConfiguration polls,

    /// Hints related to translation.
    required InstanceTranslationConfiguration translation,
  }) = _V2InstanceConfiguration;

  factory V2InstanceConfiguration.fromJson(Map<String, Object?> json) =>
      _$V2InstanceConfigurationFromJson(json);
}
