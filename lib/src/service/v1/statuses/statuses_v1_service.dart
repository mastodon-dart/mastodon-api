// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import '../../../core/client/client_context.dart';
import '../../../core/client/user_context.dart';
import '../../../core/language.dart';
import '../../../core/visibility.dart';
import '../../base_service.dart';
import '../../entities/account.dart';
import '../../entities/poll.dart';
import '../../entities/status.dart';
import '../../entities/status_context.dart';
import '../../response/mastodon_response.dart';
import 'status_poll_param.dart';

abstract class StatusesV1Service {
  /// Returns the new instance of [StatusesV1Service].
  factory StatusesV1Service({
    required String instance,
    required ClientContext context,
  }) =>
      _StatusesV1Service(
        instance: instance,
        context: context,
      );

  /// Post a new status.
  ///
  /// ## Parameters
  ///
  /// - [text]: The text content of the status. If media_ids is provided,
  ///           this becomes optional.
  ///
  /// - [spoilerText]: Text to be shown as a warning or subject before the
  ///                  actual content. Statuses are generally collapsed behind
  ///                  this field.
  ///
  /// - [inReplyToId]: ID of the status being replied to, if status is a reply.
  ///
  /// - [sensitive]: Mark status and attached media as sensitive?
  ///                Defaults to false.
  ///
  /// - [visibility]: Sets the visibility of the posted status to
  ///                 [Visibility.public], [Visibility.unlisted],
  ///                 [Visibility.private], [Visibility.direct].
  ///
  /// - [language]: ISO 639 language code for this status.
  ///
  /// - [mediaIds]: Include Attachment IDs to be attached as media.
  ///               If provided, [text] becomes optional, and poll cannot
  ///               be used.
  ///
  /// - [poll]: The object of the poll to be assigned to the status.
  ///
  /// ## Endpoint Url
  ///
  /// - POST https://mastodon.example/api/v1/statuses HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - write:statuses
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/statuses/#create
  Future<MastodonResponse<Status>> createStatus({
    required String text,
    String? spoilerText,
    String? inReplyToStatusId,
    bool? sensitive,
    Visibility? visibility,
    Language? language,
    List<String>? mediaIds,
    StatusPollParam? poll,
  });

  /// Delete one of your own statuses.
  ///
  /// ## Parameters
  ///
  /// - [statusId]: The ID of the Status in the database.
  ///
  /// ## Endpoint Url
  ///
  /// - DELETE /api/v1/statuses/:id HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - write:statuses
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/statuses/#delete
  Future<MastodonResponse<Status>> destroyStatus({
    required String statusId,
  });

  /// Edit a given status to change its text, sensitivity, media attachments, o
  /// r poll.
  ///
  /// Note that editing a poll’s options will reset the votes.
  ///
  /// ## Parameters
  ///
  /// - [statusId]: The ID of the SOMETHING in the database.
  ///
  /// - [text]: The text content of the status. If media_ids is provided,
  ///           this becomes optional.
  ///
  /// - [spoilerText]: Text to be shown as a warning or subject before the
  ///                  actual content. Statuses are generally collapsed behind
  ///                  this field.
  ///
  /// - [sensitive]: Mark status and attached media as sensitive?
  ///                Defaults to false.
  ///
  /// - [language]: ISO 639 language code for this status.
  ///
  /// - [mediaIds]: Include Attachment IDs to be attached as media.
  ///               If provided, [text] becomes optional, and poll cannot
  ///               be used.
  ///
  /// - [poll]: The object of the poll to be assigned to the status.
  ///
  /// ## Endpoint Url
  ///
  /// - PUT /api/v1/statuses/:id HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - write:statuses
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/statuses/#edit
  Future<MastodonResponse<Status>> updateStatus({
    required String statusId,
    required String text,
    String? spoilerText,
    bool? sensitive,
    Language? language,
    List<String>? mediaIds,
    StatusPollParam? poll,
  });

