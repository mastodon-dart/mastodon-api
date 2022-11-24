// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'account.dart';
import 'status.dart';
import 'tag.dart';

part 'search.freezed.dart';
part 'search.g.dart';

@freezed
class Search with _$Search {
  @JsonSerializable(includeIfNull: false)
  const factory Search({
    /// [Account] objects related to search query.
    List<Account>? accounts,

    /// [Status] object related to search query.
    List<Status>? statuses,

    /// [Tag] object related to search query.
    List<Tag>? hashtags,
  }) = _Search;

  factory Search.fromJson(Map<String, Object?> json) => _$SearchFromJson(json);
}
