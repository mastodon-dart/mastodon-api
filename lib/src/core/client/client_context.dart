// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:async';

// Package imports:
import 'package:http/http.dart' as http;
import 'package:universal_io/io.dart';

// Project imports:
import '../config/retry_config.dart';
import 'client.dart';
import 'oauth2_client.dart';
import 'retry_policy.dart';
import 'stream_request.dart';

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

  Future<http.Response> get(Uri uri);

  Future<http.Response> post(
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
  });

  Future<http.Response> postMultipart(
    Uri uri, {
    List<http.MultipartFile> files = const [],
  });

  Future<http.Response> delete(
    Uri uri,
  );

  Future<http.Response> put(
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
  });

  Future<http.StreamedResponse> getStream(
    StreamRequest request,
  );
}

class _ClientContext implements ClientContext {
  _ClientContext({
    required String bearerToken,
    required this.timeout,
    RetryConfig? retryConfig,
  })  : _client = OAuth2Client(bearerToken: bearerToken),
        _retryPolicy = RetryPolicy(retryConfig);

  final OAuth2Client _client;

  /// The policy of retry.
  final RetryPolicy _retryPolicy;

  /// The timeout
  final Duration timeout;

  @override
  Future<http.Response> get(Uri uri) async =>
      await _challengeWithRetryIfNecessary(
        _client,
        (client) async => await client.get(uri, timeout: timeout),
      );

  @override
  Future<http.StreamedResponse> getStream(
    StreamRequest request,
  ) async =>
      await _challengeWithRetryIfNecessary(
        _client,
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
    Uri uri, {
    Map<String, String> headers = const {},
    body,
  }) async =>
      await _challengeWithRetryIfNecessary(
        _client,
        (client) async => await client.post(
          uri,
          headers: headers,
          body: body,
          timeout: timeout,
        ),
      );

  @override
  Future<http.Response> postMultipart(
    Uri uri, {
    List<http.MultipartFile> files = const [],
  }) async =>
      await _challengeWithRetryIfNecessary(
        _client,
        (client) async => await client.postMultipart(
          http.MultipartRequest('POST', uri),
          files: files,
          timeout: timeout,
        ),
      );

  @override
  Future<http.Response> delete(
    Uri uri,
  ) async =>
      await _challengeWithRetryIfNecessary(
        _client,
        (client) async => await client.delete(uri, timeout: timeout),
      );

  @override
  Future<http.Response> put(
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
  }) async =>
      await _challengeWithRetryIfNecessary(
        _client,
        (client) async => await client.put(
          uri,
          headers: headers,
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
      retryCount: ++retryCount,
    );
  }
}
