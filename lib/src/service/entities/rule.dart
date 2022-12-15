// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rule.freezed.dart';
part 'rule.g.dart';

@freezed
class Rule with _$Rule {
  const factory Rule({
    /// An identifier for the rule.
    required String id,

    /// The rule to be followed.
    required String text,
  }) = _Rule;

  factory Rule.fromJson(Map<String, Object?> json) => _$RuleFromJson(json);
}
