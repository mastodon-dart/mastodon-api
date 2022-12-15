// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../scope.dart';

class ScopeConverter implements JsonConverter<List<Scope>, String> {
  /// Returns the new instance of [ScopeConverter].
  const ScopeConverter();

  @override
  List<Scope> fromJson(final String val) =>
      val.split(' ').map((e) => Scope.valueOf(e)).toList();

  @override
  String toJson(final List<Scope> val) =>
      val.map((e) => e.value).toList().join(' ');
}
