// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_marker.freezed.dart';
part 'position_marker.g.dart';

/// Represents the last read position within a user's timelines.
@freezed
class PositionMarker with _$PositionMarker {
  const factory PositionMarker({
    /// The ID of the most recently viewed entity.
    required String lastReadId,

    /// An incrementing counter, used for locking to prevent write conflicts.
    required int version,

    /// The timestamp of when the marker was set.
    required DateTime updatedAt,
  }) = _PositionMarker;

  factory PositionMarker.fromJson(Map<String, Object?> json) =>
      _$PositionMarkerFromJson(json);
}
