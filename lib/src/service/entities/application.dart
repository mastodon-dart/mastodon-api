// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'application.freezed.dart';
part 'application.g.dart';

@freezed
class Application with _$Application {
  @JsonSerializable(includeIfNull: false)
  const factory Application({
    /// The name of your application.
    required String name,

    /// Used for Push Streaming API.
    String? vapidKey,

    /// The website associated with your application.
    String? website,
  }) = _Application;

  factory Application.fromJson(Map<String, Object?> json) =>
      _$ApplicationFromJson(json);
}
