// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import 'dart:io';

import 'package:http/http.dart';

import '../../../core/client/client_context.dart';
import '../../../core/client/user_context.dart';
import '../../base_service.dart';
import '../../entities/account.dart';
import '../../entities/status.dart';
import '../../entities/token.dart';
import '../../response/mastodon_response.dart';
import 'account_default_settings_param.dart';
import 'account_profile_meta_param.dart';

abstract class AccountsV1Service {
  /// Returns the new instance of [AccountsV1Service].
  factory AccountsV1Service({
    required String instance,
    required ClientContext context,
  }) =>
      _AccountsV1Service(
        instance: instance,
        context: context,
      );

  /// Creates a user and account records. Returns an account access token for
  /// the app that initiated the request. The app should save this token for
  /// later, and should wait for the user to confirm their account by clicking
  /// a link in their email inbox.
  ///
  /// ## Parameters
  ///
  /// - [username]: The desired username for the account.
  ///
  /// - [email]: The email address to be used for login.
  ///
  /// - [password]: The password to be used for login.
  ///
  /// - [agreement]: Whether the user agrees to the local rules, terms, and
  ///                policies. These should be presented to the user in order
  ///                to allow them to consent before setting this parameter
  ///                to TRUE.
  ///
  /// - [locale]: The language of the confirmation email that will be sent.
  ///
  /// - [reason]: If registrations require manual approval, this text will be
  ///             reviewed by moderators.
  ///
  /// ## Endpoint Url
  ///
  /// - POST https://mastodon.example/api/v1/accounts HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - write:accounts
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/accounts/#create
  Future<MastodonResponse<Token>> createAccount({
    required String username,
    required String email,
    required String password,
    required bool agreement,
    required String locale,
    String? reason,
  });

  /// Test to make sure that the user token works.
  ///
  /// ## Parameters
  ///
  /// - [bearerToken]: Specific Bearer to verify credentials.
  ///
  /// ## Endpoint Url
  ///
  /// - GET https://mastodon.example/api/v1/accounts/verify_credentials HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - read:accounts
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/accounts/#verify_credentials
  Future<MastodonResponse<Account>> verifyAccountCredentials({
    required String bearerToken,
  });

  /// Update the user’s display and preferences.
  ///
  /// ## Parameters
  ///
  /// - [displayName]: The display name to use for the profile.
  ///
  /// - [bio]: The account bio.
  ///
  /// - [discoverable]: Whether the account should be shown in the profile
  ///                   directory.
  ///
  /// - [bot]: Whether the account has a bot flag.
  ///
  /// - [locked]: Whether manual approval of follow requests is required.
  ///
  /// - [defaultSettings]: Default settings for account.
  ///
  /// - [profileMeta]: Profile metadata name and value.
  ///                  By default, max 4 fields and 255 characters per
  ///                  value.
  ///
  /// ## Endpoint Url
  ///
  /// - PATCH https://mastodon.example/api/v1/accounts/update_credentials HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - read:accounts
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/accounts/#verify_credentials
  Future<MastodonResponse<Account>> updateAccount({
    String? displayName,
    String? bio,
    bool? discoverable,
    bool? bot,
    bool? locked,
    AccountDefaultSettingsParam? defaultSettings,
    List<AccountProfileMetaParam>? profileMeta,
  });

  /// Update the user’s avatar image.
  ///
  /// ## Parameters
  ///
  /// - [file]: File image to update avatar.
  ///
  /// ## Endpoint Url
  ///
  /// - PATCH https://mastodon.example/api/v1/accounts/update_credentials HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - read:accounts
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/accounts/#verify_credentials
  Future<MastodonResponse<Account>> updateAvatarImage({
    required File file,
  });

  /// Update the user’s header image.
  ///
  /// ## Parameters
  ///
  /// - [file]: File image to update header.
  ///
  /// ## Endpoint Url
  ///
  /// - PATCH https://mastodon.example/api/v1/accounts/update_credentials HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - read:accounts
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/accounts/#verify_credentials
  Future<MastodonResponse<Account>> updateHeaderImage({
    required File file,
  });

  /// View information about a profile.
  ///
  /// ## Parameters
  ///
  /// - [accountId]: The ID of the Account in the database.
  ///
  /// ## Endpoint Url
  ///
  /// - GET https://mastodon.example/api/v1/accounts/:id HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - Anonymous
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - read:accounts
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/accounts/#get
  Future<MastodonResponse<Account>> lookupById({
    required String accountId,
  });

