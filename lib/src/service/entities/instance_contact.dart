// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'account.dart';

part 'instance_contact.freezed.dart';
part 'instance_contact.g.dart';

@freezed
class InstanceContact with _$InstanceContact {
  @JsonSerializable(includeIfNull: false)
  const factory InstanceContact({
    /// An email address that can be messaged regarding inquiries or issues.
    required String email,

    /// An account that can be contacted natively over the network regarding
    /// inquiries or issues.
    required Account account,
  }) = _InstanceContact;

  factory InstanceContact.fromJson(Map<String, Object?> json) =>
      _$InstanceContactFromJson(json);
}
