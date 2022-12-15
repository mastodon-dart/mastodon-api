// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import '../exception/unauthorized_exception.dart';
import 'anonymous_client.dart';
import 'client.dart';
import 'oauth2_client.dart';
import 'user_context.dart';

abstract class ClientResolver {
  /// Returns the new instance of [ClientResolver].
  factory ClientResolver(
    final AnonymousClient anonymousClient,
    final OAuth2Client? oauth2Client,
  ) =>
      _ClientResolver(
        anonymousClient,
        oauth2Client,
      );

  /// Returns resolved http client.
  Client execute(UserContext userContext);
}

class _ClientResolver implements ClientResolver {
  /// Returns the new instance of [_ClientResolver].
  const _ClientResolver(this.anonymousClient, this.oauth2Client);

  /// The anonymous client
  final AnonymousClient anonymousClient;

  /// The OAuth 2.0 client
  final OAuth2Client? oauth2Client;

  @override
  Client execute(UserContext userContext) =>
      _shouldUseAnonymousClient(userContext) ? anonymousClient : oauth2Client!;

  /// Returns true if this context should use anonymous client, otherwise
  /// false.
  bool _shouldUseAnonymousClient(final UserContext userContext) {
    if (userContext == UserContext.oauth2Only && oauth2Client == null) {
      throw UnauthorizedException(
        'This endpoint that can only be accessed with OAuth 2.0, '
        'but no access token is specified.',
      );
    }

    if (userContext == UserContext.anonymousOnly) {
      return true;
    }

    return oauth2Client == null;
  }
}
