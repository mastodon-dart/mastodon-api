// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'dart:io';

import 'package:http/http.dart';

import '../../../core/client/client_context.dart';
import '../../../core/client/user_context.dart';
import '../../base_service.dart';
import '../../entities/media_attachment.dart';
import '../../entities/media_focal_points.dart';
import '../../response/mastodon_response.dart';

abstract class MediaV1Service {
  /// Returns the new instance of [MediaV1Service].
  factory MediaV1Service({
    required String instance,
    required ClientContext context,
  }) =>
      _MediaV1Service(
        instance: instance,
        context: context,
      );

  /// Creates an attachment to be used with a new status.
  ///
  /// This method will return after the full sized media is done processing.
  ///
  /// ## Parameters
  ///
  /// - [file]: The file to be attached, encoded using multipart form data.
  ///
  /// - [thumbnail]: The file to be attached, encoded using multipart form data.
  ///
  /// - [description]: A plain-text description of the media, for accessibility
  ///                  purposes.
  ///
  /// - [focus]: Two floating points (x,y) ranging from -1.0 to 1.0.
  ///
  /// ## Endpoint Url
  ///
  /// - POST /api/v1/media HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - write:media
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/media/#v1
  @Deprecated('Still works, but officially deprecated. Use v2 endpoint instead')
  Future<MastodonResponse<MediaAttachment>> uploadMedia({
    required File file,
    File? thumbnail,
    String? description,
    MediaFocalPoints? focus,
  });

  /// Get a media attachment, before it is attached to a status and posted,
  /// but after it is accepted for processing.
  ///
  /// Use this method to check that the full-sized media
  /// has finished processing.
  ///
  /// ## Parameters
  ///
  /// - [mediaId]: The ID of the MediaAttachment in the database.
  ///
  /// ## Endpoint Url
  ///
  /// - GET /api/v1/media/:id HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - write:media
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/media/#get
  Future<MastodonResponse<MediaAttachment>> lookupMedia({
    required String mediaId,
  });

  /// Update a MediaAttachment’s parameters, before it is attached to a status
  /// and posted.
  ///
  /// ## Parameters
  ///
  /// - [mediaId]: The ID of the MediaAttachment in the database.
  ///
  /// - [thumbnail]: The file to be attached, encoded using multipart form data.
  ///
  /// - [description]: A plain-text description of the media, for accessibility
  ///                  purposes.
  ///
  /// - [focus]: Two floating points (x,y) ranging from -1.0 to 1.0.
  ///
  /// ## Endpoint Url
  ///
  /// - PUT /api/v1/media/:id HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - write:media
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/media/#update
  Future<MastodonResponse<MediaAttachment>> updateMedia({
    required String mediaId,
    File? thumbnail,
    String? description,
    MediaFocalPoints? focus,
  });
}

class _MediaV1Service extends BaseService implements MediaV1Service {
  /// Returns the new instance of [_MediaV1Service].
  _MediaV1Service({
    required super.instance,
    required super.context,
  });

  @override
  Future<MastodonResponse<MediaAttachment>> uploadMedia({
    required File file,
    File? thumbnail,
    String? description,
    MediaFocalPoints? focus,
  }) async =>
      super.transformSingleDataResponse(
        await super.postMultipart(
          UserContext.oauth2Only,
          '/api/v1/media',
          files: [
            MultipartFile.fromBytes(
              'file',
              file.readAsBytesSync(),
              filename: file.uri.pathSegments.last,
            ),
            if (thumbnail != null)
              MultipartFile.fromBytes(
                'thumbnail',
                thumbnail.readAsBytesSync(),
                filename: '', //! Thumbnail must be blank.
              )
          ],
          body: {
            'description': description,
            'focus': focus != null ? '${focus.x},${focus.y}' : null,
          },
        ),
        dataBuilder: MediaAttachment.fromJson,
      );

  @override
  Future<MastodonResponse<MediaAttachment>> lookupMedia({
    required String mediaId,
  }) async =>
      super.transformSingleDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/api/v1/media/$mediaId',
        ),
        dataBuilder: MediaAttachment.fromJson,
      );

  @override
  Future<MastodonResponse<MediaAttachment>> updateMedia({
    required String mediaId,
    File? thumbnail,
    String? description,
    MediaFocalPoints? focus,
  }) async =>
      super.transformSingleDataResponse(
        await super.putMultipart(
          UserContext.oauth2Only,
          '/api/v1/media/$mediaId',
          files: [
            if (thumbnail != null)
              MultipartFile.fromBytes(
                'thumbnail',
                thumbnail.readAsBytesSync(),
                filename: '', //! Thumbnail must be blank.
              )
          ],
          body: {
            'description': description,
            'focus': focus != null ? '${focus.x},${focus.y}' : null,
          },
        ),
        dataBuilder: MediaAttachment.fromJson,
      );
}
