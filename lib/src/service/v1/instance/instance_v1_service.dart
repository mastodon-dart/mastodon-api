// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import '../../../core/client/client_context.dart';
import '../../../core/client/user_context.dart';
import '../../base_service.dart';
import '../../entities/announcement.dart';
import '../../entities/blocked_domain.dart';
import '../../entities/extended_description.dart';
import '../../entities/instance.dart';
import '../../entities/instance_activity.dart';
import '../../entities/preview_card.dart';
import '../../entities/rule.dart';
import '../../entities/status.dart';
import '../../entities/tag.dart';
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

  /// Tags that are being used more frequently within the past week.
  ///
  /// ## Parameters
  ///
  /// - [limit]: Maximum number of results to return. Defaults to 10.
  ///
  /// ## Endpoint Url
  ///
  /// - GET https://mastodon.example/api/v1/trends/tags HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - Anonymous
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/trends/#tags
  Future<MastodonResponse<List<Tag>>> lookupTrendingTags({
    int? limit,
  });

  /// Statuses that have been interacted with more than others.
  ///
  /// ## Parameters
  ///
  /// - [limit]: Maximum number of results to return. Defaults to 10.
  ///
  /// ## Endpoint Url
  ///
  /// - GET https://mastodon.example/api/v1/trends/statuses HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - Anonymous
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/trends/#statuses
  Future<MastodonResponse<List<Status>>> lookupTrendingStatuses({
    int? limit,
  });

  /// Links that have been shared more than others.
  ///
  /// ## Parameters
  ///
  /// - [limit]: Maximum number of results to return. Defaults to 10.
  ///
  /// ## Endpoint Url
  ///
  /// - GET https://mastodon.example/api/v1/trends/links HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - Anonymous
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/trends/#links
  Future<MastodonResponse<List<PreviewCard>>> lookupTrendingLinks({
    int? limit,
  });

  /// See all currently active announcements set by admins.
  ///
  /// ## Endpoint Url
  ///
  /// - GET https://mastodon.example/api/v1/announcements HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/announcements/#get
  Future<MastodonResponse<List<Announcement>>> lookupActiveAnnouncements();

  /// See all announcements set by admins.
  ///
  /// ## Endpoint Url
  ///
  /// - GET https://mastodon.example/api/v1/announcements HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/announcements/#get
  Future<MastodonResponse<List<Announcement>>> lookupAnnouncements();

  /// Allows a user to mark the announcement as read.
  ///
  /// ## Parameters
  ///
  /// - [announcementId]: The ID of the Announcement in the database.
  ///
  /// ## Endpoint Url
  ///
  /// - POST https://mastodon.example/api/v1/announcements/:id/dismiss HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - write:accounts
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/announcements/#dismiss
  Future<MastodonResponse<bool>> createMarkAnnouncementAsRead({
    required String announcementId,
  });

  /// React to an announcement with an emoji.
  ///
  /// ## Parameters
  ///
  /// - [announcementId]: The ID of the Announcement in the database.
  ///
  /// - [emojiName]: Unicode emoji, or the shortcode of a custom emoji.
  ///
  /// ## Endpoint Url
  ///
  /// - PUT https://mastodon.example/api/v1/announcements/:id/reactions/:name HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - write:favourites
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/announcements/#put-reactions
  Future<MastodonResponse<bool>> createReactionToAnnouncement({
    required String announcementId,
    required String emojiName,
  });

  /// Undo a react emoji to an announcement.
  ///
  /// ## Parameters
  ///
  /// - [announcementId]: The ID of the Announcement in the database.
  ///
  /// - [emojiName]: Unicode emoji, or the shortcode of a custom emoji.
  ///
  /// ## Endpoint Url
  ///
  /// - DELETE https://mastodon.example/api/v1/announcements/:id/reactions/:name HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - write:favourites
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/announcements/#delete-reactions
  Future<MastodonResponse<bool>> destroyReactionToAnnouncement({
    required String announcementId,
    required String emojiName,
  });
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

  @override
  Future<MastodonResponse<List<Tag>>> lookupTrendingTags({
    int? limit,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.anonymousOnly,
          '/api/v1/trends/tags',
          queryParameters: {
            'limit': limit,
          },
        ),
        dataBuilder: Tag.fromJson,
      );

  @override
  Future<MastodonResponse<List<Status>>> lookupTrendingStatuses({
    int? limit,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.anonymousOnly,
          '/api/v1/trends/statuses',
          queryParameters: {
            'limit': limit,
          },
        ),
        dataBuilder: Status.fromJson,
      );

  @override
  Future<MastodonResponse<List<PreviewCard>>> lookupTrendingLinks({
    int? limit,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.anonymousOnly,
          '/api/v1/trends/links',
          queryParameters: {
            'limit': limit,
          },
        ),
        dataBuilder: PreviewCard.fromJson,
      );

  @override
  Future<MastodonResponse<List<Announcement>>> lookupActiveAnnouncements({
    bool? includeDismissed,
  }) async =>
      await _lookupAnnouncements(includeDismissed: false);

  @override
  Future<MastodonResponse<List<Announcement>>> lookupAnnouncements({
    bool? includeDismissed,
  }) async =>
      await _lookupAnnouncements(includeDismissed: true);

  @override
  Future<MastodonResponse<bool>> createMarkAnnouncementAsRead({
    required String announcementId,
  }) async =>
      super.evaluateResponse(
        await super.post(
          UserContext.oauth2Only,
          '/api/v1/announcements/$announcementId/dismiss',
        ),
      );

  @override
  Future<MastodonResponse<bool>> createReactionToAnnouncement({
    required String announcementId,
    required String emojiName,
  }) async =>
      super.evaluateResponse(
        await super.put(
          UserContext.oauth2Only,
          '/api/v1/announcements/$announcementId/reactions/$emojiName',
        ),
      );

  @override
  Future<MastodonResponse<bool>> destroyReactionToAnnouncement({
    required String announcementId,
    required String emojiName,
  }) async =>
      super.evaluateResponse(
        await super.delete(
          UserContext.oauth2Only,
          '/api/v1/announcements/$announcementId/reactions/$emojiName',
        ),
      );

  Future<MastodonResponse<List<Announcement>>> _lookupAnnouncements({
    bool? includeDismissed,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/api/v1/announcements',
          queryParameters: {
            'with_dismissed': includeDismissed,
          },
        ),
        dataBuilder: Announcement.fromJson,
      );
}
