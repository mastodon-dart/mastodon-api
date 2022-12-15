// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'instance_accounts_configuration.freezed.dart';
part 'instance_accounts_configuration.g.dart';

@freezed
class InstanceAccountsConfiguration with _$InstanceAccountsConfiguration {
  @JsonSerializable(includeIfNull: false)
  const factory InstanceAccountsConfiguration({
    /// The maximum number of featured tags allowed for each account.
    required int maxFeaturedTags,
  }) = _InstanceAccountsConfiguration;

  factory InstanceAccountsConfiguration.fromJson(Map<String, Object?> json) =>
      _$InstanceAccountsConfigurationFromJson(json);
}
