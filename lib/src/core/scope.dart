// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

enum Scope {
  /// `read`
  read('read'),

  /// `write`
  write('write'),

  /// `follow`
  follow('follow');

  /// The value
  final String value;

  const Scope(this.value);
}
