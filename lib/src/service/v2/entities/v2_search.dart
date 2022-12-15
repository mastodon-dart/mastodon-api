// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../entities/account.dart';
import '../../entities/status.dart';
import '../../entities/tag.dart';

part 'v2_search.freezed.dart';
part 'v2_search.g.dart';

@freezed
class V2Search with _$V2Search {
  @JsonSerializable(includeIfNull: false)
  const factory V2Search({
    /// [Account] objects related to search query.
    List<Account>? accounts,

    /// [Status] object related to search query.
    List<Status>? statuses,

    /// [Tag] object related to search query.
    List<Tag>? hashtags,
  }) = _V2Search;

  factory V2Search.fromJson(Map<String, Object?> json) =>
      _$V2SearchFromJson(json);
}
