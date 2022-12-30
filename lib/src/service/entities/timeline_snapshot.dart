// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

import 'position_marker.dart';

part 'timeline_snapshot.freezed.dart';
part 'timeline_snapshot.g.dart';

/// Represents the last read position within a user's timelines.
@freezed
class TimelineSnapshot with _$TimelineSnapshot {
  @JsonSerializable(includeIfNull: false)
  const factory TimelineSnapshot({
    /// Snapshot for notifications.
    PositionMarker? notifications,

    /// Snapshot for home timeline.
    PositionMarker? home,
  }) = _TimelineSnapshot;

  factory TimelineSnapshot.fromJson(Map<String, Object?> json) =>
      _$TimelineSnapshotFromJson(json);
}
