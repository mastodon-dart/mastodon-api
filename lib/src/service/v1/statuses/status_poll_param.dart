// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

class StatusPollParam {
  /// Returns the new instance of [StatusPollParam].
  const StatusPollParam({
    required this.options,
    required this.expiresIn,
    this.multiple = false,
    this.hideTotals = false,
  });

  /// Possible answers to the poll.
  ///
  /// If provided, media_ids cannot be used, and [expiresIn] must be provided.
  final List<String> options;

  /// Duration that the poll should be open, in seconds.
  ///
  /// If provided, `mediaIds` cannot be used, and [options] must be provided.
  final Duration expiresIn;

  /// Allow multiple choices? Defaults to false.
  final bool multiple;

  /// Hide vote counts until the poll ends? Defaults to false.
  final bool hideTotals;
}
