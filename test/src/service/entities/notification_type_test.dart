// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:mastodon_api/src/service/entities/notification_type.dart';
import 'package:test/test.dart';

void main() {
  test('.name', () {
    expect(NotificationType.mention.name, 'mention');
    expect(NotificationType.status.name, 'status');
    expect(NotificationType.reblog.name, 'reblog');
    expect(NotificationType.follow.name, 'follow');
    expect(NotificationType.followRequest.name, 'followRequest');
    expect(NotificationType.favourite.name, 'favourite');
    expect(NotificationType.poll.name, 'poll');
    expect(NotificationType.update.name, 'update');
    expect(NotificationType.adminSignUp.name, 'adminSignUp');
    expect(NotificationType.adminReport.name, 'adminReport');
  });

  test('.value', () {
    expect(NotificationType.mention.value, 'mention');
    expect(NotificationType.status.value, 'status');
    expect(NotificationType.reblog.value, 'reblog');
    expect(NotificationType.follow.value, 'follow');
    expect(NotificationType.followRequest.value, 'follow_request');
    expect(NotificationType.favourite.value, 'favourite');
    expect(NotificationType.poll.value, 'poll');
    expect(NotificationType.update.value, 'update');
    expect(NotificationType.adminSignUp.value, 'admin.sign_up');
    expect(NotificationType.adminReport.value, 'admin.report');
  });
}
