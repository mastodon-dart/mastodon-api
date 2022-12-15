// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'instance_urls_configuration.freezed.dart';
part 'instance_urls_configuration.g.dart';

@freezed
class InstanceUrlsConfiguration with _$InstanceUrlsConfiguration {
  @JsonSerializable(includeIfNull: false)
  const factory InstanceUrlsConfiguration({
    /// The Web Sockets URL for connecting to the streaming API.
    required String streaming,
  }) = _InstanceUrlsConfiguration;

  factory InstanceUrlsConfiguration.fromJson(Map<String, Object?> json) =>
      _$InstanceUrlsConfigurationFromJson(json);
}
