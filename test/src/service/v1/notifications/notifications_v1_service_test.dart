// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import 'package:mastodon_api/src/core/client/user_context.dart';
import 'package:mastodon_api/src/service/entities/notification.dart';
import 'package:mastodon_api/src/service/entities/notification_type.dart';
import 'package:mastodon_api/src/service/entities/rate_limit.dart';
import 'package:mastodon_api/src/service/response/mastodon_response.dart';
import 'package:mastodon_api/src/service/v1/notifications/notifications_v1_service.dart';
// 📦 Package imports:
import 'package:test/test.dart';

import '../../../../mocks/client_context_stubs.dart' as context;

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
              'types[]': NotificationType.mention.value,
              'exclude_types[]': NotificationType.follow.value,
              'account_id': '1111',
            }),
      );

      final response = await notificationsService.lookupNotifications(
        maxNotificationId: '5678',
        sinceNotificationId: '0987',
        minNotificationId: '1234',
        limit: 40,
        types: [NotificationType.mention],
        excludeTypes: [NotificationType.follow],
        accountId: '1111',
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Notification>>());
    });
  });

  group('.lookupNotificationById', () {
    test('normal case', () async {
      final notificationsService = NotificationsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/notification/12345',
          'test/src/service/v1/notifications/data/lookup_notification_by_id.json',
          {},
        ),
      );

      final response = await notificationsService.lookupNotificationById(
        notificationId: '12345',
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Notification>());
    });
  });

  group('.clearAllNotifications', () {
    test('normal case', () async {
      final notificationsService = NotificationsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/notifications/clear',
          'test/src/service/v1/notifications/data/clear_all_notifications.json',
        ),
      );

      final response = await notificationsService.clearAllNotifications();

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isTrue);
    });
  });

  group('.clearNotificationById', () {
    test('normal case', () async {
      final notificationsService = NotificationsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/notifications/12345/dismiss',
          'test/src/service/v1/notifications/data/clear_notification_by_id.json',
        ),
      );

      final response = await notificationsService.clearNotificationById(
        notificationId: '12345',
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isTrue);
    });
  });
}
