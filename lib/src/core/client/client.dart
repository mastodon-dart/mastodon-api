// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:http/http.dart' as http;

abstract class Client {
  /// Returns the new instance of [Client].
  const Client();

  Future<http.Response> get(
    Uri uri, {
    required Duration timeout,
    Map<String, String> headers,
  });

  Future<http.StreamedResponse> getStream(
    http.BaseRequest request, {
    Map<String, String> headers = const {},
    required Duration timeout,
  });

  Future<http.Response> post(
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
    required Duration timeout,
  });

  Future<http.Response> sendMultipart(
    http.MultipartRequest request, {
    List<http.MultipartFile> files = const [],
    required Map<String, String> body,
    required Duration timeout,
  });

  Future<http.Response> delete(
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
    required Duration timeout,
  });

  Future<http.Response> put(
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
    required Duration timeout,
  });

  Future<http.Response> patch(
    Uri uri, {
    Map<String, String> headers = const {},
    dynamic body,
    required Duration timeout,
  });
}
