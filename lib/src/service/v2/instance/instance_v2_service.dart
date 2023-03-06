// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import '../../../core/client/client_context.dart';
import '../../../core/client/user_context.dart';
import '../../base_service.dart';
import '../../response/mastodon_response.dart';
import '../entities/v2_instance.dart';

abstract class InstanceV2Service {
  /// Returns the new instance of [InstanceV2Service].
  factory InstanceV2Service({
    required String instance,
    required ClientContext context,
  }) =>
      _InstanceV2Service(
        instance: instance,
        context: context,
      );

  /// Obtain general information about the server.
  ///
  /// ## Endpoint Url
  ///
  /// - GET /api/v2/instance HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - Anonymous
  /// - OAuth 2.0
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/instance/#v2
  Future<MastodonResponse<V2Instance>> lookupInformation();
}

class _InstanceV2Service extends BaseService implements InstanceV2Service {
  /// Returns the new instance of [_InstanceV2Service].
  _InstanceV2Service({
    required super.instance,
    required super.context,
  });

  @override
  Future<MastodonResponse<V2Instance>> lookupInformation() async =>
      super.transformSingleDataResponse(
        await super.get(
          UserContext.oauth2OrAnonymous,
          '/api/v2/instance',
        ),
        dataBuilder: V2Instance.fromJson,
      );
}
