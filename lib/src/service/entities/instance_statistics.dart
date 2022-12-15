// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'instance_statistics.freezed.dart';
part 'instance_statistics.g.dart';

@freezed
class InstanceStatistics with _$InstanceStatistics {
  const factory InstanceStatistics({
    /// Users registered on this instance.
    required int userCount,

    /// Statuses authored by users on instance.
    required int statusCount,

    /// Domains federated with this instance.
    required int domainCount,
  }) = _InstanceStatistics;

  factory InstanceStatistics.fromJson(Map<String, Object?> json) =>
      _$InstanceStatisticsFromJson(json);
}
