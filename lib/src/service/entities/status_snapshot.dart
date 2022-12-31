// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

import 'position_marker.dart';

part 'status_snapshot.freezed.dart';
part 'status_snapshot.g.dart';

/// Represents the last read position within a user's timelines.
@freezed
class StatusSnapshot with _$StatusSnapshot {
  const factory StatusSnapshot({
    /// Snapshot for home timeline.
    @JsonKey(name: 'home') required PositionMarker marker,
  }) = _StatusSnapshot;

  factory StatusSnapshot.fromJson(Map<String, Object?> json) =>
      _$StatusSnapshotFromJson(json);
}
