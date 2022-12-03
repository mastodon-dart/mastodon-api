// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../core/client/client_context.dart';
import 'v2/search/search_v2_service.dart';

/// The class represents the Mastodon v2 services.
abstract class MastodonV2Service {
  /// Returns the new instance of [MastodonV2Service].
  factory MastodonV2Service({
    required String instance,
    required ClientContext context,
  }) =>
      _MastodonV2Service(
        instance: instance,
        context: context,
      );

  /// Returns the search service.
  SearchV2Service get search;
}

class _MastodonV2Service implements MastodonV2Service {
  /// Returns the new instance of [_MastodonV2Service].
  _MastodonV2Service({
    required String instance,
    required ClientContext context,
  }) : search = SearchV2Service(instance: instance, context: context);

  @override
  final SearchV2Service search;
}
