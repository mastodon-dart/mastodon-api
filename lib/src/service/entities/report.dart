// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

import 'account.dart';
import 'report_category.dart';

part 'report.freezed.dart';
part 'report.g.dart';

@freezed
class Report with _$Report {
  @JsonSerializable(includeIfNull: false)
  const factory Report({
    /// The ID of the report in the database.
    required String id,

    /// The generic reason for the report.
    required ReportCategory category,

    /// The reason for the report.
    required String comment,

    /// The domain name of the instance.
    List<String>? statusIds,

    /// The domain name of the instance.
    List<String>? ruleIds,

    /// The account that was reported.
    @JsonKey(name: 'target_account') required Account account,

    /// Whether the report was forwarded to a remote domain.
    @JsonKey(name: 'forwarded') required bool isForwarded,

    /// Whether an action was taken yet.
    @JsonKey(name: 'action_taken') required bool isActionTaken,

    /// When an action was taken against the report.
    DateTime? actionTakenAt,

    /// When the report was created.
    required DateTime createdAt,
  }) = _Report;

  factory Report.fromJson(Map<String, Object?> json) => _$ReportFromJson(json);
}
