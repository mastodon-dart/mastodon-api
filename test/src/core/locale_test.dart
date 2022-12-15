// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:mastodon_api/src/core/country.dart';
import 'package:mastodon_api/src/core/language.dart';
import 'package:mastodon_api/src/core/locale.dart';

void main() {
  test('.toString', () {
    expect(
      Locale(lang: Language.english, country: Country.unitedStates).toString(),
      'en_US',
    );
  });
}
