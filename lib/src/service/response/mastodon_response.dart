// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import '../../core/http_status.dart';
import '../entities/empty.dart';
import '../entities/rate_limit.dart';
import 'mastodon_request.dart';

/// The class represents the response from Mastodon API.
class MastodonResponse<D> {
  /// Returns the new instance of [MastodonResponse].
  const MastodonResponse({
    required this.headers,
    required this.status,
    required this.request,
    required this.rateLimit,
    required this.data,
  });

  /// The headers of this response.
  final Map<String, String> headers;

  /// The HTTP status from Mastodon API server.
  final HttpStatus status;

  /// The request that generated this response.
  final MastodonRequest request;

  /// The rate limit
  final RateLimit rateLimit;

  /// The data field
  final D data;

  Map<String, dynamic> toJson() => data is Empty
      ? {
          'data': {},
        }
      : {
          'data': data is List
              ? (data as List).map((e) => e.toJson()).toList()
              : (data as dynamic).toJson(),
        };

  @override
  String toString() {
    final StringBuffer buffer = StringBuffer();
    buffer.write('MastodonResponse(');
    buffer.write('rateLimit: $rateLimit, ');
    buffer.write('data: $data');
    buffer.write(')');

    return buffer.toString();
  }
}
