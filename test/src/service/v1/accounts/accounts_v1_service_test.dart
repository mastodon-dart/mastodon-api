// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import 'package:mastodon_api/src/core/client/user_context.dart';
import 'package:mastodon_api/src/core/country.dart';
import 'package:mastodon_api/src/core/language.dart';
import 'package:mastodon_api/src/core/locale.dart';
import 'package:mastodon_api/src/service/entities/account.dart';
import 'package:mastodon_api/src/service/entities/account_preferences.dart';
import 'package:mastodon_api/src/service/entities/familiar_follower.dart';
import 'package:mastodon_api/src/service/entities/featured_tag.dart';
import 'package:mastodon_api/src/service/entities/rate_limit.dart';
import 'package:mastodon_api/src/service/entities/relationship.dart';
import 'package:mastodon_api/src/service/entities/report.dart';
import 'package:mastodon_api/src/service/entities/status.dart';
import 'package:mastodon_api/src/service/entities/tag.dart';
import 'package:mastodon_api/src/service/entities/token.dart';
import 'package:mastodon_api/src/service/entities/user_list.dart';
import 'package:mastodon_api/src/service/response/mastodon_response.dart';
import 'package:mastodon_api/src/service/v1/accounts/account_default_settings_param.dart';
import 'package:mastodon_api/src/service/v1/accounts/account_profile_meta_param.dart';
import 'package:mastodon_api/src/service/v1/accounts/accounts_v1_service.dart';
import 'package:mastodon_api/src/service/v1/accounts/post_privacy.dart';
// 📦 Package imports:
import 'package:test/test.dart';
import 'package:universal_io/io.dart';

import '../../../../mocks/client_context_stubs.dart' as context;
import '../../common_expectations.dart';

