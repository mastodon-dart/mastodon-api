// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:mastodon_api/src/service/entities/preview_card_type.dart';

void main() {
  test('.name', () {
    expect(PreviewCardType.link.name, 'link');
    expect(PreviewCardType.photo.name, 'photo');
    expect(PreviewCardType.video.name, 'video');
    expect(PreviewCardType.rich.name, 'rich');
  });
}
