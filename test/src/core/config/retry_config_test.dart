// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:mastodon_api/src/core/client/retry_strategy.dart';
import 'package:mastodon_api/src/core/config/retry_config.dart';
import 'package:test/test.dart';

// Project imports:

void main() {
  group('.ofRegularIntervals', () {
    test('with default intervals', () {
      final config = RetryConfig.ofRegularIntervals(maxAttempts: 10);

      expect(config.strategy, RetryStrategy.regularIntervals);
      expect(config.maxAttempts, 10);
      expect(config.intervalInSeconds, 2);
      expect(config.onExecute, null);
    });

    test('with specified intervals', () {
      final config = RetryConfig.ofRegularIntervals(
        maxAttempts: 10,
        intervalInSeconds: 5,
      );

      expect(config.strategy, RetryStrategy.regularIntervals);
      expect(config.maxAttempts, 10);
      expect(config.intervalInSeconds, 5);
      expect(config.onExecute, null);
    });

    test('with negative maxAttempts', () {
      expect(
        () => RetryConfig.ofRegularIntervals(maxAttempts: -1),
        throwsA(
          allOf(
              isA<ArgumentError>(),
              predicate((e) =>
                  e.toString() ==
                  'Invalid argument (maxAttempts): must be greater than or '
                      'equal to 0: -1')),
        ),
      );
    });

    test('with negative intervals', () {
      expect(
        () => RetryConfig.ofRegularIntervals(
          maxAttempts: 10,
          intervalInSeconds: -1,
        ),
        throwsA(
          allOf(
              isA<ArgumentError>(),
              predicate((e) =>
                  e.toString() ==
                  'Invalid argument (intervalInSeconds): must be greater than '
                      'or equal to 0: -1')),
        ),
      );
    });

    test('with negative maxAttempts and intervals', () {
      expect(
        () => RetryConfig.ofRegularIntervals(
          maxAttempts: -1,
          intervalInSeconds: -1,
        ),
        throwsA(
          allOf(
              isA<ArgumentError>(),
              predicate((e) =>
                  e.toString() ==
                  'Invalid argument (maxAttempts): must be greater than '
                      'or equal to 0: -1')),
        ),
      );
    });

    test('with onExecute', () {
      expect(
        () => RetryConfig.ofRegularIntervals(
          maxAttempts: 5,
          onExecute: print,
        ),
        returnsNormally,
      );
    });
  });

  group('.ofExponentialBackOff', () {
    test('with specified attempts', () {
      final config = RetryConfig.ofExponentialBackOff(
        maxAttempts: 10,
      );

      expect(config.strategy, RetryStrategy.exponentialBackOff);
      expect(config.maxAttempts, 10);
      expect(config.intervalInSeconds, 0);
      expect(config.onExecute, null);
    });

    test('with negative maxAttempts', () {
      expect(
        () => RetryConfig.ofExponentialBackOff(maxAttempts: -1),
        throwsA(
          allOf(
              isA<ArgumentError>(),
              predicate((e) =>
                  e.toString() ==
                  'Invalid argument (maxAttempts): must be greater than or '
                      'equal to 0: -1')),
        ),
      );
    });

    test('with onExecute', () {
      expect(
        () => RetryConfig.ofExponentialBackOff(
          maxAttempts: 5,
          onExecute: print,
        ),
        returnsNormally,
      );
    });
  });

  group('.ofExponentialBackOffAndJitter', () {
    test('with specified attempts', () {
      final config = RetryConfig.ofExponentialBackOffAndJitter(
        maxAttempts: 10,
      );

      expect(config.strategy, RetryStrategy.exponentialBackOffAndJitter);
      expect(config.maxAttempts, 10);
      expect(config.intervalInSeconds, 0);
      expect(config.onExecute, null);
    });

    test('with negative maxAttempts', () {
      expect(
        () => RetryConfig.ofExponentialBackOffAndJitter(maxAttempts: -1),
        throwsA(
          allOf(
              isA<ArgumentError>(),
              predicate((e) =>
                  e.toString() ==
                  'Invalid argument (maxAttempts): must be greater than or '
                      'equal to 0: -1')),
        ),
      );
    });

    test('with onExecute', () {
      expect(
        () => RetryConfig.ofExponentialBackOffAndJitter(
          maxAttempts: 5,
          onExecute: print,
        ),
        returnsNormally,
      );
    });
  });
}
