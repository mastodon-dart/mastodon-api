// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

enum UserContext {
  /// It should be authenticated with OAuth 2.0, but can also be accessed
  /// as anonymous.
  oauth2OrAnonymous,

  /// User must be authenticated for access.
  oauth2Only,

  /// User must be anonymous.
  anonymousOnly,
}
