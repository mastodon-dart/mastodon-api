// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

import '../core/client/client_context.dart';
import '../core/client/stream_response.dart';
import '../core/exception/unauthorized_exception.dart';
import '../core/service_helper.dart';
import '../core/util/json_utils.dart';

abstract class _Service {
  Future<Response> get(
    String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
  });

  Future<StreamResponse> getStream(
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
  });

  Future<Response> post(
    String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
    Map<String, String> body = const {},
  });

  Future<Response> delete(
    String unencodedPath,
  );

  Future<Response> put(
    String unencodedPath, {
    Map<String, String> body = const {},
  });
}

abstract class BaseService implements _Service {
  /// Returns the new instance of [BaseService].
  BaseService({
    required String instance,
    required ClientContext context,
  }) : _helper = ServiceHelper(
          authority: '$instance/api',
          context: context,
        );

  final ServiceHelper _helper;

  final ResponseHeaderConverter headerConverter =
      const ResponseHeaderConverter();

  @override
  Future<Response> get(
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
  }) async =>
      await _helper.get(
        unencodedPath,
        queryParameters: queryParameters,
        validate: (response) {
          _checkGetResponse(response, response.body);

          return response;
        },
      );

  @override
  Future<StreamResponse> getStream(
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
    Map<String, dynamic> Function(
            StreamedResponse streamedResponse, String event)?
        validate,
  }) async =>
      await _helper.getStream(
        unencodedPath,
        queryParameters: queryParameters,
        validate: (response, event) {
          _checkGetResponse(response, event);

          final jsonBody = jsonDecode(event);

          return jsonBody;
        },
      );

  @override
  Future<Response> post(
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
    dynamic body = const {},
    Response Function(Response response)? validate,
  }) async =>
      await _helper.post(
        unencodedPath,
        queryParameters: queryParameters,
        body: body,
        validate: checkResponse,
      );

  @override
  Future<Response> delete(
    final String unencodedPath, {
    Response Function(Response response)? validate,
  }) async =>
      await _helper.delete(
        unencodedPath,
        validate: checkResponse,
      );

  @override
  Future<Response> put(
    final String unencodedPath, {
    dynamic body = const {},
    Response Function(Response response)? validate,
  }) async =>
      await _helper.put(
        unencodedPath,
        body: body,
        validate: checkResponse,
      );

  Response checkResponse(
    final Response response,
  ) {
    if (response.statusCode == 401) {
      throw UnauthorizedException(
        'The specified access token is invalid.',
        response,
      );
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

    tryJsonDecode(response, event);
  }
}

class ResponseHeaderConverter {
  const ResponseHeaderConverter();

  Map<String, dynamic> convert(final Map<String, String> input) => {
        //! Although it rarely occurs, there is a case where the header does not
        //! contain rate limiting information.
        'x-rate-limit-limit': _getInt(input, 'x-rate-limit-limit'),
        'x-rate-limit-remaining': _getInt(input, 'x-rate-limit-remaining'),
        'x-rate-limit-reset': _getDateTimeString(input, 'x-rate-limit-reset'),
      };

  int _getInt(final Map<String, String> input, final String key) =>
      input.containsKey(key) ? int.parse(input[key]!) : 0;

  String _getDateTimeString(final Map<String, String> input, final String key) {
    if (!input.containsKey(key)) {
      return DateTime.fromMillisecondsSinceEpoch(0).toString();
    }

    return DateTime.fromMillisecondsSinceEpoch(
      int.parse(input[key]!) * 1000,
    ).toString();
  }
}
