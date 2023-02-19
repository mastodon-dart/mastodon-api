// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'dart:io';

import 'package:mastodon_api/src/core/client/user_context.dart';
import 'package:mastodon_api/src/core/exception/mastodon_exception.dart';
import 'package:mastodon_api/src/core/exception/pending_exception.dart';
import 'package:mastodon_api/src/service/entities/media_attachment.dart';
import 'package:mastodon_api/src/service/entities/media_focal_points.dart';
import 'package:mastodon_api/src/service/entities/rate_limit.dart';
import 'package:mastodon_api/src/service/response/mastodon_response.dart';
import 'package:mastodon_api/src/service/v1/media/media_v1_service.dart';
import 'package:test/test.dart';

import '../../../../mocks/client_context_stubs.dart' as context;
import '../../common_expectations.dart';

void main() {
  group('.uploadMedia', () {
    test('normal case', () async {
      final mediaService = MediaV1Service(
        instance: 'test',
        context: context.buildPostMultipartStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/media',
          'test/src/service/v1/media/data/upload_media.json',
          body: {
            'description': 'test',
            'focus': '1.0,-1.0',
          },
        ),
      );

      // ignore: deprecated_member_use_from_same_package
      final response = await mediaService.uploadMedia(
        file: File('test/src/service/v1/media/data/upload_media.json'),
        thumbnail: File('test/src/service/v1/media/data/upload_media.json'),
        description: 'test',
        focus: MediaFocalPoints(x: 1.0, y: -1.0),
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<MediaAttachment>());
    });

    test('when unauthorized', () async {
      final mediaService = MediaV1Service(
        instance: 'test',
        context: context.buildPostMultipartStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/media',
          'test/src/service/v1/media/data/upload_media.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        // ignore: deprecated_member_use_from_same_package
        () async => await mediaService.uploadMedia(
          file: File('test/src/service/v1/media/data/upload_media.json'),
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final mediaService = MediaV1Service(
        instance: 'test',
        context: context.buildPostMultipartStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/media',
          'test/src/service/v1/media/data/upload_media.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        // ignore: deprecated_member_use_from_same_package
        () async => await mediaService.uploadMedia(
          file: File('test/src/service/v1/media/data/upload_media.json'),
        ),
      );
    });

    test('when parameters are invalid', () async {
      final mediaService = MediaV1Service(
        instance: 'test',
        context: context.buildPostMultipartStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/media',
          'test/src/service/v1/media/data/upload_media.json',
          statusCode: 422,
        ),
      );

      expect(
        // ignore: deprecated_member_use_from_same_package
        () async => await mediaService.uploadMedia(
          file: File('test/src/service/v1/media/data/upload_media.json'),
        ),
        throwsA(
          allOf(
            isA<MastodonException>(),
            predicate(
              (MastodonException e) =>
                  e.message ==
                  'Required parameter is missing or improperly formatted.',
            ),
          ),
        ),
      );
    });
  });

  group('.lookupMedia', () {
    test('normal case', () async {
      final mediaService = MediaV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/media/1234',
          'test/src/service/v1/media/data/lookup_media.json',
          {},
        ),
      );

      final response = await mediaService.lookupMedia(
        mediaId: '1234',
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<MediaAttachment>());
    });

    test('when unauthorized', () async {
      final mediaService = MediaV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/media/1234',
          'test/src/service/v1/media/data/lookup_media.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await mediaService.lookupMedia(
          mediaId: '1234',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final mediaService = MediaV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/media/1234',
          'test/src/service/v1/media/data/lookup_media.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await mediaService.lookupMedia(
          mediaId: '1234',
        ),
      );
    });

    test('when media is already posted or just not found', () async {
      final mediaService = MediaV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/media/1234',
          'test/src/service/v1/media/data/lookup_media.json',
          {},
          statusCode: 404,
        ),
      );

      expectDataNotFoundExceptionDueToNotFound(
        () async => await mediaService.lookupMedia(
          mediaId: '1234',
        ),
      );
    });

    test('when upload is in progress', () async {
      final mediaService = MediaV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/media/1234',
          'test/src/service/v1/media/data/lookup_media.json',
          {},
          statusCode: 206,
        ),
      );

      expect(
        () async => await mediaService.lookupMedia(mediaId: '1234'),
        throwsA(isA<PendingException>()),
      );
    });
  });

  group('.updateMedia', () {
    test('normal case', () async {
      final mediaService = MediaV1Service(
        instance: 'test',
        context: context.buildPutMultipartStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/media/1234',
          'test/src/service/v1/media/data/update_media.json',
          body: {
            'description': 'test',
            'focus': '1.0,-1.0',
          },
        ),
      );

      final response = await mediaService.updateMedia(
        mediaId: '1234',
        thumbnail: File('test/src/service/v1/media/data/upload_media.json'),
        description: 'test',
        focus: MediaFocalPoints(x: 1.0, y: -1.0),
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<MediaAttachment>());
    });

    test('when unauthorized', () async {
      final mediaService = MediaV1Service(
        instance: 'test',
        context: context.buildPutMultipartStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/media/1234',
          'test/src/service/v1/media/data/update_media.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await mediaService.updateMedia(
          mediaId: '1234',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final mediaService = MediaV1Service(
        instance: 'test',
        context: context.buildPutMultipartStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/media/1234',
          'test/src/service/v1/media/data/update_media.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await mediaService.updateMedia(
          mediaId: '1234',
        ),
      );
    });

    test('when not found', () async {
      final mediaService = MediaV1Service(
        instance: 'test',
        context: context.buildPutMultipartStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/media/1234',
          'test/src/service/v1/media/data/update_media.json',
          statusCode: 404,
        ),
      );

      expectDataNotFoundExceptionDueToNotFound(
        () async => await mediaService.updateMedia(
          mediaId: '1234',
        ),
      );
    });
  });
}
