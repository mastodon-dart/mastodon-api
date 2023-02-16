// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import '../../../core/serializable.dart';

enum InstanceAccountOrder implements Serializable {
  active('active'),
  newbie('new');

  @override
  final String value;

  const InstanceAccountOrder(this.value);
}
