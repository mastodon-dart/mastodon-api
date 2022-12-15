// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_status.freezed.dart';
part 'announcement_status.g.dart';

@freezed
class AnnouncementStatus with _$AnnouncementStatus {
  @JsonSerializable(includeIfNull: false)
  const factory AnnouncementStatus({
    /// The ID of an attached Status in the database.
    required String id,

    /// The URL of an attached Status.
    required String url,
  }) = _AnnouncementStatus;

  factory AnnouncementStatus.fromJson(Map<String, Object?> json) =>
      _$AnnouncementStatusFromJson(json);
}
