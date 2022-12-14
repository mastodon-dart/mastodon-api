// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

class AccountProfileMetaParam {
  /// Returns the new instance of [AccountProfileMetaParam].
  const AccountProfileMetaParam({
    required this.name,
    required this.value,
  });

  /// The name of this meta.
  final String name;

  /// The value of this meta,
  final String value;
}
