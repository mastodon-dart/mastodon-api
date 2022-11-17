// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import 'package:mastodon_api/src/service/accounts/accounts_service.dart';

import '../core/client/client_context.dart';

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
}

class _MastodonService implements MastodonService {
  /// Returns the new instance of [_MastodonService].
  _MastodonService({
    required String instance,
    required ClientContext context,
  }) : accountsService = AccountsService(instance: instance, context: context);

  @override
  final AccountsService accountsService;
}
