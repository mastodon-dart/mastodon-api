// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:http/http.dart' as http;
import 'package:universal_io/io.dart';

// 🌎 Project imports:
import '../config/retry_config.dart';
import 'anonymous_client.dart';
import 'client.dart';
import 'client_resolver.dart';
import 'oauth2_client.dart';
import 'retry_policy.dart';
import 'stream_request.dart';
import 'user_context.dart';

abstract class ClientContext {
  /// Returns the new instance of [ClientContext].
  factory ClientContext({
    required String bearerToken,
    required Duration timeout,
    RetryConfig? retryConfig,
  }) =>
      _ClientContext(
        bearerToken: bearerToken,
        timeout: timeout,
        retryConfig: retryConfig,
      );

  Future<http.Response> get(
    UserContext userContext,
    Uri uri, {
    Map<String, String> headers = const {},
  });

  Future<http.Response> post(
    UserContext userContext,
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
  });

  Future<http.Response> postMultipart(
    UserContext userContext,
    Uri uri, {
    List<http.MultipartFile> files = const [],
    required Map<String, String> body,
  });

  Future<http.Response> putMultipart(
    UserContext userContext,
    Uri uri, {
    List<http.MultipartFile> files = const [],
    required Map<String, String> body,
  });

  Future<http.Response> delete(
    UserContext userContext,
    Uri uri, {
    dynamic body,
  });

  Future<http.Response> put(
    UserContext userContext,
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
  });

  Future<http.Response> patch(
    UserContext userContext,
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
  });

  Future<http.Response> patchMultipart(
    UserContext userContext,
    Uri uri, {
    List<http.MultipartFile> files = const [],
    required dynamic body,
  });

  Future<http.StreamedResponse> getStream(
    UserContext userContext,
    StreamRequest request,
  );
}

class _ClientContext implements ClientContext {
  _ClientContext({
    required String bearerToken,
    required this.timeout,
    RetryConfig? retryConfig,
  })  : _clientResolver = ClientResolver(
          AnonymousClient(),
          bearerToken.isNotEmpty
              ? OAuth2Client(bearerToken: bearerToken)
              : null,
        ),
        _retryPolicy = RetryPolicy(retryConfig);

  // The resolver of clients
  final ClientResolver _clientResolver;

  /// The policy of retry.
  final RetryPolicy _retryPolicy;

  /// The timeout
  final Duration timeout;

  @override
  Future<http.Response> get(
    UserContext userContext,
    Uri uri, {
    Map<String, String> headers = const {},
  }) async =>
      await _challengeWithRetryIfNecessary(
        _clientResolver.execute(userContext),
        (client) async => await client.get(
          uri,
          timeout: timeout,
          headers: headers,
        ),
      );

  @override
  Future<http.StreamedResponse> getStream(
    UserContext userContext,
    StreamRequest request,
  ) async =>
      await _challengeWithRetryIfNecessary(
        _clientResolver.execute(userContext),
        (client) async => await client.getStream(
          //! A new BaseRequest must be generated when the request
          //! to retrieve the Stream is sent again.
          http.Request(
            request.method,
            request.uri,
          ),
          timeout: timeout,
        ),
      );

  @override
  Future<http.Response> post(
    UserContext userContext,
    Uri uri, {
    Map<String, String> headers = const {},
    body,
  }) async =>
      await _challengeWithRetryIfNecessary(
        _clientResolver.execute(userContext),
        (client) async => await client.post(
          uri,
          headers: headers,
          body: body,
          timeout: timeout,
        ),
      );

  @override
  Future<http.Response> postMultipart(
    UserContext userContext,
    Uri uri, {
    List<http.MultipartFile> files = const [],
    required Map<String, String> body,
  }) async =>
      await _challengeWithRetryIfNecessary(
        _clientResolver.execute(userContext),
        (client) async => await client.sendMultipart(
          http.MultipartRequest('POST', uri),
          files: files,
          body: body,
          timeout: timeout,
        ),
      );

  @override
  Future<http.Response> putMultipart(
    UserContext userContext,
    Uri uri, {
    List<http.MultipartFile> files = const [],
    required Map<String, String> body,
  }) async =>
      await _challengeWithRetryIfNecessary(
        _clientResolver.execute(userContext),
        (client) async => await client.sendMultipart(
          http.MultipartRequest('PUT', uri),
          files: files,
          body: body,
          timeout: timeout,
        ),
      );
  @override
  Future<http.Response> delete(
    UserContext userContext,
    Uri uri, {
    dynamic body,
  }) async =>
      await _challengeWithRetryIfNecessary(
        _clientResolver.execute(userContext),
        (client) async => await client.delete(
          uri,
          body: body,
          timeout: timeout,
        ),
      );

  @override
  Future<http.Response> put(
    UserContext userContext,
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
  }) async =>
      await _challengeWithRetryIfNecessary(
        _clientResolver.execute(userContext),
        (client) async => await client.put(
          uri,
          headers: headers,
          body: body,
          timeout: timeout,
        ),
      );

  @override
  Future<http.Response> patch(
    UserContext userContext,
    Uri uri, {
    Map<String, String> headers = const {},
    body,
  }) async =>
      await _challengeWithRetryIfNecessary(
        _clientResolver.execute(userContext),
        (client) async => await client.patch(
          uri,
          headers: headers,
          body: body,
          timeout: timeout,
        ),
      );

  @override
  Future<http.Response> patchMultipart(
    UserContext userContext,
    Uri uri, {
    List<http.MultipartFile> files = const [],
    required dynamic body,
  }) async =>
      await _challengeWithRetryIfNecessary(
        _clientResolver.execute(userContext),
        (client) async => await client.sendMultipart(
          http.MultipartRequest('PATCH', uri),
          files: files,
          body: body,
          timeout: timeout,
        ),
      );

  dynamic _challengeWithRetryIfNecessary(
    final Client client,
    final dynamic Function(Client client) challenge, {
    int retryCount = 0,
  }) async {
    try {
      final response = await challenge.call(client);

      if (response.statusCode == 500 || response.statusCode == 503) {
        if (_retryPolicy.shouldRetry(retryCount)) {
          return await _retry(client, challenge, retryCount: ++retryCount);
        }
      }

      return response;
    } on SocketException {
      if (_retryPolicy.shouldRetry(retryCount)) {
        return await _retry(client, challenge, retryCount: ++retryCount);
      }

      rethrow;
    } on TimeoutException {
      if (_retryPolicy.shouldRetry(retryCount)) {
        return await _retry(client, challenge, retryCount: ++retryCount);
      }

      rethrow;
    }
  }

  dynamic _retry(
    final Client client,
    final dynamic Function(Client client) challenge, {
    int retryCount = 0,
  }) async {
    await _retryPolicy.wait(retryCount);

    return await _challengeWithRetryIfNecessary(
      client,
      challenge,
      retryCount: retryCount,
    );
  }
}
