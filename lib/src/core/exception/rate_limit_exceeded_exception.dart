// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import 'mastodon_exception.dart';

/// This exception indicates that the number of requests for a particular
/// endpoint exceeds the rate limit defined by the Mastodon API.
///
/// Also, if this exception is thrown, it indicates that requests for a
/// particular endpoint will be restricted for a certain amount of time or more.
class RateLimitExceededException extends MastodonException {
  /// Returns the new instance of [RateLimitExceededException].
  RateLimitExceededException(super.message, super.response, [super.body]);

  @override
  String toString() {
    final buffer = StringBuffer()
      ..writeln('RateLimitExceededException: $message\n')
      ..writeln('  ✅ Status Code:')
      ..writeln('   ${response.statusCode}\n')
      ..writeln('  ✅ Request:')
      ..writeln('   ${response.request}\n')
      ..writeln('  ✅ Headers:')
      ..writeln('   ${response.headers}\n');

    if (body != null) {
      buffer
        ..writeln('  ✅ Body:')
        ..writeln('   $body\n');
    }

    buffer.writeln('  Please create an Issue if you have a question '
        'or suggestion for this exception.');

    return buffer.toString();
  }
}
