// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../core/language.dart';
import 'account.dart';
import 'instance_statistics.dart';

part 'instance.freezed.dart';
part 'instance.g.dart';

@freezed
class Instance with _$Instance {
  const factory Instance({
    /// The domain name of the instance.
    required String uri,

    /// The title of the website.
    required String title,

    /// Admin-defined description of the Mastodon site.
    required String description,

    /// A shorter description defined by the admin.
    required String shortDescription,

    /// An email that may be contacted for any inquiries.
    required String email,

    /// The version of Mastodon installed on the instance.
    required String version,

    /// Primary languages of the website and its staff.
    required List<Language> languages,

    /// Statistics about how much information the instance contains.
    @JsonKey(name: 'stats') required InstanceStatistics statistics,

    /// Banner image for the website.
    String? thumbnail,

    /// Whether registrations are enabled.
    @JsonKey(name: 'registrations') required bool isRegistrationsEnabled,

    /// Whether registrations require moderator approval.
    @JsonKey(name: 'approval_required ') required bool isApprovalRequired,

    /// Whether invites are enabled.
    @JsonKey(name: 'invites_enabled') required bool isInvitesEnabled,

    /// A user that can be contacted, as an alternative to email.
    Account? contactAccount,
  }) = _Instance;

  factory Instance.fromJson(Map<String, Object?> json) =>
      _$InstanceFromJson(json);
}