  /// Returns a specific poll.
  ///
  /// ## Parameters
  ///
  /// - [pollId]: The ID of the Poll in the database.
  ///
  /// ## Endpoint Url
  ///
  /// - GET https://mastodon.example/api/v1/polls/:id HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - Anonymous
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - read:statuses
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/polls/#get
  Future<MastodonResponse<Poll>> lookupPollById({required String pollId});

  /// Post a vote to specific choice.
  ///
  /// ## Parameters
  ///
  /// - [pollId]: The ID of the Poll in the database.
  ///
  /// - [choice]: Index of options to vote on.
  ///
  /// ## Endpoint Url
  ///
  /// - POST https://mastodon.example/api/v1/polls/:id/votes HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - write:statuses
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/polls/#vote
  Future<MastodonResponse<Poll>> createVote({
    required String pollId,
    required int choice,
  });

  /// Post votes to specific choices.
  ///
  /// ## Parameters
  ///
  /// - [pollId]: The ID of the Poll in the database.
  ///
  /// - [choice]: Indexes of options to vote on.
  ///
  /// ## Endpoint Url
  ///
  /// - POST https://mastodon.example/api/v1/polls/:id/votes HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - write:statuses
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/polls/#vote
  Future<MastodonResponse<Poll>> createVotes({
    required String pollId,
    required List<int> choices,
  });

  /// Obtain information about a status.
  ///
  /// ## Parameters
  ///
  /// - [statusId]:  The ID of the Status in the database.
  ///
  /// ## Endpoint Url
  ///
  /// - POST https://mastodon.example/api/v1/statuses/:id HTTP/1.1
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
  /// - https://docs.joinmastodon.org/methods/statuses/#get
  Future<MastodonResponse<Status>> lookupById({
    required String statusId,
  });

  /// View statuses above and below this status in the thread.
  ///
  /// ## Parameters
  ///
  /// - [statusId]:  The ID of the Status in the database.
  ///
  /// ## Endpoint Url
  ///
  /// - POST https://mastodon.example/api/v1/statuses/:id/context HTTP/1.1
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
  /// - https://docs.joinmastodon.org/methods/statuses/#context
  Future<MastodonResponse<StatusContext>> lookupStatusContext({
    required String statusId,
  });

  /// View who boosted a given status.
  ///
  /// ## Parameters
  ///
  /// - [statusId]:  The ID of the Status in the database.
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
  /// - POST https://mastodon.example/api/v1/statuses/:id/reblogged_by HTTP/1.1
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
  /// - https://docs.joinmastodon.org/methods/statuses/#reblogged_by
  Future<MastodonResponse<List<Account>>> lookupRebloggedUsers({
    required String statusId,
    String? maxStatusId,
    String? minStatusId,
    String? sinceStatusId,
    int? limit,
  });

  /// View who favourited a given status.
  ///
  /// ## Parameters
  ///
  /// - [statusId]:  The ID of the Status in the database.
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
  /// - POST https://mastodon.example/api/v1/statuses/:id/favourited_by HTTP/1.1
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
  /// - https://docs.joinmastodon.org/methods/statuses/#favourited_by
  Future<MastodonResponse<List<Account>>> lookupFavouritedUsers({
    required String statusId,
    String? maxStatusId,
    String? minStatusId,
    String? sinceStatusId,
    int? limit,
  });

  /// Add a status to your favourites list.
  ///
  /// ## Parameters
  ///
  /// - [statusId]:  The ID of the Status in the database.
  ///
  /// ## Endpoint Url
  ///
  /// - POST https://mastodon.example/api/v1/statuses/:id/favourite HTTP/1.1
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
  /// - https://docs.joinmastodon.org/methods/statuses/#favourite
  Future<MastodonResponse<Status>> createFavourite({
    required String statusId,
  });

  /// Remove a status from your favourites list.
  ///
  /// ## Parameters
  ///
  /// - [statusId]:  The ID of the Status in the database.
  ///
  /// ## Endpoint Url
  ///
  /// - POST https://mastodon.example/api/v1/statuses/:id/unfavourite HTTP/1.1
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
  /// - https://docs.joinmastodon.org/methods/statuses/#unfavourite
  Future<MastodonResponse<Status>> destroyFavourite({
    required String statusId,
  });

