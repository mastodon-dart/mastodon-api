// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🎯 Dart imports:
import 'dart:convert';

// 📦 Package imports:
import 'package:http/http.dart' as http;

// 🌎 Project imports:
import 'client.dart';

class OAuth2Client extends Client {
  /// Returns the new instance of [OAuth2Client].
  const OAuth2Client({required String bearerToken})
      : _bearerToken = bearerToken;

  /// The token to authenticate OAuth 2.0
  final String _bearerToken;

  @override
  Future<http.Response> get(
    Uri uri, {
    required Duration timeout,
    Map<String, String> headers = const {},
  }) async =>
      await http
          .get(
            uri,
            headers: {'Authorization': 'Bearer $_bearerToken'}..addAll(headers),
          )
          .timeout(timeout);

  @override
  Future<http.StreamedResponse> getStream(
    http.BaseRequest request, {
    Map<String, String> headers = const {},
    required Duration timeout,
  }) async {
    request.headers.addAll(
      {'Authorization': 'Bearer $_bearerToken', ...headers},
    );

    return request.send().timeout(timeout);
  }

  @override
  Future<http.Response> post(
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
    required Duration timeout,
  }) async =>
      await http
          .post(
            uri,
            headers: {'Authorization': 'Bearer $_bearerToken'}..addAll(headers),
            body: body,
            encoding: utf8,
          )
          .timeout(timeout);

  @override
  Future<http.Response> sendMultipart(
    http.MultipartRequest request, {
    List<http.MultipartFile> files = const [],
    required Map<String, String> body,
    required Duration timeout,
  }) async {
    request.files.addAll(files);
    request.fields.addAll(body);
    request.headers.addAll({'Authorization': 'Bearer $_bearerToken'});

    return http.Response.fromStream(await request.send())
        .timeout(timeout)
        .then((response) {
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return response;
      } else {
        return Future.error(response);
      }
    });
  }

  @override
  Future<http.Response> delete(
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
    required Duration timeout,
  }) async =>
      await http
          .delete(
            uri,
            headers: {'Authorization': 'Bearer $_bearerToken'}..addAll(headers),
            body: body,
            encoding: utf8,
          )
          .timeout(timeout);

  @override
  Future<http.Response> put(
    Uri uri, {
    Map<String, String> headers = const {},
    body,
    required Duration timeout,
  }) async =>
      await http
          .put(
            uri,
            headers: {'Authorization': 'Bearer $_bearerToken'}..addAll(headers),
            body: body,
            encoding: utf8,
          )
          .timeout(timeout);

  @override
  Future<http.Response> patch(
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
    required Duration timeout,
  }) async =>
      await http
          .patch(
            uri,
            headers: {'Authorization': 'Bearer $_bearerToken'}..addAll(headers),
            body: body,
            encoding: utf8,
          )
          .timeout(timeout);
}
