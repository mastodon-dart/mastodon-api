// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import '../client/retry_event.dart';
import '../client/retry_strategy.dart';

/// This class represents an automatic retry configuration.
///
/// ## Retry at Regular Intervals
///
/// The simplest way to specify automatic retries is to specify a fixed number
/// of times at fixed intervals. For example, to automatically retry up to
/// 5 times at 3 seconds intervals when a timeout occurs in the communication
/// process with the API, use [RetryConfig.ofRegularIntervals] like following.
///
/// ```dart
/// import 'package:mastodon_api/mastodon_api.dart';
///
/// void main() async {
///   final mastodon = MastodonApi(
///     bearerToken: 'YOUR_TOKEN_HERE',
///     retryConfig: RetryConfig.ofRegularIntervals(
///       maxAttempts: 5,
///       intervalInSeconds: 3,
///     ),
///     timeout: Duration(seconds: 20),
///   );
/// }
/// ```
///
/// ## Exponential Backoff Algorithm
///
/// But sometimes this retry method is too simplistic: if a timeout occurs when
/// communicating with the API, it is certainly useful to retry multiple times
/// at regular intervals, as in the previous example. However, it is undesirable
/// to have multiple clients sending large numbers of requests to the server at
/// short intervals simultaneously when the server is experiencing a failure.
///
/// To solve this problem somewhat, the library supports automatic retries with
/// the **Exponential BackOff algorithm**. This is an algorithm that
/// exponentially increases the retry interval based on the number of retries
/// performed. It can be enabled with the [RetryConfig.ofExponentialBackOff]
/// constructor as follows.
///
/// ```dart
/// import 'package:mastodon_api/mastodon_api.dart';
///
/// void main() async {
///   final mastodon = MastodonApi(
///     bearerToken: 'YOUR_TOKEN_HERE',
///     retryConfig: RetryConfig.ofExponentialBackOff(
///       maxAttempts: 5,
///     ),
///     timeout: Duration(seconds: 20),
///   );
/// }
/// ```
///
/// The **Exponential BackOff Algorithm** can be enabled by using the
/// [RetryConfig.ofExponentialBackOff] constructor, as in the example above.
/// And the interval, which increases with the number of retries, is then
/// calculated as follows.
///
/// > **2 ^ retryCount**
///
/// ## Exponential Backoff Algorithm and Jitter
///
/// However, sometimes simply increasing the wait time exponentially is still
/// not sufficient to distribute retry timing. In addition to simply increasing
/// the interval exponentially, adding a random number called **Jitter** is
/// effective. This method allows for even greater flexibility in distributing
/// the timing of retries.
///
/// [RetryConfig.ofExponentialBackOff] constructor, as in the example above.
/// As always, you can use this algorithm by using
/// [RetryConfig.ofExponentialBackOffAndJitter] constructor as follows.
///
/// ```dart
/// import 'package:mastodon_api/mastodon_api.dart';
///
/// void main() async {
///   final mastodon = MastodonApi(
///     bearerToken: 'YOUR_TOKEN_HERE',
///     retryConfig: RetryConfig.ofExponentialBackOffAndJitter(
///       maxAttempts: 5,
///     ),
///     timeout: Duration(seconds: 20),
///   );
/// }
/// ```
///
/// The **Exponential BackOff and Jitter Algorithm** can be enabled by using the
/// [RetryConfig.ofExponentialBackOffAndJitter] constructor, as in the example
/// above. And the interval, which increases with the number of retries, is then
/// calculated as follows.
///
/// > **(2 ^ retryCount) + jitter(Random Number between 0 ~ 3)**
///
/// ## Remarks
///
/// Please note that [ArgumentError] is always raised if a negative number
/// is passed to the [maxAttempts] field of [RetryConfig].
class RetryConfig {
  /// Returns the new instance of [RetryConfig] of regular intervals.
  factory RetryConfig.ofRegularIntervals({
    required int maxAttempts,
    int intervalInSeconds = 2,
    Function(RetryEvent event)? onExecute,
  }) =>
      RetryConfig._(
        strategy: RetryStrategy.regularIntervals,
        maxAttempts: maxAttempts,
        intervalInSeconds: intervalInSeconds,
        onExecute: onExecute,
      );

  /// Returns the new instance of [RetryConfig] of Exponential Back Off.
  factory RetryConfig.ofExponentialBackOff({
    required int maxAttempts,
    Function(RetryEvent event)? onExecute,
  }) =>
      RetryConfig._(
        strategy: RetryStrategy.exponentialBackOff,
        maxAttempts: maxAttempts,
        intervalInSeconds: 0,
        onExecute: onExecute,
      );

  /// Returns the new instance of [RetryConfig] of Exponential Back Off
  /// and Jitter.
  factory RetryConfig.ofExponentialBackOffAndJitter({
    required int maxAttempts,
    Function(RetryEvent event)? onExecute,
  }) =>
      RetryConfig._(
        strategy: RetryStrategy.exponentialBackOffAndJitter,
        maxAttempts: maxAttempts,
        intervalInSeconds: 0,
        onExecute: onExecute,
      );

  /// Returns the new instance of [RetryConfig].
  RetryConfig._({
    required this.strategy,
    required this.maxAttempts,
    required this.intervalInSeconds,
    required this.onExecute,
  }) {
    if (maxAttempts < 0) {
      //! There is no use case where the number of retries is negative.
      throw ArgumentError.value(
        maxAttempts,
        'maxAttempts',
        'must be greater than or equal to 0',
      );
    }

    if (intervalInSeconds < 0) {
      //! There is no use case where the number of intervals is negative.
      throw ArgumentError.value(
        intervalInSeconds,
        'intervalInSeconds',
        'must be greater than or equal to 0',
      );
    }
  }

  /// The strategy of retry.
  final RetryStrategy strategy;

  /// Maximum number of retry attempts.
  final int maxAttempts;

  /// Interval time in seconds unit.
  final int intervalInSeconds;

  /// A callback function to be called when the retry is executed.
  final Function(RetryEvent event)? onExecute;
}
