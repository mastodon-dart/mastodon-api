// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import 'core/client/client_context.dart';
import 'core/config/retry_config.dart';
import 'service/mastodon_v1_service.dart';

abstract class MastodonApi {
  /// Returns the new instance of [MastodonApi].
  factory MastodonApi({
    required String instance,
    String bearerToken = '',
    Duration timeout = const Duration(seconds: 10),
    RetryConfig? retryConfig,
  }) =>
      _MastodonApi(
        instance: instance,
        bearerToken: bearerToken,
        timeout: timeout,
        retryConfig: retryConfig,
      );

  /// Returns the v1 service.
  MastodonV1Service get v1;
}

class _MastodonApi implements MastodonApi {
  /// Returns the new instance of [_MastodonApi].
  _MastodonApi({
    required String instance,
    required String bearerToken,
    required Duration timeout,
    RetryConfig? retryConfig,
  }) : v1 = MastodonV1Service(
          instance: instance,
          context: ClientContext(
            bearerToken: bearerToken,
            timeout: timeout,
            retryConfig: retryConfig,
          ),
        );

  @override
  final MastodonV1Service v1;
}
