// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: deprecated_member_use_from_same_package

// Project imports:
import 'package:mastodon_api/src/core/client/user_context.dart';
import 'package:mastodon_api/src/service/entities/blocked_domain.dart';
import 'package:mastodon_api/src/service/entities/extended_description.dart';
import 'package:mastodon_api/src/service/entities/instance.dart';
import 'package:mastodon_api/src/service/entities/instance_activity.dart';
import 'package:mastodon_api/src/service/entities/rate_limit.dart';
import 'package:mastodon_api/src/service/entities/rule.dart';
import 'package:mastodon_api/src/service/response/mastodon_response.dart';
import 'package:mastodon_api/src/service/v1/instance/instance_v1_service.dart';
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
}
