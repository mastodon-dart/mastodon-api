// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

class IntConverter implements JsonConverter<int, String> {
  /// Returns the new instance of [IntConverter].
  const IntConverter();

  @override
  int fromJson(final String val) => int.parse(val);

  @override
  String toJson(final int val) => val.toString();
}
