// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import '../../core/client/client_context.dart';
import '../base_service.dart';

abstract class AccountsService {
  /// Returns the new instance of [UsersService].
  factory AccountsService({
    required String instance,
    required ClientContext context,
  }) =>
      _AccountsService(
        instance: instance,
        context: context,
      );
}

class _AccountsService extends BaseService implements AccountsService {
  /// Returns the new instance of [_AccountsService].
  _AccountsService({
    required super.instance,
    required super.context,
  });
}
