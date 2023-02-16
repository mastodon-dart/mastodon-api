// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/convert/int_converter.dart';

part 'scheduled_poll.freezed.dart';
part 'scheduled_poll.g.dart';

@freezed
class ScheduledPoll with _$ScheduledPoll {
  @JsonSerializable(includeIfNull: false)
  const factory ScheduledPoll({
    /// The poll options to be used.
    required List<String> options,

    /// Whether the poll allows multiple choices.
    @JsonKey(name: 'multiple') bool? isMultiple,

    /// Whether the poll should hide total votes until after voting has ended.
    @JsonKey(name: 'hide_totals') bool? isHideTotals,

    /// How many seconds the poll should last before closing.
    @IntConverter() @JsonKey(name: 'expires_in') required int expiresInSeconds,
  }) = _ScheduledPoll;

  factory ScheduledPoll.fromJson(Map<String, Object?> json) =>
      _$ScheduledPollFromJson(json);
}