void main() {
  group('.createAccount', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts',
          'test/src/service/v1/accounts/data/create_account.json',
        ),
      );

      final response = await accountsService.createAccount(
        username: 'test',
        email: 'test@mail',
        password: '1234',
        agreement: true,
        locale: Locale(
          lang: Language.english,
          country: Country.unitedStates,
        ),
        reason: 'aaa',
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Token>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts',
          'test/src/service/v1/accounts/data/create_account.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.createAccount(
          username: 'test',
          email: 'test@mail',
          password: '1234',
          agreement: true,
          locale: Locale(
            lang: Language.english,
            country: Country.unitedStates,
          ),
          reason: 'aaa',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts',
          'test/src/service/v1/accounts/data/create_account.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.createAccount(
          username: 'test',
          email: 'test@mail',
          password: '1234',
          agreement: true,
          locale: Locale(
            lang: Language.english,
            country: Country.unitedStates,
          ),
          reason: 'aaa',
        ),
      );
    });
  });

  group('.verifyAccountCredentials', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/verify_credentials',
          'test/src/service/v1/accounts/data/verify_account_credentials.json',
          {},
        ),
      );

      final response = await accountsService.verifyAccountCredentials();

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Account>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/verify_credentials',
          'test/src/service/v1/accounts/data/verify_account_credentials.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.verifyAccountCredentials(),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/verify_credentials',
          'test/src/service/v1/accounts/data/verify_account_credentials.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.verifyAccountCredentials(),
      );
    });
  });

  group('.updateAccount', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPatchStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/update_credentials',
          'test/src/service/v1/accounts/data/update_account.json',
        ),
      );

      final response = await accountsService.updateAccount(
        displayName: 'test',
        bio: 'aaaa',
        discoverable: true,
        bot: true,
        locked: false,
        defaultSettings: AccountDefaultSettingsParam(
          privacy: PostPrivacy.unlisted,
          sensitive: true,
          language: Language.english,
        ),
        profileMeta: [
          AccountProfileMetaParam(
            name: 'Twitter',
            value: '@aaaaa',
          ),
        ],
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Account>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPatchStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/update_credentials',
          'test/src/service/v1/accounts/data/update_account.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.updateAccount(
          displayName: 'test',
          bio: 'aaaa',
          discoverable: true,
          bot: true,
          locked: false,
          defaultSettings: AccountDefaultSettingsParam(
            privacy: PostPrivacy.unlisted,
            sensitive: true,
            language: Language.english,
          ),
          profileMeta: [
            AccountProfileMetaParam(
              name: 'Twitter',
              value: '@aaaaa',
            ),
          ],
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPatchStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/update_credentials',
          'test/src/service/v1/accounts/data/update_account.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.updateAccount(
          displayName: 'test',
          bio: 'aaaa',
          discoverable: true,
          bot: true,
          locked: false,
          defaultSettings: AccountDefaultSettingsParam(
            privacy: PostPrivacy.unlisted,
            sensitive: true,
            language: Language.english,
          ),
          profileMeta: [
            AccountProfileMetaParam(
              name: 'Twitter',
              value: '@aaaaa',
            ),
          ],
        ),
      );
    });
  });

  group('.updateAvatarImage', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPatchMultipartStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/update_credentials',
          'test/src/service/v1/accounts/data/update_account.json',
        ),
      );

      final response = await accountsService.updateAvatarImage(
        file: File.fromUri(
          Uri.file('test/src/service/v1/accounts/data/update_account.json'),
        ),
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Account>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPatchMultipartStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/update_credentials',
          'test/src/service/v1/accounts/data/update_account.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.updateAvatarImage(
          file: File.fromUri(
            Uri.file('test/src/service/v1/accounts/data/update_account.json'),
          ),
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPatchMultipartStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/update_credentials',
          'test/src/service/v1/accounts/data/update_account.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.updateAvatarImage(
          file: File.fromUri(
            Uri.file('test/src/service/v1/accounts/data/update_account.json'),
          ),
        ),
      );
    });
  });

  group('.updateHeaderImage', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPatchMultipartStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/update_credentials',
          'test/src/service/v1/accounts/data/update_account.json',
        ),
      );

      final response = await accountsService.updateHeaderImage(
        file: File.fromUri(
          Uri.file('test/src/service/v1/accounts/data/update_account.json'),
        ),
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Account>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPatchMultipartStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/update_credentials',
          'test/src/service/v1/accounts/data/update_account.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.updateHeaderImage(
          file: File.fromUri(
            Uri.file('test/src/service/v1/accounts/data/update_account.json'),
          ),
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPatchMultipartStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/update_credentials',
          'test/src/service/v1/accounts/data/update_account.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.updateHeaderImage(
          file: File.fromUri(
            Uri.file('test/src/service/v1/accounts/data/update_account.json'),
          ),
        ),
      );
    });
  });

  group('.lookupAccount', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/accounts/1111',
          'test/src/service/v1/accounts/data/lookup_by_id.json',
          {},
        ),
      );

      final response = await accountsService.lookupAccount(accountId: '1111');

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Account>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/accounts/1111',
          'test/src/service/v1/accounts/data/lookup_by_id.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.lookupAccount(accountId: '1111'),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/accounts/1111',
          'test/src/service/v1/accounts/data/lookup_by_id.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.lookupAccount(accountId: '1111'),
      );
    });
  });

  group('.lookupStatuses', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/accounts/1111/statuses',
          'test/src/service/v1/accounts/data/lookup_statuses.json',
          {},
        ),
      );

      final response = await accountsService.lookupStatuses(accountId: '1111');

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Status>>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/accounts/1111/statuses',
          'test/src/service/v1/accounts/data/lookup_statuses.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.lookupStatuses(accountId: '1111'),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/accounts/1111/statuses',
          'test/src/service/v1/accounts/data/lookup_statuses.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.lookupStatuses(accountId: '1111'),
      );
    });
  });

  group('.lookupFollowers', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/followers',
          'test/src/service/v1/accounts/data/lookup_followers.json',
          {},
        ),
      );

      final response = await accountsService.lookupFollowers(accountId: '1111');

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Account>>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/followers',
          'test/src/service/v1/accounts/data/lookup_followers.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.lookupFollowers(accountId: '1111'),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/followers',
          'test/src/service/v1/accounts/data/lookup_followers.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.lookupFollowers(accountId: '1111'),
      );
    });
  });

  group('.lookupFollowings', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/following',
          'test/src/service/v1/accounts/data/lookup_followings.json',
          {},
        ),
      );

      final response =
          await accountsService.lookupFollowings(accountId: '1111');

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Account>>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/following',
          'test/src/service/v1/accounts/data/lookup_followings.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.lookupFollowings(accountId: '1111'),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/following',
          'test/src/service/v1/accounts/data/lookup_followings.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.lookupFollowings(accountId: '1111'),
      );
    });
  });

  group('.lookupFeaturedTags', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/accounts/1111/featured_tags',
          'test/src/service/v1/accounts/data/lookup_featured_tags.json',
          {},
        ),
      );

      final response =
          await accountsService.lookupFeaturedTags(accountId: '1111');

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<FeaturedTag>>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/accounts/1111/featured_tags',
          'test/src/service/v1/accounts/data/lookup_featured_tags.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.lookupFeaturedTags(accountId: '1111'),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/accounts/1111/featured_tags',
          'test/src/service/v1/accounts/data/lookup_featured_tags.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.lookupFeaturedTags(accountId: '1111'),
      );
    });
  });

  group('.lookupContainedLists', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/lists',
          'test/src/service/v1/accounts/data/lookup_contained_lists.json',
          {},
        ),
      );

      final response =
          await accountsService.lookupContainedLists(accountId: '1111');

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<UserList>>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/lists',
          'test/src/service/v1/accounts/data/lookup_contained_lists.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async =>
            await accountsService.lookupContainedLists(accountId: '1111'),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/lists',
          'test/src/service/v1/accounts/data/lookup_contained_lists.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async =>
            await accountsService.lookupContainedLists(accountId: '1111'),
      );
    });
  });

  group('.createFollow', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/follow',
          'test/src/service/v1/accounts/data/create_follow.json',
        ),
      );

      final response = await accountsService.createFollow(accountId: '1111');

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Relationship>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/follow',
          'test/src/service/v1/accounts/data/create_follow.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.createFollow(accountId: '1111'),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/follow',
          'test/src/service/v1/accounts/data/create_follow.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.createFollow(accountId: '1111'),
      );
    });
  });

  group('.destroyFollow', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/unfollow',
          'test/src/service/v1/accounts/data/destroy_follow.json',
        ),
      );

      final response = await accountsService.destroyFollow(accountId: '1111');

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Relationship>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/unfollow',
          'test/src/service/v1/accounts/data/destroy_follow.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.destroyFollow(accountId: '1111'),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/unfollow',
          'test/src/service/v1/accounts/data/destroy_follow.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.destroyFollow(accountId: '1111'),
      );
    });
  });

  group('.destroyFollower', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/remove_from_followers',
          'test/src/service/v1/accounts/data/destroy_follower.json',
        ),
      );

      final response = await accountsService.destroyFollower(accountId: '1111');

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Relationship>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/remove_from_followers',
          'test/src/service/v1/accounts/data/destroy_follower.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.destroyFollower(accountId: '1111'),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/remove_from_followers',
          'test/src/service/v1/accounts/data/destroy_follower.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.destroyFollower(accountId: '1111'),
      );
    });
  });

  group('.createBlock', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/block',
          'test/src/service/v1/accounts/data/create_block.json',
        ),
      );

      final response = await accountsService.createBlock(accountId: '1111');

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Relationship>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/block',
          'test/src/service/v1/accounts/data/create_block.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.createBlock(accountId: '1111'),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/block',
          'test/src/service/v1/accounts/data/create_block.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.createBlock(accountId: '1111'),
      );
    });
  });

  group('.destroyBlock', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          'api/v1/accounts/1111/unblock',
          'test/src/service/v1/accounts/data/destroy_block.json',
        ),
      );

      final response = await accountsService.destroyBlock(accountId: '1111');

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Relationship>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          'api/v1/accounts/1111/unblock',
          'test/src/service/v1/accounts/data/destroy_block.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.destroyBlock(accountId: '1111'),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          'api/v1/accounts/1111/unblock',
          'test/src/service/v1/accounts/data/destroy_block.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.destroyBlock(accountId: '1111'),
      );
    });
  });

  group('.createMute', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/mute',
          'test/src/service/v1/accounts/data/create_mute.json',
        ),
      );

      final response = await accountsService.createMute(accountId: '1111');

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Relationship>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/mute',
          'test/src/service/v1/accounts/data/create_mute.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.createMute(accountId: '1111'),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/mute',
          'test/src/service/v1/accounts/data/create_mute.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.createMute(accountId: '1111'),
      );
    });
  });

  group('.destroyMute', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/unmute',
          'test/src/service/v1/accounts/data/destroy_mute.json',
        ),
      );

      final response = await accountsService.destroyMute(accountId: '1111');

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Relationship>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/unmute',
          'test/src/service/v1/accounts/data/destroy_mute.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.destroyMute(accountId: '1111'),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/unmute',
          'test/src/service/v1/accounts/data/destroy_mute.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.destroyMute(accountId: '1111'),
      );
    });
  });

  group('.createFeaturedProfile', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/pin',
          'test/src/service/v1/accounts/data/create_featured_profile.json',
        ),
      );

      final response =
          await accountsService.createFeaturedProfile(accountId: '1111');

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Relationship>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/pin',
          'test/src/service/v1/accounts/data/create_featured_profile.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async =>
            await accountsService.createFeaturedProfile(accountId: '1111'),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/pin',
          'test/src/service/v1/accounts/data/create_featured_profile.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async =>
            await accountsService.createFeaturedProfile(accountId: '1111'),
      );
    });
  });

  group('.destroyFeaturedProfile', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/unpin',
          'test/src/service/v1/accounts/data/destroy_featured_profile.json',
        ),
      );

      final response =
          await accountsService.destroyFeaturedProfile(accountId: '1111');

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Relationship>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/unpin',
          'test/src/service/v1/accounts/data/destroy_featured_profile.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async =>
            await accountsService.destroyFeaturedProfile(accountId: '1111'),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/unpin',
          'test/src/service/v1/accounts/data/destroy_featured_profile.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async =>
            await accountsService.destroyFeaturedProfile(accountId: '1111'),
      );
    });
  });

  group('.updatePrivateComment', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/note',
          'test/src/service/v1/accounts/data/update_private_comment.json',
        ),
      );

      final response =
          await accountsService.updatePrivateComment(accountId: '1111');

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Relationship>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/note',
          'test/src/service/v1/accounts/data/update_private_comment.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async =>
            await accountsService.updatePrivateComment(accountId: '1111'),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/1111/note',
          'test/src/service/v1/accounts/data/update_private_comment.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async =>
            await accountsService.updatePrivateComment(accountId: '1111'),
      );
    });
  });

  group('.lookupRelationships', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/relationships?id[]=1&id[]=2',
          'test/src/service/v1/accounts/data/lookup_relationships.json',
          {},
        ),
      );

      final response =
          await accountsService.lookupRelationships(accountIds: ['1', '2']);

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Relationship>>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/relationships?id[]=1&id[]=2',
          'test/src/service/v1/accounts/data/lookup_relationships.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async =>
            await accountsService.lookupRelationships(accountIds: ['1', '2']),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/relationships?id[]=1&id[]=2',
          'test/src/service/v1/accounts/data/lookup_relationships.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async =>
            await accountsService.lookupRelationships(accountIds: ['1', '2']),
      );
    });
  });

  group('.lookupFamiliarFollowers', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/familiar_followers?id[]=1&id[]=2',
          'test/src/service/v1/accounts/data/lookup_familiar_followers.json',
          {},
        ),
      );

      final response =
          await accountsService.lookupFamiliarFollowers(accountIds: ['1', '2']);

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<FamiliarFollower>>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/familiar_followers?id[]=1&id[]=2',
          'test/src/service/v1/accounts/data/lookup_familiar_followers.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService
            .lookupFamiliarFollowers(accountIds: ['1', '2']),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/familiar_followers?id[]=1&id[]=2',
          'test/src/service/v1/accounts/data/lookup_familiar_followers.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService
            .lookupFamiliarFollowers(accountIds: ['1', '2']),
      );
    });
  });

  group('.searchAccounts', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/search',
          'test/src/service/v1/accounts/data/search_accounts.json',
          {
            'q': 'test',
            'limit': '10',
            'resolve': 'true',
            'following': 'true',
          },
        ),
      );

      final response = await accountsService.searchAccounts(
        query: 'test',
        limit: 10,
        resolveWithWebFinger: true,
        onlyFollowings: true,
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Account>>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/search',
          'test/src/service/v1/accounts/data/search_accounts.json',
          {
            'q': 'test',
            'limit': '10',
            'resolve': 'true',
            'following': 'true',
          },
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.searchAccounts(
          query: 'test',
          limit: 10,
          resolveWithWebFinger: true,
          onlyFollowings: true,
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/accounts/search',
          'test/src/service/v1/accounts/data/search_accounts.json',
          {
            'q': 'test',
            'limit': '10',
            'resolve': 'true',
            'following': 'true',
          },
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.searchAccounts(
          query: 'test',
          limit: 10,
          resolveWithWebFinger: true,
          onlyFollowings: true,
        ),
      );
    });
  });

  group('.lookupAccountFromWebFingerAddress', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/accounts/lookup',
          'test/src/service/v1/accounts/data/lookup_account_from_web_finger_address.json',
          {
            'acct': 'aaaaa',
          },
        ),
      );

      final response = await accountsService.lookupAccountFromWebFingerAddress(
        accountIdentifier: 'aaaaa',
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Account>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/accounts/lookup',
          'test/src/service/v1/accounts/data/lookup_account_from_web_finger_address.json',
          {
            'acct': 'aaaaa',
          },
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.lookupAccountFromWebFingerAddress(
          accountIdentifier: 'aaaaa',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.anonymousOnly,
          '/api/v1/accounts/lookup',
          'test/src/service/v1/accounts/data/lookup_account_from_web_finger_address.json',
          {
            'acct': 'aaaaa',
          },
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.lookupAccountFromWebFingerAddress(
          accountIdentifier: 'aaaaa',
        ),
      );
    });
  });

  group('.lookupPreferences', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/preferences',
          'test/src/service/v1/accounts/data/lookup_preferences.json',
          {},
        ),
      );

      final response = await accountsService.lookupPreferences();

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<AccountPreferences>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/preferences',
          'test/src/service/v1/accounts/data/lookup_preferences.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.lookupPreferences(),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/preferences',
          'test/src/service/v1/accounts/data/lookup_preferences.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.lookupPreferences(),
      );
    });
  });

  group('.lookupOwnedFeaturedTags', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/featured_tags',
          'test/src/service/v1/accounts/data/lookup_owned_featured_tags.json',
          {},
        ),
      );

      final response = await accountsService.lookupOwnedFeaturedTags();

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<FeaturedTag>>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/featured_tags',
          'test/src/service/v1/accounts/data/lookup_owned_featured_tags.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.lookupOwnedFeaturedTags(),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/featured_tags',
          'test/src/service/v1/accounts/data/lookup_owned_featured_tags.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.lookupOwnedFeaturedTags(),
      );
    });
  });

  group('.createFeaturedTag', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/featured_tags',
          'test/src/service/v1/accounts/data/create_featured_tag.json',
        ),
      );

      final response = await accountsService.createFeaturedTag(tagName: 'test');

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<FeaturedTag>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/featured_tags',
          'test/src/service/v1/accounts/data/create_featured_tag.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.createFeaturedTag(tagName: 'test'),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/featured_tags',
          'test/src/service/v1/accounts/data/create_featured_tag.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.createFeaturedTag(tagName: 'test'),
      );
    });
  });

  group('.destroyFeaturedTag', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildDeleteStub(
          'test',
          '/api/v1/featured_tags/1234',
          'test/src/service/v1/accounts/data/destroy_featured_tag.json',
        ),
      );

      final response = await accountsService.destroyFeaturedTag(tagId: '1234');

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isTrue);
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildDeleteStub(
          'test',
          '/api/v1/featured_tags/1234',
          'test/src/service/v1/accounts/data/destroy_featured_tag.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.destroyFeaturedTag(tagId: '1234'),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildDeleteStub(
          'test',
          '/api/v1/featured_tags/1234',
          'test/src/service/v1/accounts/data/destroy_featured_tag.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.destroyFeaturedTag(tagId: '1234'),
      );
    });
  });

  group('.lookupSuggestedTags', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/featured_tags/suggestions',
          'test/src/service/v1/accounts/data/lookup_suggested_tags.json',
          {},
        ),
      );

      final response = await accountsService.lookupSuggestedTags();

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Tag>>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/featured_tags/suggestions',
          'test/src/service/v1/accounts/data/lookup_suggested_tags.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.lookupSuggestedTags(),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/featured_tags/suggestions',
          'test/src/service/v1/accounts/data/lookup_suggested_tags.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.lookupSuggestedTags(),
      );
    });
  });

  group('.lookupFollowedTags', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/followed_tags',
          'test/src/service/v1/accounts/data/lookup_followed_tags.json',
          {
            'limit': '10',
          },
        ),
      );

      final response = await accountsService.lookupFollowedTags(limit: 10);

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Tag>>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/followed_tags',
          'test/src/service/v1/accounts/data/lookup_followed_tags.json',
          {
            'limit': '10',
          },
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.lookupFollowedTags(limit: 10),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/followed_tags',
          'test/src/service/v1/accounts/data/lookup_followed_tags.json',
          {
            'limit': '10',
          },
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.lookupFollowedTags(limit: 10),
      );
    });
  });

  group('.destroyFollowSuggestion', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildDeleteStub(
          'test',
          '/api/v1/suggestions/1234',
          'test/src/service/v1/accounts/data/destroy_follow_suggestion.json',
        ),
      );

      final response = await accountsService.destroyFollowSuggestion(
        accountId: '1234',
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isTrue);
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildDeleteStub(
          'test',
          '/api/v1/suggestions/1234',
          'test/src/service/v1/accounts/data/destroy_follow_suggestion.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.destroyFollowSuggestion(
          accountId: '1234',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildDeleteStub(
          'test',
          '/api/v1/suggestions/1234',
          'test/src/service/v1/accounts/data/destroy_follow_suggestion.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.destroyFollowSuggestion(
          accountId: '1234',
        ),
      );
    });
  });

  group('.lookupTag', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/tags/1234',
          'test/src/service/v1/accounts/data/lookup_tag.json',
          {},
        ),
      );

      final response = await accountsService.lookupTag(
        tagId: '1234',
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Tag>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/tags/1234',
          'test/src/service/v1/accounts/data/lookup_tag.json',
          {},
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.lookupTag(
          tagId: '1234',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2OrAnonymous,
          '/api/v1/tags/1234',
          'test/src/service/v1/accounts/data/lookup_tag.json',
          {},
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.lookupTag(
          tagId: '1234',
        ),
      );
    });
  });

  group('.createFollowingTag', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/tags/1234/follow',
          'test/src/service/v1/accounts/data/create_following_tag.json',
        ),
      );

      final response = await accountsService.createFollowingTag(
        tagId: '1234',
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Tag>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/tags/1234/follow',
          'test/src/service/v1/accounts/data/create_following_tag.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.createFollowingTag(
          tagId: '1234',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/tags/1234/follow',
          'test/src/service/v1/accounts/data/create_following_tag.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.createFollowingTag(
          tagId: '1234',
        ),
      );
    });
  });

  group('.destroyFollowingTag', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/tags/1234/unfollow',
          'test/src/service/v1/accounts/data/destroy_following_tag.json',
        ),
      );

      final response = await accountsService.destroyFollowingTag(
        tagId: '1234',
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Tag>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/tags/1234/unfollow',
          'test/src/service/v1/accounts/data/destroy_following_tag.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.destroyFollowingTag(
          tagId: '1234',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/tags/1234/unfollow',
          'test/src/service/v1/accounts/data/destroy_following_tag.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.destroyFollowingTag(
          tagId: '1234',
        ),
      );
    });
  });

  group('.createReport', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/reports',
          'test/src/service/v1/accounts/data/create_report.json',
        ),
      );

      final response = await accountsService.createReport(
        accountId: '1234',
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<Report>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/reports',
          'test/src/service/v1/accounts/data/create_report.json',
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.createReport(
          accountId: '1234',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildPostStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/reports',
          'test/src/service/v1/accounts/data/create_report.json',
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.createReport(
          accountId: '1234',
        ),
      );
    });
  });

  group('.lookupFeaturedProfiles', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/endorsements',
          'test/src/service/v1/accounts/data/lookup_featured_profiles.json',
          {
            'limit': '40',
          },
        ),
      );

      final response = await accountsService.lookupFeaturedProfiles(
        limit: 40,
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Account>>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/endorsements',
          'test/src/service/v1/accounts/data/lookup_featured_profiles.json',
          {
            'limit': '40',
          },
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.lookupFeaturedProfiles(
          limit: 40,
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/endorsements',
          'test/src/service/v1/accounts/data/lookup_featured_profiles.json',
          {
            'limit': '40',
          },
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.lookupFeaturedProfiles(
          limit: 40,
        ),
      );
    });
  });

  group('.lookupMutedAccounts', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/mutes',
          'test/src/service/v1/accounts/data/lookup_muted_accounts.json',
          {
            'limit': '40',
          },
        ),
      );

      final response = await accountsService.lookupMutedAccounts(
        limit: 40,
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Account>>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/mutes',
          'test/src/service/v1/accounts/data/lookup_muted_accounts.json',
          {
            'limit': '40',
          },
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.lookupMutedAccounts(
          limit: 40,
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/mutes',
          'test/src/service/v1/accounts/data/lookup_muted_accounts.json',
          {
            'limit': '40',
          },
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.lookupMutedAccounts(
          limit: 40,
        ),
      );
    });
  });

  group('.lookupFavouritedStatuses', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/favourites',
          'test/src/service/v1/accounts/data/lookup_favourited_statuses.json',
          {
            'limit': '40',
          },
        ),
      );

      final response = await accountsService.lookupFavouritedStatuses(
        limit: 40,
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Status>>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/favourites',
          'test/src/service/v1/accounts/data/lookup_favourited_statuses.json',
          {
            'limit': '40',
          },
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.lookupFavouritedStatuses(
          limit: 40,
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/favourites',
          'test/src/service/v1/accounts/data/lookup_favourited_statuses.json',
          {
            'limit': '40',
          },
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.lookupFavouritedStatuses(
          limit: 40,
        ),
      );
    });
  });

  group('.lookupFavouritedStatuses', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/favourites',
          'test/src/service/v1/accounts/data/lookup_favourited_statuses.json',
          {
            'limit': '40',
          },
        ),
      );

      final response = await accountsService.lookupFavouritedStatuses(
        limit: 40,
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Status>>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/favourites',
          'test/src/service/v1/accounts/data/lookup_favourited_statuses.json',
          {
            'limit': '40',
          },
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.lookupFavouritedStatuses(
          limit: 40,
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/favourites',
          'test/src/service/v1/accounts/data/lookup_favourited_statuses.json',
          {
            'limit': '40',
          },
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.lookupFavouritedStatuses(
          limit: 40,
        ),
      );
    });
  });

  group('.lookupBlockedAccounts', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/blocks',
          'test/src/service/v1/accounts/data/lookup_blocked_accounts.json',
          {
            'limit': '40',
          },
        ),
      );

      final response = await accountsService.lookupBlockedAccounts(
        limit: 40,
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Account>>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/blocks',
          'test/src/service/v1/accounts/data/lookup_blocked_accounts.json',
          {
            'limit': '40',
          },
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.lookupBlockedAccounts(
          limit: 40,
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/blocks',
          'test/src/service/v1/accounts/data/lookup_blocked_accounts.json',
          {
            'limit': '40',
          },
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.lookupBlockedAccounts(
          limit: 40,
        ),
      );
    });
  });

  group('.lookupBookmarkedStatuses', () {
    test('normal case', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/bookmarks',
          'test/src/service/v1/accounts/data/lookup_bookmarked_statuses.json',
          {
            'limit': '40',
          },
        ),
      );

      final response = await accountsService.lookupBookmarkedStatuses(
        limit: 40,
      );

      expect(response, isA<MastodonResponse>());
      expect(response.rateLimit, isA<RateLimit>());
      expect(response.data, isA<List<Status>>());
    });

    test('when unauthorized', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/bookmarks',
          'test/src/service/v1/accounts/data/lookup_bookmarked_statuses.json',
          {
            'limit': '40',
          },
          statusCode: 401,
        ),
      );

      expectUnauthorizedException(
        () async => await accountsService.lookupBookmarkedStatuses(
          limit: 40,
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final accountsService = AccountsV1Service(
        instance: 'test',
        context: context.buildGetStub(
          'test',
          UserContext.oauth2Only,
          '/api/v1/bookmarks',
          'test/src/service/v1/accounts/data/lookup_bookmarked_statuses.json',
          {
            'limit': '40',
          },
          statusCode: 429,
        ),
      );

      expectRateLimitExceededException(
        () async => await accountsService.lookupBookmarkedStatuses(
          limit: 40,
        ),
      );
    });
  });
}
