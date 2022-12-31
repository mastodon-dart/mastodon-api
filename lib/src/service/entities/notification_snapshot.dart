// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

import 'position_marker.dart';

part 'notification_snapshot.freezed.dart';
part 'notification_snapshot.g.dart';

/// Represents the last read position within a user's timelines.
@freezed
class NotificationSnapshot with _$NotificationSnapshot {
  const factory NotificationSnapshot({
    /// Snapshot for notifications.
    @JsonKey(name: 'notifications') required PositionMarker marker,
  }) = _NotificationSnapshot;

  factory NotificationSnapshot.fromJson(Map<String, Object?> json) =>
      _$NotificationSnapshotFromJson(json);
}