  /// Re-share a status on your own profile.
  ///
  /// ## Parameters
  ///
  /// - [statusId]:  The ID of the Status in the database.
  ///
  /// ## Endpoint Url
  ///
  /// - POST https://mastodon.example/api/v1/statuses/:id/reblog HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - write:statuses
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/statuses/#reblog
  Future<MastodonResponse<Status>> createReblog({
    required String statusId,
  });

  /// Undo a re-share of a status.
  ///
  /// ## Parameters
  ///
  /// - [statusId]:  The ID of the Status in the database.
  ///
  /// ## Endpoint Url
  ///
  /// - POST https://mastodon.example/api/v1/statuses/:id/unreblog HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - write:statuses
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/statuses/#unreblog
  Future<MastodonResponse<Status>> destroyReblog({
    required String statusId,
  });

  /// Privately bookmark a status.
  ///
  /// ## Parameters
  ///
  /// - [statusId]:  The ID of the Status in the database.
  ///
  /// ## Endpoint Url
  ///
  /// - POST https://mastodon.example/api/v1/statuses/:id/bookmark HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - write:bookmarks
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/statuses/#bookmark
  Future<MastodonResponse<Status>> createBookmark({
    required String statusId,
  });

  /// Remove a status from your private bookmarks.
  ///
  /// ## Parameters
  ///
  /// - [statusId]:  The ID of the Status in the database.
  ///
  /// ## Endpoint Url
  ///
  /// - POST https://mastodon.example/api/v1/statuses/:id/unbookmark HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - write:bookmarks
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/statuses/#unbookmark
  Future<MastodonResponse<Status>> destroyBookmark({
    required String statusId,
  });

  /// Do not receive notifications for the thread that this status is part of.
  /// Must be a thread in which you are a participant.
  ///
  /// ## Parameters
  ///
  /// - [statusId]:  The ID of the Status in the database.
  ///
  /// ## Endpoint Url
  ///
  /// - POST https://mastodon.example/api/v1/statuses/:id/mute HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - write:mutes
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/statuses/#mute
  Future<MastodonResponse<Status>> createMute({
    required String statusId,
  });

  /// Start receiving notifications again for the thread that this status is
  /// part of.
  ///
  /// ## Parameters
  ///
  /// - [statusId]:  The ID of the Status in the database.
  ///
  /// ## Endpoint Url
  ///
  /// - POST https://mastodon.example/api/v1/statuses/:id/unmute HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - write:mutes
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/statuses/#unmute
  Future<MastodonResponse<Status>> destroyMute({
    required String statusId,
  });

  /// Feature one of your own public statuses at the top of your profile.
  ///
  /// ## Parameters
  ///
  /// - [statusId]:  The local ID of the Status in the database.
  /// The status should be authored by the authorized account.
  ///
  /// ## Endpoint Url
  ///
  /// - POST https://mastodon.example/api/v1/statuses/:id/pin HTTP/1.1
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
  /// - https://docs.joinmastodon.org/methods/statuses/#pin
  Future<MastodonResponse<Status>> createPinnedStatus({
    required String statusId,
  });

  /// Un-feature a status from the top of your profile.
  ///
  /// ## Parameters
  ///
  /// - [statusId]:  The local ID of the Status in the database.
  /// The status should be authored by the authorized account.
  ///
  /// ## Endpoint Url
  ///
  /// - POST https://mastodon.example/api/v1/statuses/:id/unpin HTTP/1.1
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
  /// - https://docs.joinmastodon.org/methods/statuses/#unpin
  Future<MastodonResponse<Status>> destroyPinnedStatus({
    required String statusId,
  });
}

class _StatusesV1Service extends BaseService implements StatusesV1Service {
  /// Returns the new instance of [_StatusesV1Service].
  _StatusesV1Service({
    required super.instance,
    required super.context,
  });

