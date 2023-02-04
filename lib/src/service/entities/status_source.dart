// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_source.freezed.dart';
part 'status_source.g.dart';

/// Represents a status's source as plain text.
@freezed
class StatusSource with _$StatusSource {
  const factory StatusSource({
    /// ID of the status in the database.
    required String id,

    /// The plain text used to compose the status.
    required String text,

    /// The plain text used to compose the status’s subject or content warning.
    required String spoilerText,
  }) = _StatusSource;

  factory StatusSource.fromJson(Map<String, Object?> json) =>
      _$StatusSourceFromJson(json);
}
