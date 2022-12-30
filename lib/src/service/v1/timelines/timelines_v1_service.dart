// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import '../../../core/client/client_context.dart';
import '../../../core/client/user_context.dart';
import '../../base_service.dart';
import '../../entities/conversation.dart';
import '../../entities/position_marker.dart';
import '../../entities/status.dart';
import '../../entities/timeline_snapshot.dart';
import '../../response/mastodon_response.dart';

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

  /// View all conversations
  ///
  /// ## Parameters
  ///
  /// - [limit]: Maximum number of results to return. Defaults to 20
  ///            conversations. Max 40 conversations.
  ///
  /// ## Endpoint Url
  ///
  /// - GET /api/v1/conversations HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - read:statuses
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/conversations/#get
  Future<MastodonResponse<List<Conversation>>> lookupConversations({
    int? limit,
  });

  /// Removes a conversation from your list of conversations.
  ///
  /// ## Parameters
  ///
  /// - [conversationId]: The ID of the Conversation in the database.
  ///
  /// ## Endpoint Url
  ///
  /// - DELETE /api/v1/conversations/:id HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - write:conversations
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/conversations/#delete
  Future<MastodonResponse<bool>> destroyConversation({
    required String conversationId,
  });

  /// Mark a conversation as read.
  ///
  /// ## Parameters
  ///
  /// - [conversationId]: The ID of the Conversation in the database.
  ///
  /// ## Endpoint Url
  ///
  /// - POST /api/v1/conversations/:id/read HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - write:conversations
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/conversations/#delete
  Future<MastodonResponse<Conversation>> createMarkConversationAsRead({
    required String conversationId,
  });

  Future<MastodonResponse<TimelineSnapshot>> lookupSnapshot();

  Future<MastodonResponse<PositionMarker>> createStatusSnapshot({
    required String statusId,
  });

  Future<MastodonResponse<PositionMarker>> createNotificationSnapshot({
    required String notificationId,
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

  @override
  Future<MastodonResponse<List<Conversation>>> lookupConversations({
    int? limit,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/api/v1/conversations',
          queryParameters: {
            'limit': limit,
          },
        ),
        dataBuilder: Conversation.fromJson,
      );

  @override
  Future<MastodonResponse<bool>> destroyConversation({
    required String conversationId,
  }) async =>
      super.evaluateResponse(
        await super.delete(
          UserContext.oauth2Only,
          '/api/v1/conversations/$conversationId',
        ),
      );

  @override
  Future<MastodonResponse<Conversation>> createMarkConversationAsRead({
    required String conversationId,
  }) async =>
      super.transformSingleDataResponse(
        await super.post(
          UserContext.oauth2Only,
          '/api/v1/conversations/$conversationId/read',
          checkEntity: true,
        ),
        dataBuilder: Conversation.fromJson,
      );

  @override
  Future<MastodonResponse<TimelineSnapshot>> lookupSnapshot() async =>
      super.transformSingleDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/api/v1/markers?timelines[]=“home”',
        ),
        dataBuilder: TimelineSnapshot.fromJson,
      );

  @override
  Future<MastodonResponse<PositionMarker>> createStatusSnapshot({
    required String statusId,
  }) async =>
      super.transformSingleDataResponse(
        await super.post(
          UserContext.oauth2Only,
          '/api/v1/markers',
          body: {
            'home': {
              'last_read_id': statusId,
            }
          },
          checkEntity: true,
        ),
        dataBuilder: PositionMarker.fromJson,
      );

  @override
  Future<MastodonResponse<PositionMarker>> createNotificationSnapshot({
    required String notificationId,
  }) async =>
      super.transformSingleDataResponse(
        await super.post(
          UserContext.oauth2Only,
          '/api/v1/markers',
          body: {
            'notifications': {
              'last_read_id': notificationId,
            }
          },
          checkEntity: true,
        ),
        dataBuilder: PositionMarker.fromJson,
      );
}
