// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:mastodon_api/src/core/client/user_context.dart';
import 'package:mastodon_api/src/service/entities/rate_limit.dart';
import 'package:mastodon_api/src/service/entities/suggestion.dart';
import 'package:mastodon_api/src/service/response/mastodon_response.dart';
import 'package:mastodon_api/src/service/v2/accounts/accounts_v2_service.dart';
import 'package:test/test.dart';

import '../../../../mocks/client_context_stubs.dart' as context;
import '../../common_expectations.dart';

void main() {
  group('.lookupFollowedTags', () {
    test('normal case', () async {
      final accountsService = AccountsV2Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v2/suggestions',
          'test/src/service/v2/accounts/data/lookup_follow_suggestions.json',
          {
            'limit': '10',
          },
        ),
      );

      final response = await accountsService.lookupFollowSuggestions(limit: 10);

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Suggestion>>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV2Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v2/suggestions',
          'test/src/service/v2/accounts/data/lookup_follow_suggestions.json',
          {
            'limit': '10',
          },
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.lookupFollowSuggestions(limit: 10),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV2Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v2/suggestions',
          'test/src/service/v2/accounts/data/lookup_follow_suggestions.json',
          {
            'limit': '10',
          },
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.lookupFollowSuggestions(limit: 10),
      );
    });
  });
}
