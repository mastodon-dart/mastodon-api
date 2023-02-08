// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import '../../core/client/client_context.dart';
import '../../core/client/user_context.dart';
import '../base_service.dart';
import '../entities/oembed_metadata.dart';
import '../response/mastodon_response.dart';

abstract class OEmbedService {
  /// Returns the new instance of [OEmbedService].
  factory OEmbedService({
    required String instance,
    required ClientContext context,
  }) =>
      _OEmbedService(
        instance: instance,
        context: context,
      );

  /// Get OEmbed info.
  ///
  /// ## Parameters
  ///
  /// - [statusUrl]: URL of a status.
  ///
  /// - [maxWidth]: Width of the iframe. Defaults to 400
  ///
  /// - [maxHeight]: Height of the iframe. Defaults to null.
  ///
  /// ## Endpoint Url
  ///
  /// - GET /api/oembed HTTP/1.1
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/oembed/#get
  Future<MastodonResponse<OEmbedMetadata>> lookupOEmbedMetadata({
    required String statusUrl,
    int? maxWidth,
    int? maxHeight,
  });
}

class _OEmbedService extends BaseService implements OEmbedService {
  /// Returns the new instance of [_OEmbedService].
  _OEmbedService({
    required super.instance,
    required super.context,
  });

  @override
  Future<MastodonResponse<OEmbedMetadata>> lookupOEmbedMetadata({
    required String statusUrl,
    int? maxWidth,
    int? maxHeight,
  }) async =>
      super.transformSingleDataResponse(
        await super.get(
          UserContext.anonymousOnly,
          '/api/oembed',
          queryParameters: {
            'url': statusUrl,
            'maxwidth': maxWidth,
            'maxheight': maxHeight,
          },
        ),
        dataBuilder: OEmbedMetadata.fromJson,
      );
}
