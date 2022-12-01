// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import 'mastodon_exception.dart';

/// This object is thrown to indicate that the data associated with
/// a particular condition does not exist on Mastodon's server.
class DataNotFoundException extends MastodonException {
  /// Returns the new instance of [DataNotFoundException].
  DataNotFoundException(super.message, super.response, [super.body]);

  @override
  String toString() {
    final buffer = StringBuffer()
      ..writeln('DataNotFoundException: $message\n')
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
