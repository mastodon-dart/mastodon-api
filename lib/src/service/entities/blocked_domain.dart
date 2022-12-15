// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'block_severity.dart';

part 'blocked_domain.freezed.dart';
part 'blocked_domain.g.dart';

@freezed
class BlockedDomain with _$BlockedDomain {
  const factory BlockedDomain({
    /// The domain which is blocked.
    ///
    /// This may be obfuscated or partially censored.
    @JsonKey(name: 'domain') required String name,

    /// The SHA256 hash digest of the domain string.
    @JsonKey(name: 'digest') required String sha256digest,

    /// The level to which the domain is blocked.
    required BlockSeverity severity,

    /// An optional reason for the domain block.
    @JsonKey(name: 'comment') String? reason,
  }) = _BlockedDomain;

  factory BlockedDomain.fromJson(Map<String, Object?> json) =>
      _$BlockedDomainFromJson(json);
}
