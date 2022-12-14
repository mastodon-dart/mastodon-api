// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:async';
import 'dart:convert';

// Package imports:
import 'package:http/http.dart';

// Project imports:
import '../core/client/client_context.dart';
import '../core/client/stream_response.dart';
import '../core/client/user_context.dart';
import '../core/exception/data_not_found_exception.dart';
import '../core/exception/mastodon_exception.dart';
import '../core/exception/rate_limit_exceeded_exception.dart';
import '../core/exception/unauthorized_exception.dart';
import '../core/service_helper.dart';
import '../core/util/json_utils.dart';
import 'entities/rate_limit.dart';
import 'response/mastodon_response.dart';

/// The callback function for building data object from response.
typedef DataBuilder<D> = D Function(Map<String, Object?> json);

abstract class _Service {
  Future<Response> get(
    UserContext userContext,
    String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
  });

  Future<StreamResponse> getStream(
    UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
  });

  Future<Response> post(
    UserContext userContext,
    String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
    Map<String, String> body = const {},
  });

  Future<Response> delete(
    UserContext userContext,
    String unencodedPath,
  );

  Future<Response> put(
    UserContext userContext,
    String unencodedPath, {
    Map<String, String> body = const {},
  });

  Future<Response> patch(
    UserContext userContext,
    String unencodedPath, {
    Map<String, String> body = const {},
  });

  Future<Response> patchMultipart(
    final UserContext userContext,
    final String unencodedPath, {
    List<MultipartFile> files = const [],
    bool checkUnprocessableEntity = false,
  });

  MastodonResponse<D> transformSingleDataResponse<D>(
    Response response, {
    required DataBuilder<D> dataBuilder,
  });

  MastodonResponse<List<D>> transformMultiDataResponse<D>(
    Response response, {
    required DataBuilder<D> dataBuilder,
  });

  MastodonResponse<List<D>> transformMultiRawDataResponse<D>(
    Response response,
  );

  MastodonResponse<bool> evaluateResponse(final Response response);
}

abstract class BaseService implements _Service {
  /// Returns the new instance of [BaseService].
  BaseService({
    required String instance,
    required ClientContext context,
  }) : _helper = ServiceHelper(
          authority: instance,
          context: context,
        );

  final ServiceHelper _helper;

  final RateLimitConverter rateLimitConverter = const RateLimitConverter();

  @override
  Future<Response> get(
    UserContext userContext,
    final String unencodedPath, {
    Map<String, String> headers = const {},
    Map<String, dynamic> queryParameters = const {},
  }) async =>
      await _helper.get(
        userContext,
        unencodedPath,
        queryParameters: queryParameters,
        validate: (response) {
          _checkGetResponse(response, response.body);

          return response;
        },
        headers: headers,
      );

