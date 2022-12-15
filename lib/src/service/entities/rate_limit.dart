// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_limit.freezed.dart';
part 'rate_limit.g.dart';

@freezed
class RateLimit with _$RateLimit {
  // ignore: unused_element
  const RateLimit._();

  const factory RateLimit({
    /// The maximum number of calls allowed.
    @JsonKey(name: 'x-ratelimit-limit') required int limitCount,

    /// The number of remaining calls allowed.
    @JsonKey(name: 'x-ratelimit-remaining') required int remainingCount,

    /// The date time when the remaining number of calls will be reset.
    @JsonKey(name: 'x-ratelimit-reset') required DateTime resetAt,
  }) = _RateLimit;

  factory RateLimit.fromJson(Map<String, Object?> json) =>
      _$RateLimitFromJson(json);

  /// Returns true if the rate limit is exceeded, otherwise false.
  bool get isExceeded => remainingCount <= 0;

  /// Returns true if the rate limit is not exceeded, otherwise false.
  bool get isNotExceeded => remainingCount > 0;
}
