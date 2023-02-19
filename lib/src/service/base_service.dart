// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🎯 Dart imports:
import 'dart:async';
import 'dart:convert';

// 📦 Package imports:
import 'package:http/http.dart';

// 🌎 Project imports:
import '../core/client/client_context.dart';
import '../core/client/stream_response.dart';
import '../core/client/user_context.dart';
import '../core/exception/data_not_found_exception.dart';
import '../core/exception/mastodon_exception.dart';
import '../core/exception/pending_exception.dart';
import '../core/exception/rate_limit_exceeded_exception.dart';
import '../core/exception/unauthorized_exception.dart';
import '../core/http_method.dart';
import '../core/http_status.dart';
import '../core/service_helper.dart';
import '../core/util/json_utils.dart';
import 'entities/empty.dart';
import 'entities/rate_limit.dart';
import 'response/mastodon_request.dart';
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

  Future<Response> postMultipart(
    final UserContext userContext,
    final String unencodedPath, {
    List<MultipartFile> files = const [],
    dynamic body,
  });

  Future<Response> putMultipart(
    final UserContext userContext,
    final String unencodedPath, {
    List<MultipartFile> files = const [],
    dynamic body,
  });

  Future<Response> patchMultipart(
    final UserContext userContext,
    final String unencodedPath, {
    List<MultipartFile> files = const [],
  });

  MastodonResponse<Empty> transformEmptyResponse(
    Response response,
  );

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
  }) async =>
      await _helper.post(
        userContext,
        unencodedPath,
        queryParameters: queryParameters,
        body: body,
        validate: checkResponse,
      );

  @override
  Future<Response> delete(
    UserContext userContext,
    final String unencodedPath, {
    dynamic body = const {},
  }) async =>
      await _helper.delete(
        userContext,
        unencodedPath,
        body: body,
        validate: checkResponse,
      );

  @override
  Future<Response> put(
    UserContext userContext,
    final String unencodedPath, {
    dynamic body = const {},
  }) async =>
      await _helper.put(
        userContext,
        unencodedPath,
        body: body,
        validate: checkResponse,
      );

  @override
  Future<Response> patch(
    UserContext userContext,
    final String unencodedPath, {
    dynamic body = const {},
  }) async =>
      await _helper.patch(
        userContext,
        unencodedPath,
        body: body,
        validate: checkResponse,
      );

  @override
  Future<Response> postMultipart(
    final UserContext userContext,
    final String unencodedPath, {
    List<MultipartFile> files = const [],
    dynamic body,
  }) async =>
      await _helper.postMultipart(
        userContext,
        unencodedPath,
        files: files,
        body: body,
        validate: checkResponse,
      );

  @override
  Future<Response> putMultipart(
    final UserContext userContext,
    final String unencodedPath, {
    List<MultipartFile> files = const [],
    dynamic body,
  }) async =>
      await _helper.putMultipart(
        userContext,
        unencodedPath,
        files: files,
        body: body,
        validate: checkResponse,
      );

  @override
  Future<Response> patchMultipart(
    final UserContext userContext,
    final String unencodedPath, {
    List<MultipartFile> files = const [],
    dynamic body,
  }) async =>
      await _helper.patchMultipart(
        userContext,
        unencodedPath,
        files: files,
        body: body,
        validate: checkResponse,
      );

  @override
  MastodonResponse<Empty> transformEmptyResponse(
    Response response,
  ) =>
      MastodonResponse(
        headers: response.headers,
        status: HttpStatus.valueOf(response.statusCode),
        request: MastodonRequest(
          method: HttpMethod.valueOf(response.request!.method),
          url: response.request!.url,
        ),
        rateLimit: RateLimit.fromJson(
          rateLimitConverter.convert(response.headers),
        ),
        data: const Empty(),
      );

  @override
  MastodonResponse<D> transformSingleDataResponse<D>(
    Response response, {
    required DataBuilder<D> dataBuilder,
  }) =>
      MastodonResponse(
        headers: response.headers,
        status: HttpStatus.valueOf(response.statusCode),
        request: MastodonRequest(
          method: HttpMethod.valueOf(response.request!.method),
          url: response.request!.url,
        ),
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
      headers: response.headers,
      status: HttpStatus.valueOf(response.statusCode),
      request: MastodonRequest(
        method: HttpMethod.valueOf(response.request!.method),
        url: response.request!.url,
      ),
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
      headers: response.headers,
      status: HttpStatus.valueOf(response.statusCode),
      request: MastodonRequest(
        method: HttpMethod.valueOf(response.request!.method),
        url: response.request!.url,
      ),
      rateLimit: RateLimit.fromJson(
        rateLimitConverter.convert(response.headers),
      ),
      data: json.isNotEmpty ? (json as List).map<D>((e) => e).toList() : [],
    );
  }

  Response checkResponse(
    final Response response,
  ) {
    if (HttpStatus.noContent.equalsByCode(response.statusCode)) {
      return response;
    }

    if (HttpStatus.ok.equalsByCode(response.statusCode) &&
        response.body.isEmpty) {
      //! No JSON in response but okay, it's succeeded.
      return response;
    }

    if (HttpStatus.unauthorized.equalsByCode(response.statusCode)) {
      throw UnauthorizedException(
        'The specified access token is invalid.',
        response,
      );
    }

    if (HttpStatus.notFound.equalsByCode(response.statusCode)) {
      throw DataNotFoundException(
        'There is no data associated with request.',
        response,
      );
    }

    if (HttpStatus.tooManyRequests.equalsByCode(response.statusCode)) {
      throw RateLimitExceededException(
        'Rate limit exceeded.',
        response,
      );
    }

    if (400 <= response.statusCode && response.statusCode < 500) {
      throw MastodonException(
        'Required parameter is missing or improperly formatted.',
        response,
      );
    }

    tryJsonDecode(response, response.body);

    return response;
  }

  void _checkGetResponse(
    final BaseResponse response,
    final String event,
  ) {
    if (HttpStatus.unauthorized.equalsByCode(response.statusCode)) {
      throw UnauthorizedException(
        'The specified access token is invalid.',
        response,
      );
    }

    if (HttpStatus.forbidden.equalsByCode(response.statusCode)) {
      throw MastodonException(
        'Your request is forbidden.',
        response,
      );
    }

    if (HttpStatus.notFound.equalsByCode(response.statusCode)) {
      throw DataNotFoundException(
        'There is no data associated with request.',
        response,
      );
    }

    if (HttpStatus.tooManyRequests.equalsByCode(response.statusCode)) {
      throw RateLimitExceededException('Rate limit exceeded.', response);
    }

    if (HttpStatus.partialContent.equalsByCode(response.statusCode)) {
      throw PendingException('Still being processed.', response);
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
      return DateTime.fromMillisecondsSinceEpoch(0).toLocal().toIso8601String();
    }

    return DateTime.parse(input[key]!).toLocal().toIso8601String();
  }
}
