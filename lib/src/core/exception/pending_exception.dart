// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import 'mastodon_exception.dart';

/// This exception is thrown when uploading media, etc.,
/// to indicate that the upload is in progress on Mastodon's server.
class PendingException extends MastodonException {
  /// Returns the new instance of [PendingException].
  PendingException(super.message, super.response, [super.body]);

  @override
  String toString() {
    final buffer = StringBuffer()
      ..writeln('PendingException: $message\n')
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

    buffer
      ..writeln('  Please create an Issue if you have a question '
          'or suggestion for this exception.')
      ..writeln('  https://github.com/mastodon-dart/mastodon-api/issues');

    return buffer.toString();
  }
}
