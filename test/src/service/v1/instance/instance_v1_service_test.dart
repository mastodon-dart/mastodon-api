// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: deprecated_member_use_from_same_package

// 🌎 Project imports:
import 'package:mastodon_api/src/core/client/user_context.dart';
import 'package:mastodon_api/src/service/entities/announcement.dart';
import 'package:mastodon_api/src/service/entities/blocked_domain.dart';
import 'package:mastodon_api/src/service/entities/emoji.dart';
import 'package:mastodon_api/src/service/entities/extended_description.dart';
import 'package:mastodon_api/src/service/entities/instance.dart';
import 'package:mastodon_api/src/service/entities/instance_activity.dart';
import 'package:mastodon_api/src/service/entities/preview_card.dart';
import 'package:mastodon_api/src/service/entities/rate_limit.dart';
import 'package:mastodon_api/src/service/entities/rule.dart';
import 'package:mastodon_api/src/service/entities/status.dart';
import 'package:mastodon_api/src/service/entities/tag.dart';
import 'package:mastodon_api/src/service/entities/trends_link.dart';
import 'package:mastodon_api/src/service/response/mastodon_response.dart';
import 'package:mastodon_api/src/service/v1/instance/instance_v1_service.dart';
// 📦 Package imports:
import 'package:test/test.dart';

import '../../../../mocks/client_context_stubs.dart' as context;
import '../../common_expectations.dart';

