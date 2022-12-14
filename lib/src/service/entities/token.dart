// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../core/convert/int_date_time_converter.dart';
import '../../core/convert/scope_converter.dart';
import '../../core/scope.dart';

part 'token.freezed.dart';
part 'token.g.dart';

@freezed
class Token with _$Token {
  const factory Token({
    /// An OAuth token to be used for authorization.
    required String accessToken,

    /// The OAuth token type. Mastodon uses Bearer tokens.
    required String tokenType,

    /// The OAuth scopes granted by this token.
    @JsonKey(name: 'scope') @ScopeConverter() required List<Scope> scopes,

    /// When the token was generated.
    @IntDateTimeConverter() required DateTime createdAt,
  }) = _Token;

  factory Token.fromJson(Map<String, Object?> json) => _$TokenFromJson(json);
}
