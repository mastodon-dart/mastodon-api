// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:http/http.dart';

// Project imports:
import 'package:mastodon_api/src/core/client/user_context.dart';
import 'package:mastodon_api/src/service/entities/rate_limit.dart';
import 'package:mastodon_api/src/service/entities/status.dart';
import 'package:mastodon_api/src/service/response/mastodon_response.dart';
import 'package:mastodon_api/src/service/statuses/status_poll_param.dart';
import 'package:mastodon_api/src/service/statuses/statuses_v1_service.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../../../mocks/client_context_stubs.dart' as context;
import '../../../mocks/mock.mocks.dart';
import '../common_expectations.dart';

void main() {
  group('.createStatus', () {
    test('normal case', () async {
      final statusesService = StatusesV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/statuses',
          'test/src/service/statuses/data/create_status.json',
        ),
      );

      final response = await statusesService.createStatus(
        text: 'Hello, World!',
        poll: StatusPollParam(
          options: ['test1', 'test2'],
          expiresIn: Duration(days: 10),
        ),
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Status>());
      expect(response.data.id, '109384580642337706');
    });

    test('when unauthorized', () async {
      final mockClientContext = MockClientContext();

      when(mockClientContext.post(
        any,
        any,
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer(
        (_) async => Response('', 401),
      );

      final statusesService = StatusesV1Service(
        instance: 'test',
        context: mockClientContext,
      );

      expectUnauthorizedException(
        () async => await statusesService.createStatus(text: 'Hello, World!'),
      );
    });

    test('when rate limit exceeded', () async {
      final mockClientContext = MockClientContext();

      when(mockClientContext.post(
        any,
        any,
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer(
        (_) async => Response('', 429),
      );

      final statusesService = StatusesV1Service(
        instance: 'test',
        context: mockClientContext,
      );

      expectRateLimitExceededException(
        () async => await statusesService.createStatus(text: 'Hello, World!'),
      );
    });
  });
}
