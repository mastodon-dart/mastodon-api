// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/serializable.dart';

enum DisplayMediaSetting implements Serializable {
  /// `default`
  @JsonValue('default')
  none('default'),

  /// `show_all`
  @JsonValue('show_all')
  showAll('show_all'),

  /// `hide_all`
  @JsonValue('hide_all')
  hideAll('hide_all');

  @override
  final String value;

  const DisplayMediaSetting(this.value);
}
