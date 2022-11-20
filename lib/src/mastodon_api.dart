// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import 'core/client/client_context.dart';
import 'service/mastodon_service.dart';
import 'service/timelines/timelines_service.dart';

abstract class MastodonApi {
  /// Returns the new instance of [MastodonApi].
  factory MastodonApi({
    required String instance,
    String bearerToken = '',
  }) =>
      _MastodonApi(
        instance: instance,
        bearerToken: bearerToken,
      );

  TimelinesService get timelines;
}

class _MastodonApi implements MastodonApi {
  _MastodonApi({
    required String instance,
    required String bearerToken,
  }) : _mastodonService = MastodonService(
          instance: instance,
          context: ClientContext(
            bearerToken: bearerToken,
            timeout: Duration(seconds: 10),
          ),
        );

  /// The mastodon service
  // ignore: unused_field
  final MastodonService _mastodonService;

  @override
  TimelinesService get timelines => _mastodonService.timelinesService;
}
