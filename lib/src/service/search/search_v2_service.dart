// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../../core/client/client_context.dart';
import '../../core/client/user_context.dart';
import '../base_service.dart';
import '../entities/search.dart';
import '../response/mastodon_response.dart';
import 'search_content_type.dart';

abstract class SearchV2Service {
  /// Returns the new instance of [SearchV2Service].
  factory SearchV2Service({
    required String instance,
    required ClientContext context,
  }) =>
      _SearchV2Service(
        instance: instance,
        context: context,
      );

  /// Search for contents in accounts, statuses and hashtags.
  ///
  /// ## Parameters
  ///
  /// - [query]: The search query.
  ///
  /// - [type]: Specify whether to search for only [SearchContentType.accounts],
  ///           [SearchContentType.hashtags], [SearchContentType.statuses].
  ///
  /// - [resolveWithWebFinger]: Attempt WebFinger lookup? Defaults to false.
  ///
  /// - [onlyFollowingAccounts]: Only include accounts that the user is
  ///                            following? Defaults to false.
  ///
  /// - [statusOwnerId]: If provided, will only return statuses authored by
  ///                    this account.
  ///
  /// - [maxStatusId]: Return results older than this ID.
  ///
  /// - [minStatusId]: Return results immediately newer than this ID.
  ///
  /// - [excludeUnreviewedTags]: Filter out unreviewed tags? Defaults to false.
  ///                            Use true when trying to find trending tags.
  ///
  /// - [limit]: Maximum number of results to return, per type.
  ///            Defaults to 20. Max 40.
  ///
  /// - [offset]: Offset in search results, used for pagination.
  ///             Defaults to 0.
  ///
  /// ## Endpoint Url
  ///
  /// - GET https://mastodon.example/api/v2/search HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - Anonymous
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - read:search
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/search/#v2
  Future<MastodonResponse<Search>> searchContents({
    required String query,
    SearchContentType? type,
    bool? resolveWithWebFinger,
    bool? onlyFollowingAccounts,
    String? statusOwnerId,
    String? maxStatusId,
    String? minStatusId,
    bool? excludeUnreviewedTags,
    int? limit,
    int? offset,
  });
}

class _SearchV2Service extends BaseService implements SearchV2Service {
  /// Returns the new instance of [_SearchV2Service].
  _SearchV2Service({
    required super.instance,
    required super.context,
  });

  @override
  Future<MastodonResponse<Search>> searchContents({
    required String query,
    SearchContentType? type,
    bool? resolveWithWebFinger,
    bool? onlyFollowingAccounts,
    String? statusOwnerId,
    String? maxStatusId,
    String? minStatusId,
    bool? excludeUnreviewedTags,
    int? limit,
    int? offset,
  }) async =>
      super.transformSingleDataResponse(
        await super.get(
          UserContext.oauth2OrAnonymous,
          '/api/v2/search',
          queryParameters: {
            'q': query,
            'type': type,
            'resolve': resolveWithWebFinger,
            'following': onlyFollowingAccounts,
            'account_id': statusOwnerId,
            'max_id': maxStatusId,
            'min_id': minStatusId,
            'exclude_unreviewed': excludeUnreviewedTags,
            'limit': limit,
            'offset': offset,
          },
        ),
        dataBuilder: Search.fromJson,
      );
}
