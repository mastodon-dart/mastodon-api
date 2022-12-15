// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'poll_option.freezed.dart';
part 'poll_option.g.dart';

@freezed
class PollOption with _$PollOption {
  const factory PollOption({
    /// The title of this option.
    required String title,

    /// The count of this option.
    required int votesCount,
  }) = _PollOption;

  factory PollOption.fromJson(Map<String, Object?> json) =>
      _$PollOptionFromJson(json);
}
