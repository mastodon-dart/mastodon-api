// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:mastodon_api/src/core/client/user_context.dart';
import 'package:mastodon_api/src/core/country.dart';
import 'package:mastodon_api/src/core/language.dart';
import 'package:mastodon_api/src/core/locale.dart';
import 'package:mastodon_api/src/service/entities/account.dart';
import 'package:mastodon_api/src/service/entities/rate_limit.dart';
import 'package:mastodon_api/src/service/entities/token.dart';
import 'package:mastodon_api/src/service/response/mastodon_response.dart';
import 'package:mastodon_api/src/service/v1/accounts/account_default_settings_param.dart';
import 'package:mastodon_api/src/service/v1/accounts/account_profile_meta_param.dart';
import 'package:mastodon_api/src/service/v1/accounts/accounts_v1_service.dart';
import 'package:mastodon_api/src/service/v1/accounts/post_privacy.dart';
import 'package:test/test.dart';

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
}
