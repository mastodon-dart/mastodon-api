// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'extended_description.freezed.dart';
part 'extended_description.g.dart';

@freezed
class ExtendedDescription with _$ExtendedDescription {
  const factory ExtendedDescription({
    /// The rendered HTML content of the extended description.
    required String content,

    /// A timestamp of when the extended description was last updated.
    required DateTime updatedAt,
  }) = _ExtendedDescription;

  factory ExtendedDescription.fromJson(Map<String, Object?> json) =>
      _$ExtendedDescriptionFromJson(json);
}