  @override
  Future<StreamResponse> getStream(
    UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
  }) async =>
      await _helper.getStream(
        userContext,
        unencodedPath,
        queryParameters: queryParameters,
        validate: (response, event) {
          _checkGetResponse(response, event);

          return jsonDecode(event);
        },
      );

  @override
  Future<Response> post(
    UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
    dynamic body = const {},
    bool checkEntity = false,
  }) async =>
      await _helper.post(
        userContext,
        unencodedPath,
        queryParameters: queryParameters,
        body: body,
        validate: ((response) => checkResponse(
              response,
              checkEntity,
            )),
      );

  @override
  Future<Response> delete(
    UserContext userContext,
    final String unencodedPath, {
    bool checkUnprocessableEntity = false,
  }) async =>
      await _helper.delete(
        userContext,
        unencodedPath,
        validate: ((response) => checkResponse(
              response,
              checkUnprocessableEntity,
            )),
      );

  @override
  Future<Response> put(
    UserContext userContext,
    final String unencodedPath, {
    dynamic body = const {},
    bool checkUnprocessableEntity = false,
  }) async =>
      await _helper.put(
        userContext,
        unencodedPath,
        body: body,
        validate: ((response) => checkResponse(
              response,
              checkUnprocessableEntity,
            )),
      );

  @override
  Future<Response> patch(
    UserContext userContext,
    final String unencodedPath, {
    dynamic body = const {},
    bool checkUnprocessableEntity = false,
  }) async =>
      await _helper.patch(
        userContext,
        unencodedPath,
        body: body,
        validate: ((response) => checkResponse(
              response,
              checkUnprocessableEntity,
            )),
      );

  @override
  Future<Response> patchMultipart(
    final UserContext userContext,
    final String unencodedPath, {
    List<MultipartFile> files = const [],
    bool checkUnprocessableEntity = false,
  }) async =>
      await _helper.patchMultipart(
        userContext,
        unencodedPath,
        files: files,
        validate: ((response) => checkResponse(
              response,
              checkUnprocessableEntity,
            )),
      );

  @override
  MastodonResponse<D> transformSingleDataResponse<D>(
    Response response, {
    required DataBuilder<D> dataBuilder,
  }) =>
      MastodonResponse(
        rateLimit: RateLimit.fromJson(
          rateLimitConverter.convert(response.headers),
        ),
        data: dataBuilder(
          jsonDecode(response.body),
        ),
      );

  @override
  MastodonResponse<List<D>> transformMultiDataResponse<D>(
    Response response, {
    required DataBuilder<D> dataBuilder,
  }) {
    final json = jsonDecode(response.body);

    return MastodonResponse(
      rateLimit: RateLimit.fromJson(
        rateLimitConverter.convert(response.headers),
      ),
      data: json.isNotEmpty
          ? json.map<D>((json) => dataBuilder(json)).toList()
          : [],
    );
  }

  @override
  MastodonResponse<List<D>> transformMultiRawDataResponse<D>(
    Response response,
  ) {
    final json = jsonDecode(response.body);

    return MastodonResponse(
      rateLimit: RateLimit.fromJson(
        rateLimitConverter.convert(response.headers),
      ),
      data: json.isNotEmpty ? (json as List).map<D>((e) => e).toList() : [],
    );
  }

  @override
  MastodonResponse<bool> evaluateResponse(final Response response) =>
      MastodonResponse(
        rateLimit: RateLimit.fromJson(
          rateLimitConverter.convert(response.headers),
        ),
        data: _evaluateResponse(response),
      );

  bool _evaluateResponse(final Response response) {
    if (response.statusCode == 204) {
      //! 204: No Content.
      return true;
    }

    if (response.statusCode == 200) {
      //! Okay, it's succeeded.
      return true;
    }

    return false;
  }

  Response checkResponse(
    final Response response,
    final bool checkEntity,
  ) {
    if (response.statusCode == 401) {
      throw UnauthorizedException(
        'The specified access token is invalid.',
        response,
      );
    }

    if (response.statusCode == 429) {
      throw RateLimitExceededException('Rate limit exceeded.', response);
    }

    if (checkEntity) {
      if (400 <= response.statusCode && response.statusCode < 500) {
        throw MastodonException(
          'Required parameter is missing or improperly formatted.',
          response,
        );
      }
    }

    if (response.statusCode == 204) {
      //! 204: No Content.
      return response;
    }

    if (response.statusCode == 200 && response.body.isEmpty) {
      //! No JSON in response but okay, it's succeeded.
      return response;
    }

    tryJsonDecode(response, response.body);

    return response;
  }

  void _checkGetResponse(
    final BaseResponse response,
    final String event,
  ) {
    if (response.statusCode == 401) {
      throw UnauthorizedException(
        'The specified access token is invalid.',
        response,
      );
    }

    if (response.statusCode == 403) {
      throw MastodonException(
        'Your request is forbidden.',
        response,
      );
    }

    if (response.statusCode == 404) {
      throw DataNotFoundException(
        'There is no data associated with request.',
        response,
      );
    }

    if (response.statusCode == 429) {
      throw RateLimitExceededException('Rate limit exceeded.', response);
    }

    tryJsonDecode(response, event);
  }
}

class RateLimitConverter {
  /// Returns the new instance of [RateLimitConverter].
  const RateLimitConverter();

  Map<String, dynamic> convert(final Map<String, String> input) => {
        //! Although it rarely occurs, there is a case where the header does not
        //! contain rate limiting information.
        'x-ratelimit-limit': _getInt(input, 'x-ratelimit-limit'),
        'x-ratelimit-remaining': _getInt(input, 'x-ratelimit-remaining'),
        'x-ratelimit-reset': _getDateTimeString(input, 'x-ratelimit-reset'),
      };

  int _getInt(final Map<String, String> input, final String key) =>
      input.containsKey(key) ? int.parse(input[key]!) : 0;

  String _getDateTimeString(final Map<String, String> input, final String key) {
    if (!input.containsKey(key)) {
      return DateTime.fromMillisecondsSinceEpoch(0).toIso8601String();
    }

    return DateTime.parse(input[key]!).toIso8601String();
  }
}