  @override
  Future<MastodonResponse<Status>> createStatus({
    required String text,
    String? spoilerText,
    String? inReplyToStatusId,
    bool? sensitive,
    Visibility? visibility,
    Language? language,
    List<String>? mediaIds,
    StatusPollParam? poll,
  }) async =>
      super.transformSingleDataResponse(
        await super.post(
          UserContext.oauth2Only,
          '/api/v1/statuses',
          body: {
            'status': text,
            'spoiler_text': spoilerText,
            'in_reply_to_id': inReplyToStatusId,
            'sensitive': sensitive,
            'visibility': visibility,
            'language': language,
            'media_ids': mediaIds,
            'poll': {
              'options': poll?.options,
              'expires_in': poll?.expiresIn.inSeconds,
              'multiple': poll?.multiple,
              'hide_totals': poll?.hideTotals,
            }
          },
          checkEntity: true,
        ),
        dataBuilder: Status.fromJson,
      );

  @override
  Future<MastodonResponse<Status>> destroyStatus({
    required String statusId,
  }) async =>
      super.transformSingleDataResponse(
        await super.delete(
          UserContext.oauth2Only,
          '/api/v1/statuses/$statusId',
        ),
        dataBuilder: Status.fromJson,
      );

  @override
  Future<MastodonResponse<Status>> updateStatus({
    required String statusId,
    required String text,
    String? spoilerText,
    bool? sensitive,
    Language? language,
    List<String>? mediaIds,
    StatusPollParam? poll,
  }) async =>
      super.transformSingleDataResponse(
        await super.put(
          UserContext.oauth2Only,
          '/api/v1/statuses/$statusId',
          body: {
            'status': text,
            'spoiler_text': spoilerText,
            'sensitive': sensitive,
            'language': language,
            'media_ids': mediaIds,
            'poll': {
              'options': poll?.options,
              'expires_in': poll?.expiresIn.inSeconds,
              'multiple': poll?.multiple,
              'hide_totals': poll?.hideTotals,
            }
          },
        ),
        dataBuilder: Status.fromJson,
      );

  @override
  Future<MastodonResponse<Poll>> lookupPollById({
    required String pollId,
  }) async =>
      super.transformSingleDataResponse(
        await super.get(
          UserContext.oauth2OrAnonymous,
          '/api/v1/polls/$pollId',
        ),
        dataBuilder: Poll.fromJson,
      );

  @override
  Future<MastodonResponse<Poll>> createVote({
    required String pollId,
    required int choice,
  }) async =>
      await _createVote(
        pollId: pollId,
        choices: [choice],
      );

  @override
  Future<MastodonResponse<Poll>> createVotes({
    required String pollId,
    required List<int> choices,
  }) async =>
      await _createVote(
        pollId: pollId,
        choices: choices,
      );

  Future<MastodonResponse<Poll>> _createVote({
    required String pollId,
    required List<int> choices,
  }) async =>
      super.transformSingleDataResponse(
        await super.post(
          UserContext.oauth2Only,
          '/api/v1/polls/$pollId/votes',
          body: {
            'choices': choices,
          },
          checkEntity: true,
        ),
        dataBuilder: Poll.fromJson,
      );

  @override
  Future<MastodonResponse<Status>> lookupById({
    required String statusId,
  }) async =>
      super.transformSingleDataResponse(
        await super.get(
          UserContext.oauth2OrAnonymous,
          '/api/v1/statuses/$statusId',
        ),
        dataBuilder: Status.fromJson,
      );

  @override
  Future<MastodonResponse<StatusContext>> lookupStatusContext({
    required String statusId,
  }) async =>
      super.transformSingleDataResponse(
        await super.get(
          UserContext.oauth2OrAnonymous,
          '/api/v1/statuses/$statusId/context',
        ),
        dataBuilder: StatusContext.fromJson,
      );

  @override
  Future<MastodonResponse<List<Account>>> lookupRebloggedUsers({
    required String statusId,
    String? maxStatusId,
    String? minStatusId,
    String? sinceStatusId,
    int? limit,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2OrAnonymous,
          '/api/v1/statuses/$statusId/reblogged_by',
          queryParameters: {
            'max_id': maxStatusId,
            'min_id': minStatusId,
            'since_id': sinceStatusId,
            'limit': limit,
          },
        ),
        dataBuilder: Account.fromJson,
      );

