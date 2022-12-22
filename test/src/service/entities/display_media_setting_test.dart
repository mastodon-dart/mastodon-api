// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import 'package:mastodon_api/src/service/entities/display_media_setting.dart';
// 📦 Package imports:
import 'package:test/test.dart';

void main() {
  test('.name', () {
    expect(DisplayMediaSetting.none.name, 'none');
    expect(DisplayMediaSetting.showAll.name, 'showAll');
    expect(DisplayMediaSetting.hideAll.name, 'hideAll');
  });

  test('.value', () {
    expect(DisplayMediaSetting.none.value, 'default');
    expect(DisplayMediaSetting.showAll.value, 'show_all');
    expect(DisplayMediaSetting.hideAll.value, 'hide_all');
  });
}
