// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import 'package:mastodon_api/src/service/v2/search/search_content_type.dart';
// 📦 Package imports:
import 'package:test/test.dart';

void main() {
  test('.name', () {
    expect(SearchContentType.accounts.name, 'accounts');
    expect(SearchContentType.statuses.name, 'statuses');
    expect(SearchContentType.hashtags.name, 'hashtags');
  });

  test('.value', () {
    expect(SearchContentType.accounts.value, 'accounts');
    expect(SearchContentType.statuses.value, 'statuses');
    expect(SearchContentType.hashtags.value, 'hashtags');
  });
}