  @override
  Future<MastodonResponse<List<Account>>> lookupFavouritedUsers({
    required String statusId,
    String? maxStatusId,
    String? minStatusId,
    String? sinceStatusId,
    int? limit,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2OrAnonymous,
          '/api/v1/statuses/$statusId/favourited_by',
          queryParameters: {
            'max_id': maxStatusId,
            'min_id': minStatusId,
            'since_id': sinceStatusId,
            'limit': limit,
          },
        ),
        dataBuilder: Account.fromJson,
      );

  @override
  Future<MastodonResponse<Status>> createFavourite({
    required String statusId,
  }) async =>
      super.transformSingleDataResponse(
        await super.post(
          UserContext.oauth2Only,
          '/api/v1/statuses/$statusId/favourite',
          checkEntity: true,
        ),
        dataBuilder: Status.fromJson,
      );

  @override
  Future<MastodonResponse<Status>> destroyFavourite({
    required String statusId,
  }) async =>
      super.transformSingleDataResponse(
        await super.post(
          UserContext.oauth2Only,
          '/api/v1/statuses/$statusId/unfavourite',
          checkEntity: true,
        ),
        dataBuilder: Status.fromJson,
      );

  @override
  Future<MastodonResponse<Status>> createReblog({
    required String statusId,
  }) async =>
      super.transformSingleDataResponse(
        await super.post(
          UserContext.oauth2Only,
          '/api/v1/statuses/$statusId/reblog',
          checkEntity: true,
        ),
        dataBuilder: Status.fromJson,
      );

  @override
  Future<MastodonResponse<Status>> destroyReblog(
          {required String statusId}) async =>
      super.transformSingleDataResponse(
        await super.post(
          UserContext.oauth2Only,
          '/api/v1/statuses/$statusId/unreblog',
          checkEntity: true,
        ),
        dataBuilder: Status.fromJson,
      );

  @override
  Future<MastodonResponse<Status>> createBookmark({
    required String statusId,
  }) async =>
      super.transformSingleDataResponse(
        await super.post(
          UserContext.oauth2Only,
          '/api/v1/statuses/$statusId/bookmark',
          checkEntity: true,
        ),
        dataBuilder: Status.fromJson,
      );

  @override
  Future<MastodonResponse<Status>> destroyBookmark({
    required String statusId,
  }) async =>
      super.transformSingleDataResponse(
        await super.post(
          UserContext.oauth2Only,
          '/api/v1/statuses/$statusId/unbookmark',
          checkEntity: true,
        ),
        dataBuilder: Status.fromJson,
      );

  @override
  Future<MastodonResponse<Status>> createMute({
    required String statusId,
  }) async =>
      super.transformSingleDataResponse(
        await super.post(
          UserContext.oauth2Only,
          '/api/v1/statuses/$statusId/mute',
          checkEntity: true,
        ),
        dataBuilder: Status.fromJson,
      );

  @override
  Future<MastodonResponse<Status>> destroyMute({
    required String statusId,
  }) async =>
      super.transformSingleDataResponse(
        await super.post(
          UserContext.oauth2Only,
          '/api/v1/statuses/$statusId/unmute',
          checkEntity: true,
        ),
        dataBuilder: Status.fromJson,
      );

  @override
  Future<MastodonResponse<Status>> createPinnedStatus({
    required String statusId,
  }) async =>
      super.transformSingleDataResponse(
        await super.post(
          UserContext.oauth2Only,
          '/api/v1/statuses/$statusId/pin',
          checkEntity: true,
        ),
        dataBuilder: Status.fromJson,
      );

  @override
  Future<MastodonResponse<Status>> destroyPinnedStatus({
    required String statusId,
  }) async =>
      super.transformSingleDataResponse(
        await super.post(
          UserContext.oauth2Only,
          '/api/v1/statuses/$statusId/unpin',
          checkEntity: true,
        ),
        dataBuilder: Status.fromJson,
      );
}
