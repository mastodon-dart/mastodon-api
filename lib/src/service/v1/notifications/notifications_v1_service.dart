// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import '../../../core/client/client_context.dart';
import '../../../core/client/user_context.dart';
import '../../base_service.dart';
import '../../entities/notification.dart';
import '../../entities/notification_type.dart';
import '../../response/mastodon_response.dart';

abstract class NotificationsV1Service {
  /// Returns the new instance of [NotificationsV1Service].
  factory NotificationsV1Service({
    required String instance,
    required ClientContext context,
  }) =>
      _NotificationsV1Service(
        instance: instance,
        context: context,
      );

  /// Notifications concerning the user.
  ///
  /// ## Parameters
  ///
  /// - [maxNotificationId]: Return results older than this ID.
  ///
  /// - [sinceNotificationId]: Return results newer than this ID
  ///
  /// - [minNotificationId]: Return results immediately newer than this ID
  ///
  /// - [limit]: Maximum number of results to return.
  /// Defaults to 15 notifications. Max 30 notifications.
  ///
  /// - [types]: Types to include in the result.
  ///
  /// - [excludeTypes]: Types to exclude from the results.
  ///
  /// - [accountId]: Return only notifications received from the specified account.
  ///
  /// ## Endpoint Url
  ///
  /// - GET https://mastodon.example/api/v1/notifications HTTP/1.1
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0
  ///
  /// ## Required Scopes
  ///
  /// - read:notifications
  ///
  /// ## Reference
  ///
  /// - https://docs.joinmastodon.org/methods/notifications/#get
  Future<MastodonResponse<List<Notification>>> lookupNotifications({
    String? maxNotificationId,
    String? sinceNotificationId,
    String? minNotificationId,
    int? limit,
    List<NotificationType>? types,
    List<NotificationType>? excludeTypes,
    String? accountId,
  });
}

class _NotificationsV1Service extends BaseService
    implements NotificationsV1Service {
  /// Returns the new instance of [_NotificationsV1Service].
  _NotificationsV1Service({
    required super.instance,
    required super.context,
  });

  @override
  Future<MastodonResponse<List<Notification>>> lookupNotifications({
    String? maxNotificationId,
    String? sinceNotificationId,
    String? minNotificationId,
    int? limit,
    List<NotificationType>? types,
    List<NotificationType>? excludeTypes,
    String? accountId,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/api/v1/notifications',
          queryParameters: {
            'max_id': maxNotificationId,
            'since_id': sinceNotificationId,
            'min_id': minNotificationId,
            'limit': limit,
            'types[]': types?.map((e) => e.value).toList(),
            'exclude_types[]': excludeTypes?.map((e) => e.value).toList(),
            'account_id': accountId,
          },
        ),
        dataBuilder: Notification.fromJson,
      );
}
