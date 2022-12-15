// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import '../../core/serializable.dart';

enum BlockSeverity implements Serializable {
  /// Users from this domain will be hidden from timelines, threads, and
  /// notifications (unless you follow the user).
  silence,

  /// Incoming messages from this domain will be rejected and dropped entirely.
  suspend;

  @override
  String get value => name;

  const BlockSeverity();
}
