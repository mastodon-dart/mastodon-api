// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

class StreamRequest {
  /// Returns the new instance of [StreamRequest].
  const StreamRequest(this.uri);

  /// The communication method.
  final String method = 'GET';

  /// The uri to send a request.
  final Uri uri;
}
