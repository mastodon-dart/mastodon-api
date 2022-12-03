// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import 'package:mastodon_api/src/core/client/user_context.dart';
import 'package:mastodon_api/src/service/entities/rate_limit.dart';
import 'package:mastodon_api/src/service/response/mastodon_response.dart';
import 'package:mastodon_api/src/service/v2/entities/v2_search.dart';
import 'package:mastodon_api/src/service/v2/search/search_content_type.dart';
import 'package:mastodon_api/src/service/v2/search/search_v2_service.dart';
import 'package:test/test.dart';

import '../../../../mocks/client_context_stubs.dart' as context;
import '../../common_expectations.dart';

void main() {
  group('.searchContents', () {
    test('normal case', () async {
      final searchService = SearchV2Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v2/search',
          'test/src/service/v2/search/data/search_contents.json',
          {
            'q': 'Hello, World!',
            'type': 'hashtags',
            'resolve': 'true',
            'following': 'true',
            'account_id': '1234',
            'max_id': '8888',
            'min_id': '9999',
            'exclude_unreviewed': 'true',
            'limit': '10',
            'offset': '5',
          },
        ),
      );

      final response = await searchService.searchContents(
        query: 'Hello, World!',
        type: SearchContentType.hashtags,
        resolveWithWebFinger: true,
        onlyFollowingAccounts: true,
        statusOwnerId: '1234',
        maxStatusId: '8888',
        minStatusId: '9999',
        excludeUnreviewedTags: true,
        limit: 10,
        offset: 5,
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<V2Search>());
    });

    test('when unauthorized', () async {
      final searchService = SearchV2Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v2/search',
          'test/src/service/v2/search/data/search_contents.json',
          {'q': 'Hello, World!'},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await searchService.searchContents(query: 'Hello, World!'),
      );
    });

    test('when rate limit exceeded', () async {
      final searchService = SearchV2Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v2/search',
          'test/src/service/v2/search/data/search_contents.json',
          {'q': 'Hello, World!'},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await searchService.searchContents(query: 'Hello, World!'),
      );
    });
  });
}