  /// Statuses posted to the given account.
  ///
  /// ## Parameters
  ///
  /// - [accountId]: The ID of the Account in the database.
  ///
  /// - [maxStatusId]: Return results older than this ID.
  ///
  /// - [minStatusId]: Return results immediately newer than this ID.
  ///
  /// - [sinceStatusId]: Return results newer than this ID.
  ///
  /// - [tagged]: Filter for statuses using a specific hashtag.
  ///
  /// - [limit]: Maximum number of results to return. Default: 20.
  ///
  /// - [excludeReblogs]: Whether to filter out boosts from the response.
  ///
  /// ## Endpoint Url
  ///
  /// - GET https://mastodon.example/api/v1/accounts/:id/statuses HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - Anonymous
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - read:statuses
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/accounts/#statuses
  Future<MastodonResponse<List<Status>>> lookupStatuses({
    required String accountId,
    String? maxStatusId,
    String? minStatusId,
    String? sinceStatusId,
    String? tagged,
    int? limit,
    bool? excludeReblogs,
  });
}

class _AccountsV1Service extends BaseService implements AccountsV1Service {
  /// Returns the new instance of [_AccountsV1Service].
  _AccountsV1Service({
    required super.instance,
    required super.context,
  });

  @override
  Future<MastodonResponse<Token>> createAccount({
    required String username,
    required String email,
    required String password,
    required bool agreement,
    required String locale,
    String? reason,
  }) async =>
      super.transformSingleDataResponse(
        await super.post(
          UserContext.oauth2Only,
          '/api/v1/accounts',
          body: {
            'username': username,
            'email': email,
            'password': password,
            'agreement': agreement,
            'locale': locale,
            'reason': reason,
          },
          checkUnprocessableEntity: true,
        ),
        dataBuilder: Token.fromJson,
      );

  @override
  Future<MastodonResponse<Account>> verifyAccountCredentials({
    required String bearerToken,
  }) async =>
      super.transformSingleDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/api/v1/accounts/verify_credentials',
          headers: {
            'Authorization': 'Bearer $bearerToken',
          },
        ),
        dataBuilder: Account.fromJson,
      );

  @override
  Future<MastodonResponse<Account>> updateAccount({
    String? displayName,
    String? bio,
    bool? discoverable,
    bool? bot,
    bool? locked,
    AccountDefaultSettingsParam? defaultSettings,
    List<AccountProfileMetaParam>? profileMeta,
  }) async =>
      super.transformSingleDataResponse(
        await super.patch(
          UserContext.oauth2Only,
          '/api/v1/accounts/update_credentials',
          body: {
            'display_name': displayName,
            'note': bio,
            'discoverable': discoverable,
            'bot': bot,
            'locked': locked,
            'source': {
              'privacy': defaultSettings?.privacy,
              'sensitive': defaultSettings?.sensitive,
              'language': defaultSettings?.language,
            },
            'fields_attributes': profileMeta
                ?.map(
                  (e) => {
                    'name': e.name,
                    'value': e.value,
                  },
                )
                .toList(),
          },
        ),
        dataBuilder: Account.fromJson,
      );

  @override
  Future<MastodonResponse<Account>> updateAvatarImage({
    required File file,
  }) async =>
      super.transformSingleDataResponse(
        await super.patchMultipart(
          UserContext.oauth2Only,
          '/api/v1/accounts/update_credentials',
          files: [
            MultipartFile.fromBytes(
              'avatar',
              file.readAsBytesSync(),
              filename: file.path,
            ),
          ],
        ),
        dataBuilder: Account.fromJson,
      );

  @override
  Future<MastodonResponse<Account>> updateHeaderImage({
    required File file,
  }) async =>
      super.transformSingleDataResponse(
        await super.patchMultipart(
          UserContext.oauth2Only,
          '/api/v1/accounts/update_credentials',
          files: [
            MultipartFile.fromBytes(
              'avatar',
              file.readAsBytesSync(),
              filename: file.path,
            ),
          ],
        ),
        dataBuilder: Account.fromJson,
      );

  @override
  Future<MastodonResponse<Account>> lookupById({
    required String accountId,
  }) async =>
      super.transformSingleDataResponse(
        await super.get(
          UserContext.oauth2OrAnonymous,
          '/api/v1/accounts/$accountId',
        ),
        dataBuilder: Account.fromJson,
      );

  @override
  Future<MastodonResponse<List<Status>>> lookupStatuses({
    required String accountId,
    String? maxStatusId,
    String? minStatusId,
    String? sinceStatusId,
    String? tagged,
    int? limit,
    bool? excludeReblogs,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2OrAnonymous,
          '/api/v1/accounts/$accountId/statuses',
          queryParameters: {
            'max_id': maxStatusId,
            'min_id': minStatusId,
            'since_id': sinceStatusId,
            'tagged': tagged,
            'limit': limit,
            'exclude_reblogs': excludeReblogs,
          },
        ),
        dataBuilder: Status.fromJson,
      );
}
