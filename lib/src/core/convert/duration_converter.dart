// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

class DurationConverter implements JsonConverter<Duration, int> {
  /// Returns the new instance of [DurationConverter].
  const DurationConverter();

  @override
  Duration fromJson(final int val) => Duration(seconds: val);

  @override
  int toJson(final Duration val) => val.inSeconds;
}
