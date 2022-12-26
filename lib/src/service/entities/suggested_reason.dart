// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/serializable.dart';

enum SuggestedReason implements Serializable {
  /// This account was manually recommended by your administration team.
  staff('staff'),

  /// You have interacted with this account previously.
  @JsonValue('past_interactions')
  pastInteractions('past_interactions'),

  /// This account has many reblogs, favourites, and active local followers
  /// within the last 30 days.
  global('global');

  @override
  final String value;

  const SuggestedReason(this.value);
}
