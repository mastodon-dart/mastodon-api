// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import 'package:mastodon_api/src/core/visibility.dart';
// 📦 Package imports:
import 'package:test/test.dart';

void main() {
  test('.name', () {
    expect(Visibility.public.name, 'public');
    expect(Visibility.private.name, 'private');
    expect(Visibility.unlisted.name, 'unlisted');
    expect(Visibility.direct.name, 'direct');
  });

  test('.value', () {
    expect(Visibility.public.value, 'public');
    expect(Visibility.private.value, 'private');
    expect(Visibility.unlisted.value, 'unlisted');
    expect(Visibility.direct.value, 'direct');
  });
}
