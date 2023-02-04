// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

import 'account.dart';
import 'notification_type.dart';
import 'report.dart';
import 'status.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class Notification with _$Notification {
  @JsonSerializable(includeIfNull: false)
  const factory Notification({
    /// The id of the notification in the database.
    required String id,

    /// The type of event that resulted in the notification.
    required NotificationType type,

    /// The timestamp of the notification.
    required DateTime createdAt,

    /// The account that performed the action that generated the notification.
    required Account account,

    /// Status that was the object of the notification. Attached when type of
    /// the notification is favourite, reblog, status, mention, poll,
    /// or update.
    Status? status,

    // Report that was the object of the notification.
    // Attached when type of the notification is admin.report.
    Report? report,
  }) = _Notification;

  factory Notification.fromJson(Map<String, Object?> json) =>
      _$NotificationFromJson(json);
}
