// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../core/convert/int_converter.dart';
import '../../core/convert/unix_timestamp_converter.dart';

part 'instance_activity.freezed.dart';
part 'instance_activity.g.dart';

@freezed
class InstanceActivity with _$InstanceActivity {
  @JsonSerializable(includeIfNull: false)
  const factory InstanceActivity({
    /// Midnight at the first day of the week.
    @UnixTimestampConverter() required DateTime week,

    /// The number of Statuses created since the week began.
    @JsonKey(name: 'statuses') @IntConverter() required int statusCount,

    /// The number of user logins since the week began.
    @JsonKey(name: 'logins') @IntConverter() required int loginCount,

    /// The number of user registrations since the week began.
    @JsonKey(name: 'registrations')
    @IntConverter()
        required int registrationCount,
  }) = _InstanceActivity;

  factory InstanceActivity.fromJson(Map<String, Object?> json) =>
      _$InstanceActivityFromJson(json);
}
