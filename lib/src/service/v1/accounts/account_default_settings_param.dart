// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import '../../../core/language.dart';
import 'post_privacy.dart';

class AccountDefaultSettingsParam {
  /// Returns the new instance of [AccountDefaultSettingsParam].
  const AccountDefaultSettingsParam({
    this.privacy,
    this.sensitive,
    required this.language,
  });

  /// Default post privacy for authored statuses.
  final PostPrivacy? privacy;

  /// Whether to mark authored statuses as sensitive by default.
  final bool? sensitive;

  /// Default language to use for authored statuses (ISO 6391)
  final Language language;
}
