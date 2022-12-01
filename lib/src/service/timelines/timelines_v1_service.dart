// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../../core/client/client_context.dart';
import '../../core/client/user_context.dart';
import '../base_service.dart';
import '../entities/status.dart';
import '../response/mastodon_response.dart';

abstract class TimelinesV1Service {
  /// Returns the new instance of [TimelinesV1Service].
  factory TimelinesV1Service({
    required String instance,
    required ClientContext context,
  }) =>
      _TimelinesV1Service(
        instance: instance,
        context: context,
      );

  /// Read and view timelines of statuses.
  ///
  /// ## Parameters
  ///
  /// - [onlyLocal]: Show only local statuses? Defaults to false.
  ///
  /// - [onlyRemote]: Show only remote statuses? Defaults to false.
  ///
  /// - [onlyMedia]: Show only statuses with media attached? Defaults to false.
  ///
  /// - [maxStatusId]: Return results older than ID.
  ///
  /// - [minStatusId]: Return results immediately newer than ID.
  ///
  /// - [sinceStatusId]: Return results newer than ID.
  ///
  /// - [limit]: Maximum number of results to return. Defaults to 20. Max 40.
  ///
  /// ## Endpoint Url
  ///
  /// - GET https://mastodon.example/api/v1/timelines/public HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - Anonymous
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - read:statuses (if the instance has disabled public preview)
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/timelines/#public
  Future<MastodonResponse<List<Status>>> lookupPublicTimeline({
    bool? onlyLocal,
    bool? onlyRemote,
    bool? onlyMedia,
    String? maxStatusId,
    String? minStatusId,
    String? sinceStatusId,
    int? limit,
  });

  /// View public statuses containing the given hashtag.
  ///
  /// ## Parameters
  ///
  /// - [hashtag]: The name of the hashtag (not including the # symbol).
  ///
  /// - [onlyLocal]: Show only local statuses? Defaults to false.
  ///
  /// - [onlyRemote]: Show only remote statuses? Defaults to false.
  ///
  /// - [onlyMedia]: Show only statuses with media attached? Defaults to false.
  ///
  /// - [maxStatusId]: Return results older than ID.
  ///
  /// - [minStatusId]: Return results immediately newer than ID.
  ///
  /// - [sinceStatusId]: Return results newer than ID.
  ///
  /// - [limit]: Maximum number of results to return. Defaults to 20. Max 40.
  ///
  /// ## Endpoint Url
  ///
  /// - GET https://mastodon.example/api/v1/timelines/tag/:hashtag HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - Anonymous
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - read:statuses (if the instance has disabled public preview)
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/timelines/#tag
  Future<MastodonResponse<List<Status>>> lookupTimelineByHashtag({
    required String hashtag,
    bool? onlyLocal,
    bool? onlyRemote,
    bool? onlyMedia,
    String? maxStatusId,
    String? minStatusId,
    String? sinceStatusId,
    int? limit,
  });

  /// View statuses from followed users.
  ///
  /// ## Parameters
  ///
  /// - [maxStatusId]: Return results older than ID.
  ///
  /// - [minStatusId]: Return results immediately newer than ID.
  ///
  /// - [sinceStatusId]: Return results newer than ID.
  ///
  /// - [limit]: Maximum number of results to return. Defaults to 20. Max 40.
  ///
  /// ## Endpoint Url
  ///
  /// - GET https://mastodon.example/api/v1/timelines/home HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - read:statuses (if the instance has disabled public preview)
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/timelines/#home
  Future<MastodonResponse<List<Status>>> lookupHomeTimeline({
    String? maxStatusId,
    String? minStatusId,
    String? sinceStatusId,
    int? limit,
  });

  /// View statuses in the given list timeline.
  ///
  /// ## Parameters
  ///
  /// - [listId]:  Local ID of the List in the database.
  ///
  /// - [maxStatusId]: Return results older than ID.
  ///
  /// - [minStatusId]: Return results immediately newer than ID.
  ///
  /// - [sinceStatusId]: Return results newer than ID.
  ///
  /// - [limit]: Maximum number of results to return. Defaults to 20. Max 40.
  ///
  /// ## Endpoint Url
  ///
  /// - GET https://mastodon.example/api/v1/timelines/list/:list_id HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - read:statuses (if the instance has disabled public preview)
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/timelines/#list
  Future<MastodonResponse<List<Status>>> lookupListTimeline({
    required String listId,
    String? maxStatusId,
    String? minStatusId,
    String? sinceStatusId,
    int? limit,
  });
}

class _TimelinesV1Service extends BaseService implements TimelinesV1Service {
  /// Returns the new instance of [_TimelinesV1Service].
  _TimelinesV1Service({
    required super.instance,
    required super.context,
  });

  @override
  Future<MastodonResponse<List<Status>>> lookupPublicTimeline({
    bool? onlyLocal,
    bool? onlyRemote,
    bool? onlyMedia,
    String? maxStatusId,
    String? minStatusId,
    String? sinceStatusId,
    int? limit,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2OrAnonymous,
          '/api/v1/timelines/public',
          queryParameters: {
            'local': onlyLocal,
            'remote': onlyRemote,
            'only_media': onlyMedia,
            'max_id': maxStatusId,
            'min_id': minStatusId,
            'since_id': sinceStatusId,
            'limit': limit,
          },
        ),
        dataBuilder: Status.fromJson,
      );

  @override
  Future<MastodonResponse<List<Status>>> lookupTimelineByHashtag({
    required String hashtag,
    bool? onlyLocal,
    bool? onlyRemote,
    bool? onlyMedia,
    String? maxStatusId,
    String? minStatusId,
    String? sinceStatusId,
    int? limit,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2OrAnonymous,
          '/api/v1/timelines/tag/$hashtag',
          queryParameters: {
            'local': onlyLocal,
            'remote': onlyRemote,
            'only_media': onlyMedia,
            'max_id': maxStatusId,
            'min_id': minStatusId,
            'since_id': sinceStatusId,
            'limit': limit,
          },
        ),
        dataBuilder: Status.fromJson,
      );

  @override
  Future<MastodonResponse<List<Status>>> lookupHomeTimeline({
    String? maxStatusId,
    String? minStatusId,
    String? sinceStatusId,
    int? limit,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/api/v1/timelines/home',
          queryParameters: {
            'max_id': maxStatusId,
            'min_id': minStatusId,
            'since_id': sinceStatusId,
            'limit': limit,
          },
        ),
        dataBuilder: Status.fromJson,
      );

  @override
  Future<MastodonResponse<List<Status>>> lookupListTimeline({
    required String listId,
    String? maxStatusId,
    String? minStatusId,
    String? sinceStatusId,
    int? limit,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/api/v1/timelines/list/$listId',
          queryParameters: {
            'max_id': maxStatusId,
            'min_id': minStatusId,
            'since_id': sinceStatusId,
            'limit': limit,
          },
        ),
        dataBuilder: Status.fromJson,
      );
}
