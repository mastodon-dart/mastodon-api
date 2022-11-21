// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:mastodon_api/mastodon_api.dart';

Future<void> main() async {
  //! You need to specify mastodon instance (domain) you want to access.
  //! Also you need to get bearer token from your developer page, or OAuth 2.0.
  final mastodon = MastodonApi(
    instance: 'MASTODON_INSTANCE',
    bearerToken: 'YOUR_BEARER_TOKEN',

    //! Automatic retry is available when server error or network error occurs
    //! when communicating with the API.
    retryConfig: RetryConfig.ofExponentialBackOffAndJitter(
      maxAttempts: 5,
      onExecute: (event) => print(
        'Retry after ${event.intervalInSeconds} seconds... '
        '[${event.retryCount} times]',
      ),
    ),

    //! The default timeout is 10 seconds.
    timeout: Duration(seconds: 20),
  );

  try {
    //! Let's Toot from v1 endpoint!
    final response = await mastodon.v1.statuses.createStatus(
      text: 'Toot!',
    );

    print(response.rateLimit);
    print(response.data);
  } on UnauthorizedException catch (e) {
    print(e);
  } on RateLimitExceededException catch (e) {
    print(e);
  } on MastodonException catch (e) {
    print(e.response);
    print(e.body);
    print(e);
  }
}
