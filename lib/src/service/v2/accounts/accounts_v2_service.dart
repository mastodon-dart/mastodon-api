// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import '../../../core/client/client_context.dart';
import '../../../core/client/user_context.dart';
import '../../base_service.dart';
import '../../entities/suggestion.dart';
import '../../response/mastodon_response.dart';

abstract class AccountsV2Service {
  /// Returns the new instance of [AccountsV2Service].
  factory AccountsV2Service({
    required String instance,
    required ClientContext context,
  }) =>
      _AccountsV2Service(
        instance: instance,
        context: context,
      );

  /// Accounts that are promoted by staff, or that the user has had past
  /// positive interactions with, but is not yet following.
  ///
  /// ## Parameters
  ///
  /// - [limit]: Maximum number of results to return. Defaults to 40 accounts.
  ///            Max 80 accounts.
  ///
  /// ## Endpoint Url
  ///
  /// - GET /api/v2/suggestions HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - read
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/suggestions/#v2
  Future<MastodonResponse<List<Suggestion>>> lookupFollowSuggestions({
    int? limit,
  });
}

class _AccountsV2Service extends BaseService implements AccountsV2Service {
  /// Returns the new instance of [_AccountsV2Service].
  _AccountsV2Service({
    required super.instance,
    required super.context,
  });

  @override
  Future<MastodonResponse<List<Suggestion>>> lookupFollowSuggestions({
    int? limit,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/api/v2/suggestions',
          queryParameters: {
            'limit': limit,
          },
        ),
        dataBuilder: Suggestion.fromJson,
      );
}
