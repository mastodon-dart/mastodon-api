// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

class UnixTimestampConverter implements JsonConverter<DateTime, String> {
  /// Returns the new instance of [UnixTimestampConverter].
  const UnixTimestampConverter();

  @override
  DateTime fromJson(final String val) =>
      DateTime.fromMillisecondsSinceEpoch(int.parse(val) * 1000);

  @override
  String toJson(final DateTime val) =>
      (val.millisecondsSinceEpoch ~/ 1000).toString();
}
