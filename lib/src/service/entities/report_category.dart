// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import '../../core/serializable.dart';

enum ReportCategory implements Serializable {
  /// `spam`
  spam,

  /// `violation`
  violation,

  /// `other`
  other;

  @override
  String get value => name;

  const ReportCategory();
}
