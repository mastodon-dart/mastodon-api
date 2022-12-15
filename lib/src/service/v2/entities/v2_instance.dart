// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import '../../../core/language.dart';
import '../../entities/instance_contact.dart';
import '../../entities/instance_registrations.dart';
import '../../entities/instance_usage.dart';
import '../../entities/rule.dart';
import '../../entities/thumbnail.dart';
import 'v2_instance_configuration.dart';

part 'v2_instance.freezed.dart';
part 'v2_instance.g.dart';

@freezed
class V2Instance with _$V2Instance {
  @JsonSerializable(includeIfNull: false)
  const factory V2Instance({
    /// The domain name of the instance.
    required String domain,

    /// The title of the website.
    required String title,

    /// Admin-defined description of the Mastodon site.
    required String description,

    /// Usage data for this instance.
    required InstanceUsage usage,

    /// The URL for the source code of the software running on this instance,
    /// in keeping with AGPL license requirements.
    required String sourceUrl,

    /// The version of Mastodon installed on the instance.
    required String version,

    /// Primary languages of the website and its staff.
    required List<Language> languages,

    /// Links to scaled resolution images, for high DPI screens.
    Thumbnail? thumbnail,

    /// Configured values and limits for this website.
    V2InstanceConfiguration? configuration,

    /// Information about registering for this website.
    required InstanceRegistrations registrations,

    /// Hints related to contacting a representative of the website.
    required InstanceContact contact,

    /// An itemized list of rules for this website.
    List<Rule>? rules,
  }) = _V2Instance;

  factory V2Instance.fromJson(Map<String, Object?> json) =>
      _$V2InstanceFromJson(json);
}
