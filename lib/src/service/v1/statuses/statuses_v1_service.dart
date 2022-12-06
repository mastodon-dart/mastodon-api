// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../../../core/client/client_context.dart';
import '../../../core/client/user_context.dart';
import '../../../core/language.dart';
import '../../../core/visibility.dart';
import '../../base_service.dart';
import '../../entities/poll.dart';
import '../../entities/status.dart';
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
        ),
        dataBuilder: Poll.fromJson,
      );
}
