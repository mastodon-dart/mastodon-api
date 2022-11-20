// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../../core/client/client_context.dart';
import '../../core/client/user_context.dart';
import '../base_service.dart';
import '../entities/status.dart';
import '../response/mastodon_response.dart';

abstract class TimelinesService {
  /// Returns the new instance of [TimelinesService].
  factory TimelinesService({
    required String instance,
    required ClientContext context,
  }) =>
      _TimelinesService(
        instance: instance,
        context: context,
      );

  Future<MastodonResponse<List<Status>>> lookupStatuses();
}

class _TimelinesService extends BaseService implements TimelinesService {
  /// Returns the new instance of [_TimelinesService].
  _TimelinesService({
    required super.instance,
    required super.context,
  });

  @override
  Future<MastodonResponse<List<Status>>> lookupStatuses() async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2OrAnonymous,
          '/api/v1/timelines/public',
        ),
        dataBuilder: Status.fromJson,
      );
}
