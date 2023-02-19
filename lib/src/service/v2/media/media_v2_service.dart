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

abstract class MediaV2Service {
  /// Returns the new instance of [MediaV2Service].
  factory MediaV2Service({
    required String instance,
    required ClientContext context,
  }) =>
      _MediaV2Service(
        instance: instance,
        context: context,
      );

  /// Creates a media attachment to be used with a new status.
  ///
  /// The full sized media will be processed asynchronously
  /// in the background for large uploads.
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
  /// - POST /api/v2/media HTTP/1.1
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
  /// - https://docs.joinmastodon.org/methods/media/#v2
  Future<MastodonResponse<MediaAttachment>> uploadMedia({
    required File file,
    File? thumbnail,
    String? description,
    MediaFocalPoints? focus,
  });
}

class _MediaV2Service extends BaseService implements MediaV2Service {
  /// Returns the new instance of [_MediaV2Service].
  _MediaV2Service({
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
          '/api/v2/media',
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
}
