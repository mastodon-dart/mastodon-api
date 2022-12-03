// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../core/client/client_context.dart';
import 'v1/apps/apps_v1_service.dart';
import 'v1/instance/instance_v1_service.dart';
import 'v1/statuses/statuses_v1_service.dart';
import 'v1/timelines/timelines_v1_service.dart';

/// The class represents the Mastodon v1 services.
abstract class MastodonV1Service {
  /// Returns the new instance of [MastodonV1Service].
  factory MastodonV1Service({
    required String instance,
    required ClientContext context,
  }) =>
      _MastodonV1Service(
        instance: instance,
        context: context,
      );

  /// Returns the instance service.
  InstanceV1Service get instance;

  /// Returns the apps service.
  AppsV1Service get apps;

  /// Returns the statuses service.
  StatusesV1Service get statuses;

  /// Returns the timelines service.
  TimelinesV1Service get timelines;
}

class _MastodonV1Service implements MastodonV1Service {
  /// Returns the new instance of [_MastodonV1Service].
  _MastodonV1Service({
    required String instance,
    required ClientContext context,
  })  : instance = InstanceV1Service(instance: instance, context: context),
        apps = AppsV1Service(instance: instance, context: context),
        statuses = StatusesV1Service(instance: instance, context: context),
        timelines = TimelinesV1Service(instance: instance, context: context);

  @override
  final InstanceV1Service instance;

  @override
  final AppsV1Service apps;

  @override
  final StatusesV1Service statuses;

  @override
  final TimelinesV1Service timelines;
}
