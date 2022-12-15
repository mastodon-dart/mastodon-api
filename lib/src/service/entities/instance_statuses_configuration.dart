// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'instance_statuses_configuration.freezed.dart';
part 'instance_statuses_configuration.g.dart';

@freezed
class InstanceStatusesConfiguration with _$InstanceStatusesConfiguration {
  @JsonSerializable(includeIfNull: false)
  const factory InstanceStatusesConfiguration({
    /// The maximum number of allowed characters per status.
    required int maxCharacters,

    /// The maximum number of media attachments that can be added to a status.
    required int maxMediaAttachments,

    /// Each URL in a status will be assumed to be exactly this many characters.
    required int charactersReservedPerUrl,
  }) = _InstanceStatusesConfiguration;

  factory InstanceStatusesConfiguration.fromJson(Map<String, Object?> json) =>
      _$InstanceStatusesConfigurationFromJson(json);
}
