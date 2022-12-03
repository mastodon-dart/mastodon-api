// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:mastodon_api/src/core/client/user_context.dart';
import 'package:test/test.dart';

void main() {
  test('.name', () {
    expect(UserContext.oauth2OrAnonymous.name, 'oauth2OrAnonymous');
    expect(UserContext.oauth2Only.name, 'oauth2Only');
    expect(UserContext.anonymousOnly.name, 'anonymousOnly');
  });
}
