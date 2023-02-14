// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import 'package:mastodon_api/src/core/client/user_context.dart';
import 'package:mastodon_api/src/service/entities/empty.dart';
import 'package:mastodon_api/src/service/entities/notification.dart';
import 'package:mastodon_api/src/service/entities/notification_type.dart';
import 'package:mastodon_api/src/service/entities/rate_limit.dart';
import 'package:mastodon_api/src/service/response/mastodon_response.dart';
import 'package:mastodon_api/src/service/v1/notifications/notifications_v1_service.dart';
// 📦 Package imports:
import 'package:test/test.dart';

import '../../../../mocks/client_context_stubs.dart' as context;
import '../../common_expectations.dart';

void main() {
  group('.lookupsNotifications', () {
    test('normal case', () async {
      final notificationsService = NotificationsV1Service(
        instance: 'test',
        context: context.buildGetStub(
            'test',
            UserContext.oauth2Only,
            '/api/v1/notifications',
            'test/src/service/v1/notifications/data/lookup_notifications.json',
            {
              'max_id': '5678',
              'since_id': '0987',
              'min_id': '1234',
              'limit': '40',
              'types[]': [
                NotificationType.mention.value,
                NotificationType.favourite.value
              ],
              'exclude_types[]': [
                NotificationType.follow.value,
                NotificationType.poll.value
              ],
              'account_id': '1111',
            }),
      );

      final response = await notificationsService.lookupNotifications(
        maxNotificationId: '5678',
        sinceNotificationId: '0987',
        minNotificationId: '1234',
        limit: 40,
        types: [NotificationType.mention, NotificationType.favourite],
        excludeTypes: [NotificationType.follow, NotificationType.poll],
        accountId: '1111',
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Notification>>());
      expect(
        response.request.url,
        Uri.parse("https://test/api/v1/notifications"
            "?max_id=5678"
            "&since_id=0987"
            "&min_id=1234"
            "&limit=40"
            "&types[]=${NotificationType.mention.value}"
            "&types[]=${NotificationType.favourite.value}"
            "&exclude_types[]=${NotificationType.follow.value}"
            "&exclude_types[]=${NotificationType.poll.value}"
            "&account_id=1111"),
      );
    });

    test('when unauthorized', () async {
      final notificationsService = NotificationsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/notifications',
          'test/src/service/v1/notifications/data/lookup_notifications.json',
          statusCode: 401,
          {},
        ),
      );

      expectUnauthorizedException(
        () async => await notificationsService.lookupNotifications(),
      );
    });

    test('when rate limit exceeded', () async {
      final notificationsService = NotificationsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/notifications',
          'test/src/service/v1/notifications/data/lookup_notifications.json',
          statusCode: 429,
          {},
        ),
      );

      expectRateLimitExceededException(
        () async => await notificationsService.lookupNotifications(),
      );
    });
  });

  group('.lookupNotification', () {
    test('normal case', () async {
      final notificationsService = NotificationsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/notification/12345',
          'test/src/service/v1/notifications/data/lookup_notification.json',
          {},
        ),
      );

      final response = await notificationsService.lookupNotification(
        notificationId: '12345',
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Notification>());
    });

    test('when unauthorized', () async {
      final notificationsService = NotificationsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/notification/12345',
          'test/src/service/v1/notifications/data/lookup_notification.json',
          statusCode: 401,
          {},
        ),
      );

      expectUnauthorizedException(
        () async => await notificationsService.lookupNotification(
          notificationId: '12345',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final notificationsService = NotificationsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/notification/12345',
          'test/src/service/v1/notifications/data/lookup_notification.json',
          statusCode: 429,
          {},
        ),
      );

      expectRateLimitExceededException(
        () async => await notificationsService.lookupNotification(
          notificationId: '12345',
        ),
      );
    });
  });

  group('.destroyAllNotifications', () {
    test('normal case', () async {
      final notificationsService = NotificationsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/notifications/clear',
          'test/src/service/v1/notifications/data/destroy_all_notifications.json',
        ),
      );

      final response = await notificationsService.destroyAllNotifications();

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Empty>());
    });

    test('when unauthorized', () async {
      final notificationsService = NotificationsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/notifications/clear',
          'test/src/service/v1/notifications/data/destroy_all_notifications.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await notificationsService.destroyAllNotifications(),
      );
    });

    test('when rate limit exceeded', () async {
      final notificationsService = NotificationsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/notifications/clear',
          'test/src/service/v1/notifications/data/destroy_all_notifications.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await notificationsService.destroyAllNotifications(),
      );
    });
  });

  group('.destroyNotification', () {
    test('normal case', () async {
      final notificationsService = NotificationsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/notifications/12345/dismiss',
          'test/src/service/v1/notifications/data/destroy_notification.json',
        ),
      );

      final response = await notificationsService.destroyNotification(
        notificationId: '12345',
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Empty>());
    });

    test('when unauthorized', () async {
      final notificationsService = NotificationsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/notifications/12345/dismiss',
          'test/src/service/v1/notifications/data/destroy_notification.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await notificationsService.destroyNotification(
          notificationId: '12345',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final notificationsService = NotificationsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/notifications/12345/dismiss',
          'test/src/service/v1/notifications/data/destroy_notification.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await notificationsService.destroyNotification(
          notificationId: '12345',
        ),
      );
    });
  });
}
