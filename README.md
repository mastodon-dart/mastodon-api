<p align="center">
  <a href="https://github.com/mastodon-dart/mastodon-api">
    <img alt="mastodon_api" width="600px" src="https://user-images.githubusercontent.com/13072231/202892481-5b9c8a39-ef55-4dca-a912-e298beb635ca.png">
  </a>
</p>

<p align="center">
  <b>The Easiest and Powerful Dart/Flutter Library for Mastodon API 🎯</b>
</p>

---

[![GitHub Sponsor](https://img.shields.io/static/v1?label=Sponsor&message=%E2%9D%A4&logo=GitHub&color=ff69b4)](https://github.com/sponsors/myConsciousness)
[![GitHub Sponsor](https://img.shields.io/static/v1?label=Maintainer&message=myConsciousness&logo=GitHub&color=00acee)](https://github.com/myConsciousness)

[![pub package](https://img.shields.io/pub/v/mastodon_api.svg?logo=dart&logoColor=00b9fc)](https://pub.dartlang.org/packages/mastodon_api)
[![Dart SDK Version](https://badgen.net/pub/sdk-version/mastodon_api)](https://pub.dev/packages/mastodon_api/)
[![Test](https://github.com/mastodon-dart/mastodon-api/actions/workflows/test.yml/badge.svg)](https://github.com/mastodon-dart/mastodon-api/actions/workflows/test.yml)
[![Analyzer](https://github.com/mastodon-dart/mastodon-api/actions/workflows/analyzer.yml/badge.svg)](https://github.com/mastodon-dart/mastodon-api/actions/workflows/analyzer.yml)
[![codecov](https://codecov.io/gh/mastodon-dart/mastodon-api/branch/main/graph/badge.svg?token=J5GT1PF9Y3)](https://codecov.io/gh/mastodon-dart/mastodon-api)
[![Issues](https://img.shields.io/github/issues/mastodon-dart/mastodon-api?logo=github&logoColor=white)](https://github.com/mastodon-dart/mastodon-api/issues)
[![Pull Requests](https://img.shields.io/github/issues-pr/mastodon-dart/mastodon-api?logo=github&logoColor=white)](https://github.com/mastodon-dart/mastodon-api/pulls)
[![Stars](https://img.shields.io/github/stars/mastodon-dart/mastodon-api?logo=github&logoColor=white)](https://github.com/mastodon-dart/mastodon-api)
[![Contributors](https://img.shields.io/github/contributors/mastodon-dart/mastodon-api)](https://github.com/mastodon-dart/mastodon-api/graphs/contributors)
[![Code size](https://img.shields.io/github/languages/code-size/mastodon-dart/mastodon-api?logo=github&logoColor=white)](https://github.com/mastodon-dart/mastodon-api)
[![Last Commits](https://img.shields.io/github/last-commit/mastodon-dart/mastodon-api?logo=git&logoColor=white)](https://github.com/mastodon-dart/mastodon-api/commits/main)
[![License](https://img.shields.io/github/license/mastodon-dart/mastodon-api?logo=open-source-initiative&logoColor=green)](https://github.com/mastodon-dart/mastodon-api/blob/main/LICENSE)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](https://github.com/mastodon-dart/mastodon-api/blob/main/CODE_OF_CONDUCT.md)

---

<!-- TOC -->

- [1. Guide 🌎](#1-guide-)
  - [1.1. Features 💎](#11-features-)
  - [1.2. Getting Started ⚡](#12-getting-started-)
    - [1.2.1. Install Library](#121-install-library)
    - [1.2.2. Import](#122-import)
    - [1.2.3. Implementation](#123-implementation)
  - [1.3. Supported Endpoints 👀](#13-supported-endpoints-)
    - [1.3.1. Instance Service](#131-instance-service)
      - [1.3.1.1. v1](#1311-v1)
      - [1.3.1.2. v2](#1312-v2)
    - [1.3.2. Apps Service](#132-apps-service)
      - [1.3.2.1. v1](#1321-v1)
      - [1.3.2.2. v2](#1322-v2)
    - [1.3.3. Search Service](#133-search-service)
      - [1.3.3.1. v1](#1331-v1)
      - [1.3.3.2. v2](#1332-v2)
    - [1.3.4. Accounts Service](#134-accounts-service)
      - [1.3.4.1. v1](#1341-v1)
      - [1.3.4.2. v2](#1342-v2)
    - [1.3.5. Timelines Service](#135-timelines-service)
      - [1.3.5.1. v1](#1351-v1)
    - [1.3.6. Statuses Service](#136-statuses-service)
      - [1.3.6.1. v1](#1361-v1)
      - [1.3.6.2. v2](#1362-v2)
  - [1.4. Tips 🏄](#14-tips-)
    - [1.4.1. Method Names](#141-method-names)
    - [1.4.2. Null Parameter at Request](#142-null-parameter-at-request)
    - [1.4.3. OAuth 2.0 Authorization Code Flow](#143-oauth-20-authorization-code-flow)
    - [1.4.4. Change the Timeout Duration](#144-change-the-timeout-duration)
    - [1.4.5. Automatic Retry](#145-automatic-retry)
      - [1.4.5.1. Regular Intervals](#1451-regular-intervals)
      - [1.4.5.2. Exponential Backoff](#1452-exponential-backoff)
      - [1.4.5.3. Exponential Backoff and Jitter](#1453-exponential-backoff-and-jitter)
      - [1.4.5.4. Do Something on Retry](#1454-do-something-on-retry)
    - [1.4.6. Thrown Exceptions](#146-thrown-exceptions)
  - [1.5. Contribution 🏆](#15-contribution-)
  - [1.6. Contributors ✨](#16-contributors-)
  - [1.7. Support ❤️](#17-support-️)
  - [1.8. License 🔑](#18-license-)
  - [1.9. More Information 🧐](#19-more-information-)

<!-- /TOC -->

# 1. Guide 🌎

This library provides the easiest way to use [Mastodon API](https://docs.joinmastodon.org/client/intro/) in **Dart** and **Flutter** apps.

This library was designed and developed by **_Kato Shinya_** ([@myConsciousness](https://github.com/myConsciousness)), the author of [twitter_api_v2](https://pub.dev/packages/twitter_api_v2), and many parts are adapted from [twitter_api_v2](https://pub.dev/packages/twitter_api_v2).

**Show some ❤️ and star the repo to support the project.**

We also provide [mastodon_oauth2](https://pub.dev/packages/mastodon_oauth2) for easy [OAuth 2.0](https://docs.joinmastodon.org/spec/oauth/) when using the Mastodon API!

## 1.1. Features 💎

✅ The **wrapper library** for **[Mastodon API](https://docs.joinmastodon.org/client/intro/)**. </br>
✅ **Easily integrates** with the **Dart** & **Flutter** apps. </br>
✅ Provides response objects with a **guaranteed safe types.** </br>
✅ **Well documented** and **well tested**.</br>
✅ Supports the powerful **automatic retry**.</br>

## 1.2. Getting Started ⚡

### 1.2.1. Install Library

**With Dart:**

```bash
 dart pub add mastodon_api
```

**Or With Flutter:**

```bash
 flutter pub add mastodon_api
```

### 1.2.2. Import

```dart
import 'package:mastodon_api/mastodon_api';
```

### 1.2.3. Implementation

```dart
import 'package:mastodon_api/mastodon_api.dart';

Future<void> main() async {
  //! You need to specify mastodon instance (domain) you want to access.
  //! Also you need to get bearer token from your developer page, or OAuth 2.0.
  final mastodon = MastodonApi(
    instance: 'MASTODON_INSTANCE',
    bearerToken: 'YOUR_BEARER_TOKEN',

    //! Automatic retry is available when server error or network error occurs
    //! when communicating with the API.
    retryConfig: RetryConfig.ofExponentialBackOffAndJitter(
      maxAttempts: 5,
      onExecute: (event) => print(
        'Retry after ${event.intervalInSeconds} seconds... '
        '[${event.retryCount} times]',
      ),
    ),

    //! The default timeout is 10 seconds.
    timeout: Duration(seconds: 20),
  );

  try {
    //! Let's Toot from v1 endpoint!
    final response = await mastodon.v1.statuses.createStatus(
      text: 'Toot!',
    );

    print(response.rateLimit);
    print(response.data);
  } on UnauthorizedException catch (e) {
    print(e);
  } on RateLimitExceededException catch (e) {
    print(e);
  } on MastodonException catch (e) {
    print(e.response);
    print(e.body);
    print(e);
  }
}
```

## 1.3. Supported Endpoints 👀

### 1.3.1. Instance Service

#### 1.3.1.1. v1

| **Endpoint**                                                                                                              | **Method Name**                                                                                                                                                                                                                                                                   |
| ------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [GET /api/v1/instance (deprecated)](https://docs.joinmastodon.org/methods/instance/#v1)                                   | [lookupInformation](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/InstanceV1Service/lookupInformation.html)                                                                                                                                                      |
| [GET /api/v1/instance/peers](https://docs.joinmastodon.org/methods/instance/#peers)                                       | [lookupConnectedDomains](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/InstanceV1Service/lookupConnectedDomains.html)                                                                                                                                            |
| [GET /api/v1/instance/activity](https://docs.joinmastodon.org/methods/instance/#activity)                                 | [lookupWeeklyActivities](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/InstanceV1Service/lookupWeeklyActivities.html)                                                                                                                                            |
| [GET /api/v1/instance/rules](https://docs.joinmastodon.org/methods/instance/#rules)                                       | [lookupRules](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/InstanceV1Service/lookupRules.html)                                                                                                                                                                  |
| [GET /api/v1/instance/domain_block](https://docs.joinmastodon.org/methods/instance/#domain_blocks)                        | [lookupBlockedDomains](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/InstanceV1Service/lookupBlockedDomains.html)                                                                                                                                                |
| [GET /api/v1/example](https://docs.joinmastodon.org/methods/instance/#extended_description)                               | [lookupExtendedDescription](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/InstanceV1Service/lookupExtendedDescription.html)                                                                                                                                      |
| [GET /api/v1/announcements](https://docs.joinmastodon.org/methods/announcements/#get)                                     | [lookupAnnouncements](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/InstanceV1Service/lookupAnnouncements.html)</br>[lookupActiveAnnouncements](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/InstanceV1Service/lookupActiveAnnouncements.html) |
| [POST /api/v1/announcements/:id/dismiss](https://docs.joinmastodon.org/methods/announcements/#dismiss)                    | [createMarkAnnouncementAsRead](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/InstanceV1Service/createMarkAnnouncementAsRead.html)                                                                                                                                |
| [PUT /api/v1/announcements/:id/reactions/:name](https://docs.joinmastodon.org/methods/announcements/#put-reactions)       | [createReactionToAnnouncement](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/InstanceV1Service/createReactionToAnnouncement.html)                                                                                                                                |
| [DELETE /api/v1/announcements/:id/reactions/:name](https://docs.joinmastodon.org/methods/announcements/#delete-reactions) | [destroyReactionToAnnouncement](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/InstanceV1Service/destroyReactionToAnnouncement.html)                                                                                                                              |

#### 1.3.1.2. v2

| **Endpoint**                                                               | **Method Name**                                                                                                              |
| -------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| [GET /api/v2/instance](https://docs.joinmastodon.org/methods/instance/#v2) | [lookupInformation](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/InstanceV1Service/lookupInformation.html) |

### 1.3.2. Apps Service

#### 1.3.2.1. v1

| **Endpoint**                                                                                          | **Method Name**                                                                                                                            |
| ----------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------ |
| [POST /api/v1/apps](https://docs.joinmastodon.org/methods/apps/#create)                               | [createApplication](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AppsV1Service/createApplication.html)                   |
| [GET /api/v1/apps/verify_credentials](https://docs.joinmastodon.org/methods/apps/#verify_credentials) | [verifyOAuthCredentials](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AppsV1Service/verifyOAuthCredentials.html)         |
| [POST /api/v1/emails/confirmation](https://docs.joinmastodon.org/methods/emails/#confirmation)        | [createNewConfirmationEmail](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AppsV1Service/createNewConfirmationEmail.html) |

#### 1.3.2.2. v2

### 1.3.3. Search Service

#### 1.3.3.1. v1

#### 1.3.3.2. v2

| **Endpoint**                                                           | **Method Name**                                                                                                     |
| ---------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| [GET /api/v2/search](https://docs.joinmastodon.org/methods/search/#v2) | [searchContents](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/SarchV2Service/searchContents.html) |

### 1.3.4. Accounts Service

#### 1.3.4.1. v1

| **Endpoint**                                                                                                             | **Method Name**                                                                                                                                              |
| ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [POST /api/v1/accounts](https://docs.joinmastodon.org/methods/accounts/#create)                                          | [createAccount](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/createAccount.html)                                         |
| [GET /api/v1/accounts/verify_credentials](https://docs.joinmastodon.org/methods/accounts/#verify_credentials)            | [verifyAccountCredentials](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/verifyAccountCredentials.html)                   |
| [PATCH /api/v1/accounts/update_credentials](https://docs.joinmastodon.org/methods/accounts/#verify_credentials)          | [updateAccount](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/updateAccount.html)                                         |
| [PATCH /api/v1/accounts/update_credentials](https://docs.joinmastodon.org/methods/accounts/#verify_credentials)          | [updateAvatarImage](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/updateAvatarImage.html)                                 |
| [PATCH /api/v1/accounts/update_credentials](https://docs.joinmastodon.org/methods/accounts/#verify_credentials)          | [updateHeaderImage](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/updateHeaderImage.html)                                 |
| [GET /api/v1/accounts/:id](https://docs.joinmastodon.org/methods/accounts/#get)                                          | [lookupById](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/lookupById.html)                                               |
| [GET /api/v1/accounts/:id/statuses](https://docs.joinmastodon.org/methods/accounts/#statuses)                            | [lookupStatuses](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/lookupStatuses.html)                                       |
| [GET /api/v1/accounts/:id/followers](https://docs.joinmastodon.org/methods/accounts/#followers)                          | [lookupFollowers](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/lookupFollowers.html)                                     |
| [GET /api/v1/accounts/:id/following](https://docs.joinmastodon.org/methods/accounts/#following)                          | [lookupFollowings](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/lookupFollowings.html)                                   |
| [GET /api/v1/accounts/:id/featured_tags](https://docs.joinmastodon.org/methods/accounts/#featured_tags)                  | [lookupFeaturedTags](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/lookupFeaturedTags.html)                               |
| [GET /api/v1/accounts/:id/lists](https://docs.joinmastodon.org/methods/accounts/#lists)                                  | [lookupContainedLists](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/lookupContainedLists.html)                           |
| [POST /api/v1/accounts/:id/follow](https://docs.joinmastodon.org/methods/accounts/#follow)                               | [createFollow](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/createFollow.html)                                           |
| [POST /api/v1/accounts/:id/unfollow](https://docs.joinmastodon.org/methods/accounts/#unfollow)                           | [destroyFollow](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/destroyFollow.html)                                         |
| [POST /api/v1/accounts/:id/remove_from_followers](https://docs.joinmastodon.org/methods/accounts/#remove_from_followers) | [destroyFollower](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/destroyFollower.html)                                     |
| [POST /api/v1/accounts/:id/block](https://docs.joinmastodon.org/methods/accounts/#block)                                 | [createBlock](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/createBlock.html)                                             |
| [POST /api/v1/accounts/:id/unblock](https://docs.joinmastodon.org/methods/accounts/#unblock)                             | [destroyBlock](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/destroyBlock.html)                                           |
| [POST /api/v1/accounts/:id/mute](https://docs.joinmastodon.org/methods/accounts/#mute)                                   | [createMute](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/createMute.html)                                               |
| [POST /api/v1/accounts/:id/unmute](https://docs.joinmastodon.org/methods/accounts/#unmute)                               | [destroyMute](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/destroyMute.html)                                             |
| [POST /api/v1/accounts/:id/pin](https://docs.joinmastodon.org/methods/accounts/#pin)                                     | [createFeaturedProfile](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/createFeaturedProfile.html)                         |
| [POST /api/v1/accounts/:id/unpin](https://docs.joinmastodon.org/methods/accounts/#unpin)                                 | [destroyFeaturedProfile](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/destroyFeaturedProfile.html)                       |
| [POST /api/v1/accounts/:id/note](https://docs.joinmastodon.org/methods/accounts/#note)                                   | [updatePrivateComment](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/updatePrivateComment.html)                           |
| [GET /api/v1/accounts/relationships](https://docs.joinmastodon.org/methods/accounts/#relationships)                      | [lookupRelationships](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/lookupRelationships.html)                             |
| [GET /api/v1/accounts/familiar_followers](https://docs.joinmastodon.org/methods/accounts/#familiar_followers)            | [lookupFamiliarFollowers](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/lookupFamiliarFollowers.html)                     |
| [GET /api/v1/accounts/search](https://docs.joinmastodon.org/methods/accounts/#search)                                    | [searchAccounts](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/searchAccounts.html)                                       |
| [GET /api/v1/accounts/lookup](https://docs.joinmastodon.org/methods/accounts/#lookup)                                    | [lookupAccountFromWebFingerAddress](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/AccountsV1Service/lookupAccountFromWebFingerAddress.html) |

#### 1.3.4.2. v2

### 1.3.5. Timelines Service

#### 1.3.5.1. v1

| **Endpoint**                                                                                 | **Method Name**                                                                                                                           |
| -------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| [GET /api/v1/timelines/public](https://docs.joinmastodon.org/methods/timelines/#public)      | [lookupPublicTimeline](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/TimelinesV1Service/lookupPublicTimeline.html)       |
| [GET /api/v1/timelines/tag/:hashtag](https://docs.joinmastodon.org/methods/timelines/#tag)   | [lookupTimelineByHashtag](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/TimelinesV1Service/lookupTimelineByHashtag.html) |
| [GET /api/v1/timelines/home](https://docs.joinmastodon.org/methods/timelines/#home)          | [lookupHomeTimeline](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/TimelinesV1Service/lookupHomeTimeline.html)           |
| [GET /api/v1/timelines/list/:list_id](https://docs.joinmastodon.org/methods/timelines/#list) | [lookupListTimeline](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/TimelinesV1Service/lookupListTimeline.html)           |

### 1.3.6. Statuses Service

#### 1.3.6.1. v1

| **Endpoint**                                                                     | **Method Name**                                                                                                                                                                                                                     |
| -------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [POST /api/v1/statuses](https://docs.joinmastodon.org/methods/statuses/#create)  | [createStatus](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/StatusesV1Service/createStatus.html)                                                                                                                  |
| [GET /api/v1/polls/:id](https://docs.joinmastodon.org/methods/polls/#get)        | [lookupPollById](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/StatusesV1Service/lookupPollById.html)                                                                                                              |
| [POST /api/v1/polls/:id/votes](https://docs.joinmastodon.org/methods/polls/#get) | [createVote](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/StatusesV1Service/createVote.html)</br>[createVotes](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/StatusesV1Service/createVotes.html) |

#### 1.3.6.2. v2

## 1.4. Tips 🏄

### 1.4.1. Method Names

**mastodon_api** uses the following standard prefixes depending on endpoint characteristics. So it's very easy to find the method corresponding to the endpoint you want to use!

| Prefix      | Description                                                                                       |
| ----------- | ------------------------------------------------------------------------------------------------- |
| **lookup**  | This prefix is attached to endpoints that reference toots, accounts, etc.                         |
| **search**  | This prefix is attached to endpoints that perform extensive searches.                             |
| **connect** | This prefix is attached to endpoints with high-performance streaming.                             |
| **create**  | This prefix is attached to the endpoint performing the create state such as `Toot` and `Follow`.  |
| **destroy** | This prefix is attached to the endpoint performing the destroy state such as `Toot` and `Follow`. |
| **update**  | This prefix is attached to the endpoint performing the update state.                              |
| **upload**  | This prefix is attached to the endpoint performing the media uploading.                           |
| **verify**  | This prefix is attached to the endpoint performing the verify specific states or values.          |

### 1.4.2. Null Parameter at Request

In this library, parameters that are not required at request time, i.e., optional parameters, are defined as nullable.
However, developers do not need to be aware of the null parameter when sending requests when using this library.

It means the parameters specified with a null value are safely removed and ignored before the request is sent.

For example, arguments specified with null are ignored in the following request.

```dart
import 'package:mastodon_api/mastodon_api.dart';

Future<void> main() async {
  final mastodon = MastodonApi(
    instance: 'MASTODON_INSTANCE',
    bearerToken: 'YOUR_BEARER_TOKEN',
  );

  await mastodon.v1.statuses.createStatus(
    text: 'Toot!',

    //! These parameters are ignored at request because they are null.
    poll: null,
    sensitive: null,
  );
}
```

### 1.4.3. OAuth 2.0 Authorization Code Flow

**Mastodon API** supports authentication methods with [OAuth 2.0](https://docs.joinmastodon.org/methods/oauth/), and it allows users of apps using **Mastodon API** to request authorization for the minimum necessary [scope](https://docs.joinmastodon.org/api/oauth-scopes/) of operation.

Since **OAuth2.0** authentication requires going through a browser, **mastodon_api** does not provide this specification for compatibility with CLI applications. Instead, we provide [mastodon_oauth2](https://pub.dev/packages/mastodon_oauth2), a library for Flutter apps.

The **mastodon_oauth2** is 100% compatible with **mastodon_api** and can be used. You can see more details from links below.

- [Repository](https://github.com/mastodon-dart/mastodon-oauth2)
- [Pub.dev](https://pub.dev/packages/mastodon_oauth2)

### 1.4.4. Change the Timeout Duration

The library specifies a default timeout of **10 seconds** for all API communications.

However, there may be times when you wish to specify an arbitrary timeout duration. If there is such a demand, an arbitrary timeout duration can be specified as follows.

```dart
import 'package:mastodon_api/mastodon_api.dart';

Future<void> main() {
 final mastodon = MastodonApi(
    instance: 'MASTODON_INSTANCE',
    bearerToken: 'YOUR_TOKEN_HERE',

    //! The default timeout is 10 seconds.
    timeout: Duration(seconds: 20),
  );
}
```

### 1.4.5. Automatic Retry

Due to the nature of this library's communication with external systems, timeouts may occur due to inevitable communication failures or temporary crashes of the server to which requests are sent.

When such timeouts occur, an effective countermeasure in many cases is to send the request again after a certain interval. And **mastodon_api** provides an **automatic retry** feature as a solution to this problem.

There are 3 retry methods provided by **mastodon_api**.

| Retry Strategy                 | Constructor                               | Description                                                                                                             |
| ------------------------------ | ----------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| Regular Intervals              | RetryConfig.ofRegularIntervals            | Retry at regular intervals.                                                                                             |
| Exponential Backoff            | RetryConfig.ofExponentialBackOff          | The retry interval is increased exponentially according to the number of retries.                                       |
| Exponential Backoff and Jitter | RetryConfig.ofExponentialBackOffAndJitter | A random number called Jitter is added to increase the retry interval exponentially according to the number of retries. |

Also, errors subject to retry are as follows.

- When the status code of the response returned from Mastodon is `500` or `503`.
- When the network is temporarily lost and a `SocketException` is thrown.
- When communication times out temporarily and a `TimeoutException` is thrown

#### 1.4.5.1. Regular Intervals

It would be easy to imagine **retries at regular intervals**. For example, if a timeout occurs and the request is assumed to be retried 3 times, waiting for 5 seconds and then sending the request again, it can be defined as follows.

```dart
import 'package:mastodon_api/mastodon_api.dart';

Future<void> main() async {
  final mastodon = MastodonApi(
    instance: 'MASTODON_INSTANCE',
    bearerToken: 'YOUR_TOKEN_HERE',

    //! Add these lines.
    retryConfig: RetryConfig.ofRegularIntervals(
      maxAttempts: 3,
      intervalInSeconds: 5,
    ),
  );
}
```

#### 1.4.5.2. Exponential Backoff

Although retries can be effective by simply performing them at regular intervals as in the above example, sending a large number of requests at regular intervals when the server to which the request is being sent is experiencing a failure is something that should be avoided. Even if the network or server is already down, the retry process can further aggravate the situation by adding to the load.

The solution to these problems is to increase the interval exponentially for each retry. This is an algorithm called `Exponential Backoff` and **mastodon_api** supports a specification that allows easy use of this algorithm.

The **Exponential Backoff** algorithm can be applied on retries by defining **RetryConfig** as follows.

```dart
import 'package:mastodon_api/mastodon_api.dart';

Future<void> main() async {
  final mastodon = MastodonApi(
    instance: 'MASTODON_INSTANCE',
    bearerToken: 'YOUR_TOKEN_HERE',

    //! Add these lines.
    retryConfig: RetryConfig.ofExponentialBackOff(
      maxAttempts: 3,
    ),
  );
}
```

In the above implementation, the interval increases exponentially for each retry count. It can be expressed by next formula.

> 2 ^ retryCount

#### 1.4.5.3. Exponential Backoff and Jitter

Although the algorithm introduced earlier that exponentially increases the retry interval is already powerful, some may believe that it is not yet sufficient to distribute the sensation of retries. It's more distributed than equally spaced retries, but retries still occur at static intervals.

This problem can be solved by adding a random number called **Jitter**, and this method is called the **Exponential Backoff and Jitter** algorithm. By adding a random number to the exponentially increasing retry interval, the retry interval can be distributed more flexibly.

Similar to the previous example, **mastodon_api** can be implemented as follows.

```dart
import 'package:mastodon_api/mastodon_api.dart';

Future<void> main() async {
  final mastodon = MastodonApi(
    instance: 'MASTODON_INSTANCE',
    bearerToken: 'YOUR_TOKEN_HERE',

    //! Add these lines.
    retryConfig: RetryConfig.ofExponentialBackOffAndJitter(
      maxAttempts: 3,
    ),
  );
}
```

In the above implementation, the interval increases exponentially for each retry count with jitter. It can be expressed by next formula.

> **(2 ^ retryCount) + jitter(Random Number between 0 ~ 3)**

#### 1.4.5.4. Do Something on Retry

It would be useful to output logging on retries and a popup notifying the user that a retry has been executed. So **mastodon_api** provides callbacks that can perform arbitrary processing when retries are executed.

It can be implemented as follows.

```dart
import 'package:mastodon_api/mastodon_api.dart';

Future<void> main() async {
  final mastodon = MastodonApi(
    instance: 'MASTODON_INSTANCE',
    bearerToken: 'YOUR_TOKEN_HERE',
    retryConfig: RetryConfig.ofRegularIntervals(
      maxAttempts: 3,
      intervalInSeconds: 5,

      //! Add this line.
      onExecute: (event) => print('Retrying... ${event.retryCount} times.'),
    ),
  );
}
```

The [RetryEvent](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/RetryEvent-class.html) passed to the callback contains information on retries.

### 1.4.6. Thrown Exceptions

**mastodon_api** provides a convenient exception object for easy handling of exceptional responses and errors returned from Mastodon API.

| Exception                                                                                                                          | Description                                                                                                           |
| ---------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| [MastodonException](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/MastodonException-class.html)                   | The most basic exception object. For example, it can be used to search for posts that have already been deleted, etc. |
| [UnauthorizedException](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/UnauthorizedException-class.html)           | Thrown when authentication fails with the specified access token.                                                     |
| [RateLimitExceededException](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/RateLimitExceededException-class.html) | Thrown when the request rate limit is exceeded.                                                                       |
| [DataNotFoundException](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/DataNotFoundException-class.html)           | Thrown when response has no body or data field in body string, or when 404 status is returned.                        |

Also, all of the above exceptions thrown from the **mastodon_api** process extend [MastodonException](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/MastodonException-class.html). This means that you can take all exceptions as [MastodonException](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/MastodonException-class.html) or handle them as certain exception types, depending on the situation.

However note that, if you receive an individual type exception, be sure to define the process so that the individual exception type is cached before [MastodonException](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/MastodonException-class.html). Otherwise, certain type exceptions will also be caught as [MastodonException](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/MastodonException-class.html).

Therefore, if you need to catch a specific type of exception in addition to [MastodonException](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/MastodonException-class.html), be sure to catch [MastodonException](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/MastodonException-class.html) in the bottom catch clause as in the following example.

```dart
import 'package:mastodon_api/mastodon_api.dart';

Future<void> main() async {
  final mastodon = MastodonApi(
    instance: 'MASTODON_INSTANCE',
    bearerToken: 'YOUR_TOKEN_HERE',
  );

  try {
    final response = await mastodon.v1.statuses.createStatus(text: 'Toot!');

    print(response);
  } on UnauthorizedException catch (e) {
    print(e);
  } on RateLimitExceededException catch (e) {
    print(e);
  } on MastodonException catch (e) {
    print(e);
  }
}
```

## 1.5. Contribution 🏆

If you would like to contribute to **mastodon_api**, please create an [issue](https://github.com/mastodon-dart/mastodon-api/issues) or create a Pull Request.

There are many ways to contribute to the OSS. For example, the following subjects can be considered:

- There are request parameters or response fields that are not implemented.
- Documentation is outdated or incomplete.
- Have a better way or idea to achieve the functionality.
- etc...

You can see more details from resources below:

- [Contributor Covenant Code of Conduct](https://github.com/mastodon-dart/mastodon-api/blob/main/CODE_OF_CONDUCT.md)
- [Contribution Guidelines](https://github.com/mastodon-dart/mastodon-api/blob/main/CONTRIBUTING.md)
- [Style Guide](https://github.com/mastodon-dart/mastodon-api/blob/main/STYLEGUIDE.md)

Or you can create a [discussion](https://github.com/mastodon-dart/mastodon-api/discussions) if you like.

**Feel free to join this development, diverse opinions make software better!**

## 1.6. Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center"><a href="https://github.com/myConsciousness"><img src="https://avatars.githubusercontent.com/u/13072231?v=4?s=100" width="100px;" alt="KATO, Shinya / 加藤 真也"/><br /><sub><b>KATO, Shinya / 加藤 真也</b></sub></a><br /><a href="https://github.com/mastodon-dart/mastodon-api/commits?author=myConsciousness" title="Code">💻</a> <a href="https://github.com/mastodon-dart/mastodon-api/commits?author=myConsciousness" title="Documentation">📖</a> <a href="#design-myConsciousness" title="Design">🎨</a> <a href="#example-myConsciousness" title="Examples">💡</a> <a href="#fundingFinding-myConsciousness" title="Funding Finding">🔍</a> <a href="#ideas-myConsciousness" title="Ideas, Planning, & Feedback">🤔</a> <a href="#maintenance-myConsciousness" title="Maintenance">🚧</a> <a href="#security-myConsciousness" title="Security">🛡️</a> <a href="https://github.com/mastodon-dart/mastodon-api/commits?author=myConsciousness" title="Tests">⚠️</a> <a href="#tutorial-myConsciousness" title="Tutorials">✅</a></td>
      <td align="center"><a href="https://github.com/MarkOSullivan94"><img src="https://avatars.githubusercontent.com/u/6950843?v=4?s=100" width="100px;" alt="Mark O'Sullivan"/><br /><sub><b>Mark O'Sullivan</b></sub></a><br /><a href="https://github.com/mastodon-dart/mastodon-api/commits?author=MarkOSullivan94" title="Documentation">📖</a> <a href="#ideas-MarkOSullivan94" title="Ideas, Planning, & Feedback">🤔</a> <a href="#question-MarkOSullivan94" title="Answering Questions">💬</a></td>
      <td align="center"><a href="https://github.com/Elleo"><img src="https://avatars.githubusercontent.com/u/59350?v=4?s=100" width="100px;" alt="Mike Sheldon"/><br /><sub><b>Mike Sheldon</b></sub></a><br /><a href="#ideas-Elleo" title="Ideas, Planning, & Feedback">🤔</a> <a href="#content-Elleo" title="Content">🖋</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!

## 1.7. Support ❤️

The simplest way to show us your support is by **giving the project a star** at [GitHub](https://github.com/mastodon-dart/mastodon-api) and [Pub.dev](https://pub.dev/packages/mastodon_api).

You can also support this project by **becoming a sponsor** on GitHub:

<div align="left">
  <p>
    <a href="https://github.com/sponsors/myconsciousness">
      <img src="https://cdn.ko-fi.com/cdn/kofi3.png?v=3" height="50" width="210" alt="myconsciousness" />
    </a>
  </p>
</div>

You can also show on your repository that your app is made with **mastodon_api** by using one of the following badges:

[![Powered by mastodon_api](https://img.shields.io/badge/Powered%20by-mastodon_api-00acee.svg)](https://github.com/mastodon-dart/mastodon-api)
[![Powered by mastodon_api](https://img.shields.io/badge/Powered%20by-mastodon_api-00acee.svg?style=flat-square)](https://github.com/mastodon-dart/mastodon-api)
[![Powered by mastodon_api](https://img.shields.io/badge/Powered%20by-mastodon_api-00acee.svg?style=for-the-badge)](https://github.com/mastodon-dart/mastodon-api)

```license
[![Powered by mastodon_api](https://img.shields.io/badge/Powered%20by-mastodon_api-00acee.svg)](https://github.com/mastodon-dart/mastodon-api)
[![Powered by mastodon_api](https://img.shields.io/badge/Powered%20by-mastodon_api-00acee.svg?style=flat-square)](https://github.com/mastodon-dart/mastodon-api)
[![Powered by mastodon_api](https://img.shields.io/badge/Powered%20by-mastodon_api-00acee.svg?style=for-the-badge)](https://github.com/mastodon-dart/mastodon-api)
```

## 1.8. License 🔑

All resources of **mastodon_api** is provided under the `BSD-3` license.

```license
Copyright 2022 Kato Shinya. All rights reserved.
Redistribution and use in source and binary forms, with or without
modification, are permitted provided the conditions.
```

> **Note**</br>
> License notices in the source are strictly validated based on `.github/header-checker-lint.yml`. Please check [header-checker-lint.yml](https://github.com/mastodon-dart/mastodon-api/tree/main/.github/header-checker-lint.yml) for the permitted standards.

## 1.9. More Information 🧐

**mastodon_api** was designed and implemented by **_Kato Shinya ([@myConsciousness](https://github.com/myConsciousness))_**.

- [Creator Profile](https://github.com/myConsciousness)
- [License](https://github.com/mastodon-dart/mastodon-api/blob/main/LICENSE)
- [API Document](https://pub.dev/documentation/mastodon_api/latest/mastodon_api/mastodon_api-library.html)
- [Release Note](https://github.com/mastodon-dart/mastodon-api/releases)
- [Bug Report](https://github.com/mastodon-dart/mastodon-api/issues)
