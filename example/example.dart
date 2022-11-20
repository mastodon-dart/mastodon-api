// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:mastodon_api/mastodon_api.dart';

Future<void> main() async {
  //  Coming soon...
  final mastodon = MastodonApi(
    instance: 'MASTODON_INSTANCE',
    bearerToken: 'BEARER_TOKEN',
  );

  final response = await mastodon.timelines.lookupStatuses();
  print(response);
}
