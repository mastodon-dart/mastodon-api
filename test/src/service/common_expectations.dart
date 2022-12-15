// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:mastodon_api/src/core/exception/data_not_found_exception.dart';
import 'package:mastodon_api/src/core/exception/mastodon_exception.dart';
import 'package:mastodon_api/src/core/exception/rate_limit_exceeded_exception.dart';
import 'package:mastodon_api/src/core/exception/unauthorized_exception.dart';

void expectUnauthorizedException(Function fn) {
  expect(
    () async => await fn.call(),
    throwsA(
      allOf(
        isA<UnauthorizedException>(),
        predicate(
          (dynamic e) => e.message == 'The specified access token is invalid.',
        ),
      ),
    ),
  );
}

void expectRateLimitExceededException(Function fn) {
  expect(
    () async => fn.call(),
    throwsA(
      allOf(
        isA<RateLimitExceededException>(),
        predicate((RateLimitExceededException e) =>
            e.message == 'Rate limit exceeded.'),
      ),
    ),
  );
}

void expectDataNotFoundExceptionDueToNoJson(Function fn) {
  expect(
    () async => await fn.call(),
    throwsA(
      allOf(
        isA<MastodonException>(),
        predicate(
          (MastodonException e) => e.message == 'No body exists in response.',
        ),
      ),
    ),
  );
}

void expectDataNotFoundExceptionDueToNotFound(Function fn) {
  expect(
    () async => await fn.call(),
    throwsA(
      allOf(
        isA<DataNotFoundException>(),
        predicate(
          (DataNotFoundException e) =>
              e.message == 'There is no data associated with request.',
        ),
      ),
    ),
  );
}

void expectDataNotFoundExceptionDueToNoData(Function fn) {
  expect(
    () async => await fn.call(),
    throwsA(
      allOf(
        isA<DataNotFoundException>(),
        predicate(
          (DataNotFoundException e) =>
              e.message == 'No data exists in response.',
        ),
      ),
    ),
  );
}
