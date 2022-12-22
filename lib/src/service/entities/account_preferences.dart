// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/language.dart';
import '../../core/visibility.dart';
import 'display_media_setting.dart';

part 'account_preferences.freezed.dart';
part 'account_preferences.g.dart';

@freezed
class AccountPreferences with _$AccountPreferences {
  @JsonSerializable(includeIfNull: false)
  const factory AccountPreferences({
    /// `posting:default:visibility`
    @JsonKey(name: 'posting:default:visibility')
        required Visibility defaultVisibility,

    /// `posting:default:sensitive`
    @JsonKey(name: 'posting:default:sensitive')
        required bool isDefaultSensitive,

    /// `posting:default:language`
    @JsonKey(name: 'posting:default:language')
        required Language defaultLanguage,

    /// `reading:expand:media`
    @JsonKey(name: 'reading:expand:media')
        required DisplayMediaSetting expandMediaSetting,

    /// `reading:expand:spoilers`
    @JsonKey(name: 'reading:expand:spoilers') required bool hasExpandSpoilers,
  }) = _AccountPreferences;

  factory AccountPreferences.fromJson(Map<String, Object?> json) =>
      _$AccountPreferencesFromJson(json);
}
