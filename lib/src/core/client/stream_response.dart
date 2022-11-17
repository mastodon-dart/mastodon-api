// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

class StreamResponse {
  /// Returns the new instance of [StreamResponse].
  const StreamResponse({
    required this.headers,
    required this.body,
  });

  /// The headers
  final Map<String, String> headers;

  /// The body
  final Stream<Map<String, dynamic>> body;
}
