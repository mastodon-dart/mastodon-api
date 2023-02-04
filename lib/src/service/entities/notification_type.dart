// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/serializable.dart';

enum NotificationType implements Serializable {
  /// Someone mentioned you in their status
  mention('mention'),

  /// Someone you enabled notifications for has posted a status
  status('status'),

  /// Someone boosted one of your statuses
  reblog('reblog'),

  /// Someone followed you
  follow('follow'),

  /// Someone requested to follow you
  @JsonValue('follow_request')
  followRequest('follow_request'),

  /// Someone favourited one of your statuses
  favourite('favourite'),

  /// A poll you have voted in or created has ended
  poll('poll'),

  /// A status you interacted with has been edited
  update('update'),

  /// Someone signed up (optionally sent to admins)
  @JsonValue('admin.sign_up')
  adminSignUp('admin.sign_up'),

  /// A new report has been filed
  @JsonValue('admin.report')
  adminReport('admin.report');

  @override
  final String value;

  const NotificationType(this.value);
}
