// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../core/client/client_context.dart';
import '../core/config/retry_config.dart';
import 'statuses/statuses_v1_service.dart';

/// The class represents the Mastodon v1 services.
abstract class MastodonV1Service {
  /// Returns the new instance of [MastodonV1Service].
  factory MastodonV1Service({
    required String instance,
    required ClientContext context,
  }) =>
      _MastodonV1Service(
        instance: instance,
        context: context,
      );

  /// Returns the statuses service.
  StatusesV1Service get statuses;
}

class _MastodonV1Service implements MastodonV1Service {
  /// Returns the new instance of [_MastodonV1Service].
  _MastodonV1Service({
    required String instance,
    required ClientContext context,
  }) : statuses = StatusesV1Service(instance: instance, context: context);

  @override
  final StatusesV1Service statuses;
}
