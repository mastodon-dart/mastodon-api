// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import '../../../core/client/client_context.dart';
import '../../../core/client/user_context.dart';
import '../../base_service.dart';
import '../../entities/blocked_domain.dart';
import '../../entities/extended_description.dart';
import '../../entities/instance.dart';
import '../../entities/instance_activity.dart';
import '../../entities/rule.dart';
import '../../response/mastodon_response.dart';

abstract class InstanceV1Service {
  /// Returns the new instance of [InstanceV1Service].
  factory InstanceV1Service({
    required String instance,
    required ClientContext context,
  }) =>
      _InstanceV1Service(
        instance: instance,
        context: context,
      );

  /// Obtain general information about the server.
  ///
  /// ## Endpoint Url
  ///
  /// - GET https://mastodon.example/api/v1/instance HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - Anonymous
  /// - OAuth 2.0
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/instance/#v1
  @Deprecated('Still works, but officially deprecated. Use v2 endpoint instead')
  Future<MastodonResponse<Instance>> lookupInformation();

  /// Domains that this instance is aware of.
  ///
  /// ## Endpoint Url
  ///
  /// - GET https://mastodon.example/api/v1/instance/peers HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - Anonymous
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/instance/#peers
  Future<MastodonResponse<List<String>>> lookupConnectedDomains();

  /// Instance activity over the last 3 months, binned weekly.
  ///
  /// ## Endpoint Url
  ///
  /// - GET https://mastodon.example/api/v1/instance/activity HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - Anonymous
  /// - Oauth 2.0
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/instance/#activity
  Future<MastodonResponse<List<InstanceActivity>>> lookupWeeklyActivities();

  /// Rules that the users of this service should follow.
  ///
  /// ## Endpoint Url
  ///
  /// - GET https://mastodon.example/api/v1/instance/rules HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - Anonymous
  /// - Oauth 2.0
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/instance/#rules
  Future<MastodonResponse<List<Rule>>> lookupRules();

  /// Obtain a list of domains that have been blocked.
  ///
  /// ## Endpoint Url
  ///
  /// - GET https://mastodon.example/api/v1/instance/domain_block HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - Anonymous
  /// - Oauth 2.0
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/instance/#domain_blocks
  Future<MastodonResponse<List<BlockedDomain>>> lookupBlockedDomains();

  /// Obtain an extended description of this server
  ///
  /// ## Endpoint Url
  ///
  /// - GET https://mastodon.example/api/v1/example HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - Anonymous
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/instance/#extended_description
  Future<MastodonResponse<ExtendedDescription>> lookupExtendedDescription();
}

class _InstanceV1Service extends BaseService implements InstanceV1Service {
  /// Returns the new instance of [_InstanceV1Service].
  _InstanceV1Service({
    required super.instance,
    required super.context,
  });

  @override
  Future<MastodonResponse<Instance>> lookupInformation() async =>
      super.transformSingleDataResponse(
        await super.get(
          UserContext.oauth2OrAnonymous,
          '/api/v1/instance',
        ),
        dataBuilder: Instance.fromJson,
      );

  @override
  Future<MastodonResponse<List<String>>> lookupConnectedDomains() async =>
      super.transformMultiRawDataResponse<String>(
        await super.get(
          UserContext.anonymousOnly,
          '/api/v1/instance/peers',
        ),
      );

  @override
  Future<MastodonResponse<List<InstanceActivity>>>
      lookupWeeklyActivities() async => super.transformMultiDataResponse(
            await super.get(
              UserContext.oauth2OrAnonymous,
              '/api/v1/instance/activity',
            ),
            dataBuilder: InstanceActivity.fromJson,
          );

  @override
  Future<MastodonResponse<List<Rule>>> lookupRules() async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2OrAnonymous,
          '/api/v1/instance/rules',
        ),
        dataBuilder: Rule.fromJson,
      );

  @override
  Future<MastodonResponse<List<BlockedDomain>>> lookupBlockedDomains() async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2OrAnonymous,
          '/api/v1/instance/domain_block',
        ),
        dataBuilder: BlockedDomain.fromJson,
      );

  @override
  Future<MastodonResponse<ExtendedDescription>>
      lookupExtendedDescription() async => super.transformSingleDataResponse(
            await super.get(
              UserContext.anonymousOnly,
              '/api/v1/example',
            ),
            dataBuilder: ExtendedDescription.fromJson,
          );
}
