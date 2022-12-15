// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registered_application.freezed.dart';
part 'registered_application.g.dart';

@freezed
class RegisteredApplication with _$RegisteredApplication {
  @JsonSerializable(includeIfNull: false)
  const factory RegisteredApplication({
    /// The id of of this application.
    required String id,

    /// The name of your application.
    required String name,

    /// Client ID key, to be used for obtaining OAuth tokens.
    required String clientId,

    /// Client secret key, to be used for obtaining OAuth tokens.
    required String clientSecret,

    /// The registered redirect uri.
    required String redirectUri,

    /// Used for Push Streaming API.
    required String vapidKey,

    /// The website associated with your application.
    String? website,
  }) = _RegisteredApplication;

  factory RegisteredApplication.fromJson(Map<String, Object?> json) =>
      _$RegisteredApplicationFromJson(json);
}
