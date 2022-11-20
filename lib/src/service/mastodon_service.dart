// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../core/client/client_context.dart';
import 'accounts/accounts_service.dart';
import 'timelines/timelines_service.dart';

/// The class represents the Mastodon services.
abstract class MastodonService {
  factory MastodonService({
    required String instance,
    required ClientContext context,
  }) =>
      _MastodonService(
        instance: instance,
        context: context,
      );

  /// Returns the accounts service.
  AccountsService get accountsService;

  /// Returns the timelines service.
  TimelinesService get timelinesService;
}

class _MastodonService implements MastodonService {
  /// Returns the new instance of [_MastodonService].
  _MastodonService({
    required String instance,
    required ClientContext context,
  })  : accountsService = AccountsService(instance: instance, context: context),
        timelinesService =
            TimelinesService(instance: instance, context: context);

  @override
  final AccountsService accountsService;

  @override
  final TimelinesService timelinesService;
}
