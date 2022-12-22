// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import 'package:mastodon_api/src/service/entities/block_severity.dart';
// 📦 Package imports:
import 'package:test/test.dart';

void main() {
  test('.name', () {
    expect(BlockSeverity.silence.name, 'silence');
    expect(BlockSeverity.suspend.name, 'suspend');
  });

  test('.value', () {
    expect(BlockSeverity.silence.value, 'silence');
    expect(BlockSeverity.suspend.value, 'suspend');
  });
}
