// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../core/convert/int_converter.dart';
import '../../core/convert/unix_timestamp_converter.dart';

part 'usage_statistics.freezed.dart';
part 'usage_statistics.g.dart';

@freezed
class UsageStatistics with _$UsageStatistics {
  const factory UsageStatistics({
    /// The recorded date time of this history.
    @JsonKey(name: 'day')
    @UnixTimestampConverter()
        required DateTime recordedAt,

    /// The counted usage of the tag within that day.
    @JsonKey(name: 'uses') @IntConverter() required int usedCount,

    /// The total of accounts using the tag within that day.
    @JsonKey(name: 'accounts') @IntConverter() required int accountCount,
  }) = _UsageStatistics;

  factory UsageStatistics.fromJson(Map<String, Object?> json) =>
      _$UsageStatisticsFromJson(json);
}
