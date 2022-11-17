// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:mastodon_api/src/service/mastodon_service.dart';

import 'core/client/client_context.dart';

abstract class MastodonApi {
  /// Returns the new instance of [MastodonApi].
  factory MastodonApi({
    required String instance,
    required String bearerToken,
  }) =>
      _MastodonApi(
        instance: instance,
        bearerToken: bearerToken,
      );
}

class _MastodonApi implements MastodonApi {
  _MastodonApi({
    required String instance,
    required String bearerToken,
  }) : _mastodonService = MastodonService(
          instance: instance,
          context: ClientContext(
            bearerToken: bearerToken,
            timeout: Duration(milliseconds: 10),
          ),
        ) {
    if (bearerToken.isEmpty) {
      throw ArgumentError(
        'An access token using OAuth 2.0 is required.',
      );
    }
  }

  /// The mastodon service
  // ignore: unused_field
  final MastodonService _mastodonService;
}
