// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../core/convert/duration_converter.dart';

part 'instance_polls_configuration.freezed.dart';
part 'instance_polls_configuration.g.dart';

@freezed
class InstancePollsConfiguration with _$InstancePollsConfiguration {
  @JsonSerializable(includeIfNull: false)
  const factory InstancePollsConfiguration({
    /// Each poll is allowed to have up to this many options.
    required int maxOptions,

    /// Each poll option is allowed to have this many characters.
    required int maxCharactersPerOption,

    /// The shortest allowed poll duration.
    @DurationConverter() required Duration maxExpiration,

    /// The longest allowed poll duration.
    @DurationConverter() required Duration minExpiration,
  }) = _InstancePollsConfiguration;

  factory InstancePollsConfiguration.fromJson(Map<String, Object?> json) =>
      _$InstancePollsConfigurationFromJson(json);
}
