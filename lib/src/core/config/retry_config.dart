// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import '../client/retry_event.dart';

/// This class represents an automatic retry configuration.
///
/// ## Exponential BackOff Algorithm and Jitter
///
/// Simply increasing the wait time exponentially is still
/// not sufficient to distribute retry timing. In addition to simply increasing
/// the interval exponentially, adding a random number called **Jitter** is
/// effective. This method allows for even greater flexibility in distributing
/// the timing of retries.
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
/// The interval, which increases with the number of retries, is then
/// calculated as follows.
///
/// > **(2 ^ retryCount) + jitter(Random Number between 0 ~ 3)**
///
/// ## Remarks
///
/// Please note that [ArgumentError] is always raised if a negative number
/// is passed to the [maxAttempts] field of [RetryConfig].
class RetryConfig {
  /// Returns the new instance of [RetryConfig].
  RetryConfig({
    required this.maxAttempts,
    this.onExecute,
  }) {
    if (maxAttempts < 0) {
      //! There is no use case where the number of retries is negative.
      throw ArgumentError.value(
        maxAttempts,
        'maxAttempts',
        'must be greater than or equal to 0',
      );
    }
  }

  /// Returns the new instance of [RetryConfig] of regular intervals.
  @Deprecated('Use default constructor instead. Will be removed in v0.5.0')
  factory RetryConfig.ofRegularIntervals({
    required int maxAttempts,
    // ignore: avoid_unused_constructor_parameters
    int intervalInSeconds = 2,
    Function(RetryEvent event)? onExecute,
  }) =>
      RetryConfig(
        maxAttempts: maxAttempts,
        onExecute: onExecute,
      );

  /// Returns the new instance of [RetryConfig] of Exponential Back Off.
  @Deprecated('Use default constructor instead. Will be removed in v0.5.0')
  factory RetryConfig.ofExponentialBackOff({
    required int maxAttempts,
    Function(RetryEvent event)? onExecute,
  }) =>
      RetryConfig(
        maxAttempts: maxAttempts,
        onExecute: onExecute,
      );

  /// Returns the new instance of [RetryConfig] of Exponential Back Off
  /// and Jitter.
  @Deprecated('Use default constructor instead. Will be removed in v0.5.0')
  factory RetryConfig.ofExponentialBackOffAndJitter({
    required int maxAttempts,
    Function(RetryEvent event)? onExecute,
  }) =>
      RetryConfig(
        maxAttempts: maxAttempts,
        onExecute: onExecute,
      );

  /// Maximum number of retry attempts.
  final int maxAttempts;

  /// A callback function to be called when the retry is executed.
  final Function(RetryEvent event)? onExecute;
}
