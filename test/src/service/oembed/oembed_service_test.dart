// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:mastodon_api/src/core/client/user_context.dart';
import 'package:mastodon_api/src/service/entities/oembed_metadata.dart';
import 'package:mastodon_api/src/service/entities/rate_limit.dart';
import 'package:mastodon_api/src/service/oembed/oembed_service.dart';
import 'package:mastodon_api/src/service/response/mastodon_response.dart';
import 'package:test/test.dart';

import '../../../mocks/client_context_stubs.dart' as context;
import '../common_expectations.dart';

void main() {
  group('.lookupFollowRequests', () {
    test('normal case', () async {
      final oembedService = OEmbedService(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/oembed',
          'test/src/service/oembed/data/lookup_oembed_metadata.json',
          {
            'url': 'https://test.com',
          },
        ),
      );

      final response = await oembedService.lookupOEmbedMetadata(
        statusUrl: 'https://test.com',
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<OEmbedMetadata>());
    });

    test('when unauthorized', () async {
      final oembedService = OEmbedService(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/oembed',
          'test/src/service/oembed/data/lookup_oembed_metadata.json',
          {
            'url': 'https://test.com',
          },
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await oembedService.lookupOEmbedMetadata(
          statusUrl: 'https://test.com',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final oembedService = OEmbedService(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/oembed',
          'test/src/service/oembed/data/lookup_oembed_metadata.json',
          {
            'url': 'https://test.com',
          },
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await oembedService.lookupOEmbedMetadata(
          statusUrl: 'https://test.com',
        ),
      );
    });
  });
}
