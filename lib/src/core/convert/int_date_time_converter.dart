// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

class IntDateTimeConverter implements JsonConverter<DateTime, int> {
  /// Returns the new instance of [IntDateTimeConverter].
  const IntDateTimeConverter();

  @override
  DateTime fromJson(final int val) => DateTime.fromMillisecondsSinceEpoch(val);

  @override
  int toJson(final DateTime val) => val.millisecondsSinceEpoch;
}
