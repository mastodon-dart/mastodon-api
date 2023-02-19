// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'dart:io';

import 'package:mastodon_api/src/core/client/user_context.dart';
import 'package:mastodon_api/src/core/exception/mastodon_exception.dart';
import 'package:mastodon_api/src/service/entities/media_attachment.dart';
import 'package:mastodon_api/src/service/entities/media_focal_points.dart';
import 'package:mastodon_api/src/service/entities/rate_limit.dart';
import 'package:mastodon_api/src/service/response/mastodon_response.dart';
import 'package:mastodon_api/src/service/v2/media/media_v2_service.dart';
import 'package:test/test.dart';

import '../../../../mocks/client_context_stubs.dart' as context;
import '../../common_expectations.dart';

void main() {
  group('.uploadMedia', () {
    test('normal case', () async {
      final mediaService = MediaV2Service(
        instance: 'test',
        context: context.buildPostMultipartStub(
          'test',
          UserContext.oauth2Only,
          '/api/v2/media',
          'test/src/service/v2/media/data/upload_media.json',
          body: {
            'description': 'test',
            'focus': '1.0,-1.0',
          },
        ),
      );

      final response = await mediaService.uploadMedia(
        file: File('test/src/service/v2/media/data/upload_media.json'),
        thumbnail: File('test/src/service/v2/media/data/upload_media.json'),
        description: 'test',
        focus: MediaFocalPoints(x: 1.0, y: -1.0),
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<MediaAttachment>());
    });

    test('when unauthorized', () async {
      final mediaService = MediaV2Service(
        instance: 'test',
        context: context.buildPostMultipartStub(
          'test',
          UserContext.oauth2Only,
          '/api/v2/media',
          'test/src/service/v2/media/data/upload_media.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await mediaService.uploadMedia(
          file: File('test/src/service/v2/media/data/upload_media.json'),
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final mediaService = MediaV2Service(
        instance: 'test',
        context: context.buildPostMultipartStub(
          'test',
          UserContext.oauth2Only,
          '/api/v2/media',
          'test/src/service/v2/media/data/upload_media.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await mediaService.uploadMedia(
          file: File('test/src/service/v2/media/data/upload_media.json'),
        ),
      );
    });

    test('when parameters are invalid', () async {
      final mediaService = MediaV2Service(
        instance: 'test',
        context: context.buildPostMultipartStub(
          'test',
          UserContext.oauth2Only,
          '/api/v2/media',
          'test/src/service/v2/media/data/upload_media.json',
          statusCode: 422,
        ),
      );

      expect(
        () async => await mediaService.uploadMedia(
          file: File('test/src/service/v2/media/data/upload_media.json'),
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
}
