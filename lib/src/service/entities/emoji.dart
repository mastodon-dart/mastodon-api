// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'emoji.freezed.dart';
part 'emoji.g.dart';

@freezed
class Emoji with _$Emoji {
  @JsonSerializable(includeIfNull: false)
  const factory Emoji({
    /// The name of the custom emoji.
    @JsonKey(name: 'shortcode') required String code,

    /// A link to the custom emoji.
    required String url,

    /// A link to a static copy of the custom emoji.
    String? staticUrl,

    /// Whether this Emoji should be visible in the picker or unlisted.
    @JsonKey(name: 'visible_in_picker') required bool isVisibleInPicker,

    /// Used for sorting custom emoji in the picker.
    String? category,
  }) = _Emoji;

  factory Emoji.fromJson(Map<String, Object?> json) => _$EmojiFromJson(json);
}
