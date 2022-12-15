// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:mastodon_api/src/core/client/user_context.dart';
import 'package:mastodon_api/src/service/entities/rate_limit.dart';
import 'package:mastodon_api/src/service/entities/status.dart';
import 'package:mastodon_api/src/service/response/mastodon_response.dart';
import 'package:mastodon_api/src/service/v1/timelines/timelines_v1_service.dart';
import '../../../../mocks/client_context_stubs.dart' as context;
import '../../common_expectations.dart';

void main() {
  group('.lookupPublicTimelines', () {
    test('when user is authorized', () async {
      final timelinesService = TimelinesV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/timelines/public',
          'test/src/service/v1/timelines/data/lookup_timelines.json',
          {
            'local': 'true',
            'remote': 'true',
            'only_media': 'true',
            'max_id': '1234',
            'min_id': '5678',
            'since_id': '0987',
            'limit': '40',
          },
        ),
      );

      final response = await timelinesService.lookupPublicTimeline(
        onlyLocal: true,
        onlyRemote: true,
        onlyMedia: true,
        maxStatusId: '1234',
        minStatusId: '5678',
        sinceStatusId: '0987',
        limit: 40,
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Status>>());
    });

    test('when user is anonymous', () async {
      final timelinesService = TimelinesV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/timelines/public',
          'test/src/service/v1/timelines/data/lookup_timelines_anonymous.json',
          {
            'local': 'true',
            'remote': 'true',
            'only_media': 'true',
            'max_id': '1234',
            'min_id': '5678',
            'since_id': '0987',
            'limit': '40',
          },
        ),
      );

      final response = await timelinesService.lookupPublicTimeline(
        onlyLocal: true,
        onlyRemote: true,
        onlyMedia: true,
        maxStatusId: '1234',
        minStatusId: '5678',
        sinceStatusId: '0987',
        limit: 40,
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Status>>());
    });

    test('when unauthorized', () async {
      final timelinesService = TimelinesV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/timelines/public',
          'test/src/service/v1/timelines/data/lookup_timelines.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await timelinesService.lookupPublicTimeline(),
      );
    });

    test('when rate limit exceeded', () async {
      final timelinesService = TimelinesV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/timelines/public',
          'test/src/service/v1/timelines/data/lookup_timelines.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await timelinesService.lookupPublicTimeline(),
      );
    });

    test('when no data', () async {
      final timelinesService = TimelinesV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/timelines/public',
          'test/src/service/v1/timelines/data/no_data.json',
          {
            'local': 'true',
            'remote': 'true',
            'only_media': 'true',
            'max_id': '1234',
            'min_id': '5678',
            'since_id': '0987',
            'limit': '40',
          },
        ),
      );

      final response = await timelinesService.lookupPublicTimeline(
        onlyLocal: true,
        onlyRemote: true,
        onlyMedia: true,
        maxStatusId: '1234',
        minStatusId: '5678',
        sinceStatusId: '0987',
        limit: 40,
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Status>>());
      expect(response.data, []);
    });
  });

  group('.lookupTimelinesByHashtag', () {
    test('when user is authorized', () async {
      final timelinesService = TimelinesV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/timelines/tag/test',
          'test/src/service/v1/timelines/data/lookup_timelines.json',
          {
            'local': 'true',
            'remote': 'true',
            'only_media': 'true',
            'max_id': '1234',
            'min_id': '5678',
            'since_id': '0987',
            'limit': '40',
          },
        ),
      );

      final response = await timelinesService.lookupTimelineByHashtag(
        hashtag: 'test',
        onlyLocal: true,
        onlyRemote: true,
        onlyMedia: true,
        maxStatusId: '1234',
        minStatusId: '5678',
        sinceStatusId: '0987',
        limit: 40,
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Status>>());
    });

    test('when user is anonymous', () async {
      final timelinesService = TimelinesV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/timelines/tag/test',
          'test/src/service/v1/timelines/data/lookup_timelines_anonymous.json',
          {
            'local': 'true',
            'remote': 'true',
            'only_media': 'true',
            'max_id': '1234',
            'min_id': '5678',
            'since_id': '0987',
            'limit': '40',
          },
        ),
      );

      final response = await timelinesService.lookupTimelineByHashtag(
        hashtag: 'test',
        onlyLocal: true,
        onlyRemote: true,
        onlyMedia: true,
        maxStatusId: '1234',
        minStatusId: '5678',
        sinceStatusId: '0987',
        limit: 40,
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Status>>());
    });

    test('when unauthorized', () async {
      final timelinesService = TimelinesV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/timelines/tag/test',
          'test/src/service/v1/timelines/data/lookup_timelines.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await timelinesService.lookupTimelineByHashtag(
          hashtag: 'test',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final timelinesService = TimelinesV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/timelines/tag/test',
          'test/src/service/v1/timelines/data/lookup_timelines.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await timelinesService.lookupTimelineByHashtag(
          hashtag: 'test',
        ),
      );
    });

    test('when no data', () async {
      final timelinesService = TimelinesV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/timelines/tag/test',
          'test/src/service/v1/timelines/data/no_data.json',
          {
            'local': 'true',
            'remote': 'true',
            'only_media': 'true',
            'max_id': '1234',
            'min_id': '5678',
            'since_id': '0987',
            'limit': '40',
          },
        ),
      );

      final response = await timelinesService.lookupTimelineByHashtag(
        hashtag: 'test',
        onlyLocal: true,
        onlyRemote: true,
        onlyMedia: true,
        maxStatusId: '1234',
        minStatusId: '5678',
        sinceStatusId: '0987',
        limit: 40,
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Status>>());
      expect(response.data, []);
    });
  });

  group('.lookupHomeTimelines', () {
    test('when user is authorized', () async {
      final timelinesService = TimelinesV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/timelines/home',
          'test/src/service/v1/timelines/data/lookup_timelines.json',
          {
            'max_id': '1234',
            'min_id': '5678',
            'since_id': '0987',
            'limit': '40',
          },
        ),
      );

      final response = await timelinesService.lookupHomeTimeline(
        maxStatusId: '1234',
        minStatusId: '5678',
        sinceStatusId: '0987',
        limit: 40,
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Status>>());
    });

    test('when unauthorized', () async {
      final timelinesService = TimelinesV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/timelines/home',
          'test/src/service/v1/timelines/data/lookup_timelines.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await timelinesService.lookupHomeTimeline(),
      );
    });

    test('when rate limit exceeded', () async {
      final timelinesService = TimelinesV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/timelines/home',
          'test/src/service/v1/timelines/data/lookup_timelines.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await timelinesService.lookupHomeTimeline(),
      );
    });

    test('when no data', () async {
      final timelinesService = TimelinesV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/timelines/home',
          'test/src/service/v1/timelines/data/no_data.json',
          {
            'max_id': '1234',
            'min_id': '5678',
            'since_id': '0987',
            'limit': '40',
          },
        ),
      );

      final response = await timelinesService.lookupHomeTimeline(
        maxStatusId: '1234',
        minStatusId: '5678',
        sinceStatusId: '0987',
        limit: 40,
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Status>>());
      expect(response.data, []);
    });
  });

  group('.lookupListTimelines', () {
    test('when user is authorized', () async {
      final timelinesService = TimelinesV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/timelines/list/1234',
          'test/src/service/v1/timelines/data/lookup_timelines.json',
          {
            'max_id': '1234',
            'min_id': '5678',
            'since_id': '0987',
            'limit': '40',
          },
        ),
      );

      final response = await timelinesService.lookupListTimeline(
        listId: '1234',
        maxStatusId: '1234',
        minStatusId: '5678',
        sinceStatusId: '0987',
        limit: 40,
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Status>>());
    });

    test('when unauthorized', () async {
      final timelinesService = TimelinesV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/timelines/list/1234',
          'test/src/service/v1/timelines/data/lookup_timelines.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await timelinesService.lookupListTimeline(listId: '1234'),
      );
    });

    test('when rate limit exceeded', () async {
      final timelinesService = TimelinesV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/timelines/list/1234',
          'test/src/service/v1/timelines/data/lookup_timelines.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await timelinesService.lookupListTimeline(listId: '1234'),
      );
    });

    test('when no data', () async {
      final timelinesService = TimelinesV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/timelines/list/1234',
          'test/src/service/v1/timelines/data/no_data.json',
          {
            'max_id': '1234',
            'min_id': '5678',
            'since_id': '0987',
            'limit': '40',
          },
        ),
      );

      final response = await timelinesService.lookupListTimeline(
        listId: '1234',
        maxStatusId: '1234',
        minStatusId: '5678',
        sinceStatusId: '0987',
        limit: 40,
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Status>>());
      expect(response.data, []);
    });
  });
}