void main() {
  group('.lookupInformation', () {
    test('normal case', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/instance',
          'test/src/service/v1/instance/data/lookup_information.json',
          {},
        ),
      );

      final response = await instanceService.lookupInformation();

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Instance>());
    });

    test('when unauthorized', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/instance',
          'test/src/service/v1/instance/data/lookup_information.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await instanceService.lookupInformation(),
      );
    });

    test('when rate limit exceeded', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/instance',
          'test/src/service/v1/instance/data/lookup_information.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await instanceService.lookupInformation(),
      );
    });
  });

  group('.lookupConnectedDomains', () {
    test('normal case', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/instance/peers',
          'test/src/service/v1/instance/data/lookup_connected_domains.json',
          {},
        ),
      );

      final response = await instanceService.lookupConnectedDomains();

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<String>>());
    });

    test('when unauthorized', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/instance/peers',
          'test/src/service/v1/instance/data/lookup_connected_domains.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await instanceService.lookupConnectedDomains(),
      );
    });

    test('when rate limit exceeded', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/instance/peers',
          'test/src/service/v1/instance/data/lookup_connected_domains.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await instanceService.lookupConnectedDomains(),
      );
    });
  });

  group('.lookupWeeklyActivities', () {
    test('normal case', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/instance/activity',
          'test/src/service/v1/instance/data/lookup_weekly_activities.json',
          {},
        ),
      );

      final response = await instanceService.lookupWeeklyActivities();

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<InstanceActivity>>());
    });

    test('when unauthorized', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/instance/activity',
          'test/src/service/v1/instance/data/lookup_weekly_activities.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await instanceService.lookupWeeklyActivities(),
      );
    });

    test('when rate limit exceeded', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/instance/activity',
          'test/src/service/v1/instance/data/lookup_weekly_activities.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await instanceService.lookupWeeklyActivities(),
      );
    });
  });

  group('.lookupRules', () {
    test('normal case', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/instance/rules',
          'test/src/service/v1/instance/data/lookup_rules.json',
          {},
        ),
      );

      final response = await instanceService.lookupRules();

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Rule>>());
    });

    test('when unauthorized', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/instance/rules',
          'test/src/service/v1/instance/data/lookup_rules.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await instanceService.lookupRules(),
      );
    });

    test('when rate limit exceeded', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/instance/rules',
          'test/src/service/v1/instance/data/lookup_rules.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await instanceService.lookupRules(),
      );
    });
  });

  group('.lookupBlockedDomains', () {
    test('normal case', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/instance/domain_block',
          'test/src/service/v1/instance/data/lookup_blocked_domains.json',
          {},
        ),
      );

      final response = await instanceService.lookupBlockedDomains();

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<BlockedDomain>>());
    });

    test('when unauthorized', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/instance/domain_block',
          'test/src/service/v1/instance/data/lookup_blocked_domains.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await instanceService.lookupBlockedDomains(),
      );
    });

    test('when rate limit exceeded', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/instance/domain_block',
          'test/src/service/v1/instance/data/lookup_blocked_domains.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await instanceService.lookupBlockedDomains(),
      );
    });
  });

  group('.lookupExtendedDescription', () {
    test('normal case', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/example',
          'test/src/service/v1/instance/data/lookup_extended_description.json',
          {},
        ),
      );

      final response = await instanceService.lookupExtendedDescription();

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<ExtendedDescription>());
    });

    test('when unauthorized', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/example',
          'test/src/service/v1/instance/data/lookup_extended_description.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await instanceService.lookupExtendedDescription(),
      );
    });

    test('when rate limit exceeded', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/example',
          'test/src/service/v1/instance/data/lookup_extended_description.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await instanceService.lookupExtendedDescription(),
      );
    });
  });

  group('.lookupBlockedDomains', () {
    test('normal case', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/instance/domain_block',
          'test/src/service/v1/instance/data/lookup_blocked_domains.json',
          {},
        ),
      );

      final response = await instanceService.lookupBlockedDomains();

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<BlockedDomain>>());
    });

    test('when unauthorized', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/instance/domain_block',
          'test/src/service/v1/instance/data/lookup_blocked_domains.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await instanceService.lookupBlockedDomains(),
      );
    });

    test('when rate limit exceeded', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/instance/domain_block',
          'test/src/service/v1/instance/data/lookup_blocked_domains.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await instanceService.lookupBlockedDomains(),
      );
    });
  });

  group('.lookupTrendingTags', () {
    test('normal case', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/trends/tags',
          'test/src/service/v1/instance/data/lookup_trending_tags.json',
          {
            'limit': '10',
          },
        ),
      );

      final response = await instanceService.lookupTrendingTags(limit: 10);

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Tag>>());
    });

    test('when unauthorized', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/trends/tags',
          'test/src/service/v1/instance/data/lookup_trending_tags.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await instanceService.lookupTrendingTags(),
      );
    });

    test('when rate limit exceeded', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/trends/tags',
          'test/src/service/v1/instance/data/lookup_trending_tags.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await instanceService.lookupTrendingTags(),
      );
    });
  });

  group('.lookupTrendingStatuses', () {
    test('normal case', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/trends/statuses',
          'test/src/service/v1/instance/data/lookup_trending_statuses.json',
          {
            'limit': '10',
          },
        ),
      );

      final response = await instanceService.lookupTrendingStatuses(limit: 10);

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Status>>());
    });

    test('when unauthorized', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/trends/statuses',
          'test/src/service/v1/instance/data/lookup_trending_statuses.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await instanceService.lookupTrendingStatuses(),
      );
    });

    test('when rate limit exceeded', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/trends/statuses',
          'test/src/service/v1/instance/data/lookup_trending_statuses.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await instanceService.lookupTrendingStatuses(),
      );
    });
  });

  group('.lookupTrendingLinks', () {
    test('normal case', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/trends/links',
          'test/src/service/v1/instance/data/lookup_trending_links.json',
          {
            'limit': '10',
          },
        ),
      );

      final response = await instanceService.lookupTrendingLinks(limit: 10);

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<TrendsLink>>());
    });

    test('when unauthorized', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/trends/links',
          'test/src/service/v1/instance/data/lookup_trending_links.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await instanceService.lookupTrendingLinks(),
      );
    });

    test('when rate limit exceeded', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/trends/links',
          'test/src/service/v1/instance/data/lookup_trending_links.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await instanceService.lookupTrendingLinks(),
      );
    });
  });

  group('.lookupActiveAnnouncements', () {
    test('normal case', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/announcements',
          'test/src/service/v1/instance/data/lookup_announcements.json',
          {
            'with_dismissed': 'false',
          },
        ),
      );

      final response = await instanceService.lookupActiveAnnouncements();

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Announcement>>());
    });

    test('when unauthorized', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/announcements',
          'test/src/service/v1/instance/data/lookup_announcements.json',
          {
            'with_dismissed': 'false',
          },
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await instanceService.lookupActiveAnnouncements(),
      );
    });

    test('when rate limit exceeded', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/announcements',
          'test/src/service/v1/instance/data/lookup_announcements.json',
          {
            'with_dismissed': 'false',
          },
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await instanceService.lookupActiveAnnouncements(),
      );
    });
  });

  group('.lookupAnnouncements', () {
    test('normal case', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/announcements',
          'test/src/service/v1/instance/data/lookup_announcements.json',
          {
            'with_dismissed': 'true',
          },
        ),
      );

      final response = await instanceService.lookupAnnouncements();

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Announcement>>());
    });

    test('when unauthorized', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/announcements',
          'test/src/service/v1/instance/data/lookup_announcements.json',
          {
            'with_dismissed': 'true',
          },
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await instanceService.lookupAnnouncements(),
      );
    });

    test('when rate limit exceeded', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/announcements',
          'test/src/service/v1/instance/data/lookup_announcements.json',
          {
            'with_dismissed': 'true',
          },
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await instanceService.lookupAnnouncements(),
      );
    });
  });

  group('.createMarkAnnouncementAsRead', () {
    test('normal case', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/announcements/1111/dismiss',
          'test/src/service/v1/instance/data/create_mark_announcement_as_read.json',
        ),
      );

      final response = await instanceService.createMarkAnnouncementAsRead(
        announcementId: '1111',
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isTrue);
    });

    test('when announcement id does not exist', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/announcements/1111/dismiss',
          'test/src/service/v1/instance/data/create_mark_announcement_as_read.json',
          statusCode: 404,
        ),
      );

      final response = await instanceService.createMarkAnnouncementAsRead(
        announcementId: '1111',
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isFalse);
    });

    test('when unauthorized', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/announcements/1111/dismiss',
          'test/src/service/v1/instance/data/create_mark_announcement_as_read.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await instanceService.createMarkAnnouncementAsRead(
          announcementId: '1111',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/announcements/1111/dismiss',
          'test/src/service/v1/instance/data/create_mark_announcement_as_read.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await instanceService.createMarkAnnouncementAsRead(
          announcementId: '1111',
        ),
      );
    });
  });

  group('.createReactionToAnnouncement', () {
    test('normal case', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildPutStub(
          'test',
          '/api/v1/announcements/1111/reactions/❗',
          'test/src/service/v1/instance/data/create_reaction_to_announcement.json',
        ),
      );

      final response = await instanceService.createReactionToAnnouncement(
        announcementId: '1111',
        emojiName: '❗',
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isTrue);
    });

    test('when announcement id does not exist', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildPutStub(
          'test',
          '/api/v1/announcements/1111/reactions/❗',
          'test/src/service/v1/instance/data/create_reaction_to_announcement.json',
          statusCode: 404,
        ),
      );

      final response = await instanceService.createReactionToAnnouncement(
        announcementId: '1111',
        emojiName: '❗',
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isFalse);
    });

    test('when unauthorized', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildPutStub(
          'test',
          '/api/v1/announcements/1111/reactions/❗',
          'test/src/service/v1/instance/data/create_reaction_to_announcement.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await instanceService.createReactionToAnnouncement(
          announcementId: '1111',
          emojiName: '❗',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildPutStub(
          'test',
          '/api/v1/announcements/1111/reactions/❗',
          'test/src/service/v1/instance/data/create_reaction_to_announcement.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await instanceService.createReactionToAnnouncement(
          announcementId: '1111',
          emojiName: '❗',
        ),
      );
    });
  });

  group('.destroyReactionToAnnouncement', () {
    test('normal case', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildDeleteStub(
          'test',
          '/api/v1/announcements/1111/reactions/❗',
          'test/src/service/v1/instance/data/destroy_reaction_to_announcement.json',
        ),
      );

      final response = await instanceService.destroyReactionToAnnouncement(
        announcementId: '1111',
        emojiName: '❗',
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isTrue);
    });

    test('when announcement id does not exist', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildDeleteStub(
          'test',
          '/api/v1/announcements/1111/reactions/❗',
          'test/src/service/v1/instance/data/destroy_reaction_to_announcement.json',
          statusCode: 404,
        ),
      );

      final response = await instanceService.destroyReactionToAnnouncement(
        announcementId: '1111',
        emojiName: '❗',
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isFalse);
    });

    test('when unauthorized', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildDeleteStub(
          'test',
          '/api/v1/announcements/1111/reactions/❗',
          'test/src/service/v1/instance/data/destroy_reaction_to_announcement.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await instanceService.destroyReactionToAnnouncement(
          announcementId: '1111',
          emojiName: '❗',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildDeleteStub(
          'test',
          '/api/v1/announcements/1111/reactions/❗',
          'test/src/service/v1/instance/data/destroy_reaction_to_announcement.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await instanceService.destroyReactionToAnnouncement(
          announcementId: '1111',
          emojiName: '❗',
        ),
      );
    });
  });

  group('.lookupAvailableEmoji', () {
    test('normal case', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/custom_emojis',
          'test/src/service/v1/instance/data/lookup_available_emoji.json',
          {},
        ),
      );

      final response = await instanceService.lookupAvailableEmoji();

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Emoji>>());
    });

    test('when unauthorized', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/custom_emojis',
          'test/src/service/v1/instance/data/lookup_available_emoji.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await instanceService.lookupAvailableEmoji(),
      );
    });

    test('when rate limit exceeded', () async {
      final instanceService = InstanceV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/custom_emojis',
          'test/src/service/v1/instance/data/lookup_available_emoji.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await instanceService.lookupAvailableEmoji(),
      );
    });
  });
}
