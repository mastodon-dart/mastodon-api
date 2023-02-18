# Release Note

## v0.5.3

- Supported `directory API methods`. ([#37](https://github.com/mastodon-dart/mastodon-api/issues/37))
  - `GET /api/v1/directory`
- Supported `scheduled_statuses API methods`. ([#26](https://github.com/mastodon-dart/mastodon-api/issues/26))
  - `POST /api/v1/statuses`
  - `GET /api/v1/scheduled_statuses`
  - `GET /api/v1/scheduled_statuses/:id`
  - `PUT /api/v1/scheduled_statuses/:id`
  - `DELETE /api/v1/scheduled_statuses/:id`

## v0.5.2

- Internal processing when searching for data from multiple IDs has been corrected. ([#136](https://github.com/mastodon-dart/mastodon-api/issues/136))

## v0.5.1

- Added `follow_requests API methods`. ([#16](https://github.com/mastodon-dart/mastodon-api/issues/16))
  - `GET /api/v1/follow_requests`
  - `POST /api/v1/follow_requests/:account_id/authorize`
  - `POST /api/v1/follow_requests/:account_id/reject`
- Added `oembed API methods`. ([#51](https://github.com/mastodon-dart/mastodon-api/issues/51))
  - `GET /api/oembed`

## v0.5.0

- The return type of `MastodonResponse<bool>` has been modified to assign an object corresponding to each endpoint. Basically, if there is no return value for a successful POST or DELETE method, an `Empty` object is returned as `data`. It means that the request was successful if `Empty` is returned; if the request failed, an exception is thrown. ([#125](https://github.com/mastodon-dart/mastodon-api/issues/125))
- Added `domain_blocks API methods`. ([#12](https://github.com/mastodon-dart/mastodon-api/issues/12))
  - `GET /api/v1/domain_blocks`
  - `POST /api/v1/domain_blocks`
  - `DELETE /api/v1/domain_blocks`
- Added response headers in `MastodonResponse`. ([#128](https://github.com/mastodon-dart/mastodon-api/issues/128))
- Added HTTP status in `MastodonResponse`. ([#126](https://github.com/mastodon-dart/mastodon-api/issues/126))
- Added HTTP request in `MastodonResponse`. ([#127](https://github.com/mastodon-dart/mastodon-api/issues/127))

## v0.4.0

- Added endpoints in `StatusesV1Service`. ([#23](https://github.com/mastodon-dart/mastodon-api/issues/23))
  - `POST /api/v1/statuses`
  - `GET /api/v1/statuses/:id`
  - `DELETE /api/v1/statuses/:id`
  - `GET /api/v1/statuses/:id/context`
  - `GET /api/v1/statuses/:id/reblogged_by`
  - `GET /api/v1/statuses/:id/favourited_by`
  - `POST /api/v1/statuses/:id/favourite`
  - `POST /api/v1/statuses/:id/unfavourite`
  - `POST /api/v1/statuses/:id/reblog`
  - `POST /api/v1/statuses/:id/unreblog`
  - `POST /api/v1/statuses/:id/bookmark`
  - `POST /api/v1/statuses/:id/unbookmark`
  - `POST /api/v1/statuses/:id/mute`
  - `POST /api/v1/statuses/:id/unmute`
  - `POST /api/v1/statuses/:id/pin`
  - `POST /api/v1/statuses/:id/unpin`
  - `PUT /api/v1/statuses/:id`
  - `GET /api/v1/statuses/:id/history`
  - `GET /api/v1/statuses/:id/source`
- Split the `PreviewCard` object into a `TrendsLink` object. Now `List<TrendsLink>` is returned from `InstanceV1Service.lookupTrendingLinks`. The fields are the same as in PreviewCard before the modification, so there is no effect if the type is not explicitly specified. If you have explicitly specified the `PreviewCard` as type, rewrite it to `TrendsLink` if necessary. ([#91](https://github.com/mastodon-dart/mastodon-api/issues/91))
- Add `NotificationsV1Service`. ([#32](https://github.com/mastodon-dart/mastodon-api/issues/32))
  - `GET /api/v1/notifications`
  - `GET /api/v1/notification/:id`
  - `POST /api/v1/notifications/clear`
  - `POST /api/v1/notifications/:id/dismiss`

## v0.3.3

- Supported `custom_emojis API methods`. ([#38](https://github.com/mastodon-dart/mastodon-api/issues/38))
  - `GET /api/v1/custom_emojis`

## v0.3.2

- Added links in `README`.

## v0.3.1

- Supported `mutes API methods`. ([#10](https://github.com/mastodon-dart/mastodon-api/issues/10))
  - `GET /api/v1/mutes`
- Supported `favourites API methods`. ([#9](https://github.com/mastodon-dart/mastodon-api/issues/9))
  - `GET /api/v1/favourites`
- Supported `blocks API methods`. ([#11](https://github.com/mastodon-dart/mastodon-api/issues/11))
  - `GET /api/v1/blocks`
- Supported `bookmarks API methods`. ([#8](https://github.com/mastodon-dart/mastodon-api/issues/8))
  - `GET /api/v1/bookmarks`

## v0.3.0

- Supported `suggestions API methods`. ([#21](https://github.com/mastodon-dart/mastodon-api/issues/21))
  - `GET /api/v2/suggestions`
  - `DELETE /api/v1/suggestions/:account_id`
- Supported `conversations API methods`. ([#28](https://github.com/mastodon-dart/mastodon-api/issues/28))
  - `GET /api/v1/conversations`
  - `DELETE /api/v1/conversations/:id`
  - `POST /api/v1/conversations/:id/read`
- Supported `markers API methods`. ([#30](https://github.com/mastodon-dart/mastodon-api/issues/30))
  - `GET /api/v1/markers`
  - `POST /api/v1/markers`
- Exposed objects. ([#94](https://github.com/mastodon-dart/mastodon-api/issues/94))
  - `package:mastodon_api/src/service/entities/rule.dart`
  - `package:mastodon_api/src/service/v1/instance/instance_v1_service.dart`
  - `package:mastodon_api/src/service/v2/instance/instance_v2_service.dart`
- Supported `tags API methods`. ([#22](https://github.com/mastodon-dart/mastodon-api/issues/22))
  - `GET /api/v1/tags/:id`
  - `POST /api/v1/tags/:id/follow`
  - `POST /api/v1/tags/:id/unfollow`
- Supported `reports API methods`. ([#15](https://github.com/mastodon-dart/mastodon-api/issues/15))
  - `POST /api/v1/reports`
- Supported retry algorithm have been changed to only `Exponential BackOff and Jitter`. All of the following factory constructors provided until now are deprecated and should be modified by `v0.5.0` to use the default constructor of `RetryConfig`. The following deprecated factory constructors will be removed in `v0.5.0`, and the `Exponential BackOff and Jitter` algorithm will always be used regardless of constructor. ([#101](https://github.com/mastodon-dart/mastodon-api/issues/101))
  - `ofRegularIntervals`
  - `ofExponentialBackOff`
  - `ofExponentialBackOffAndJitter`
- Supported `endorsements API methods`. ([#17](https://github.com/mastodon-dart/mastodon-api/issues/17))
  - `GET /api/v1/endorsements`

## v0.2.2

- Supported `preferences API methods`. ([#19](https://github.com/mastodon-dart/mastodon-api/issues/19))
  - `GET /api/v1/preferences`
- Fixed ([#78](https://github.com/mastodon-dart/mastodon-api/issues/78)).
- Supported `featured_tags API methods`. ([#18](https://github.com/mastodon-dart/mastodon-api/issues/18))
  - `GET /api/v1/featured_tags`
  - `POST /api/v1/featured_tags`
  - `DELETE /api/v1/featured_tags/:id`
  - `GET /api/v1/featured_tags/suggestions`
- Supported `followed_tags API methods`. ([#20](https://github.com/mastodon-dart/mastodon-api/issues/20))
  - `GET /api/v1/followed_tags`

## v0.2.1

- Added links of `Accounts Service` in `README`.

## v0.2.0

- Supported `polls API methods`. ([#25](https://github.com/mastodon-dart/mastodon-api/issues/25))
  - `GET /api/v1/polls/:id`
  - `POST /api/v1/polls/:id/votes`
- Supported `trends API methods`. ([#36](https://github.com/mastodon-dart/mastodon-api/issues/36))
  - `GET /api/v1/trends/tags`
  - `GET /api/v1/trends/statuses`
  - `GET /api/v1/trends/links`
- Supported `announcements API methods`. ([#39](https://github.com/mastodon-dart/mastodon-api/issues/39))
  - `GET /api/v1/announcements`
  - `POST /api/v1/announcements/:id/dismiss`
  - `PUT /api/v1/announcements/:id/reactions/:name`
  - `DELETE /api/v1/announcements/:id/reactions/:name`
- Supported `accounts API methods`. ([#7](https://github.com/mastodon-dart/mastodon-api/issues/7))
  - `POST /api/v1/accounts`
  - `GET /api/v1/accounts/verify_credentials`
  - `PATCH /api/v1/accounts/update_credentials`
  - `GET /api/v1/accounts/:id`
  - `GET /api/v1/accounts/:id/statuses`
  - `GET /api/v1/accounts/:id/followers`
  - `GET /api/v1/accounts/:id/following`
  - `GET /api/v1/accounts/:id/featured_tags`
  - `GET /api/v1/accounts/:id/lists`
  - `POST /api/v1/accounts/:id/follow`
  - `POST /api/v1/accounts/:id/unfollow`
  - `POST /api/v1/accounts/:id/remove_from_followers`
  - `POST /api/v1/accounts/:id/block`
  - `POST /api/v1/accounts/:id/unblock`
  - `POST /api/v1/accounts/:id/mute`
  - `POST /api/v1/accounts/:id/unmute`
  - `POST /api/v1/accounts/:id/pin`
  - `POST /api/v1/accounts/:id/unpin`
  - `POST /api/v1/accounts/:id/note`
  - `GET /api/v1/accounts/relationships`
  - `GET /api/v1/accounts/familiar_followers`
  - `GET /api/v1/accounts/search`
  - `GET /api/v1/accounts/lookup`

## v0.1.0

- Supported `search API methods`. ([#34](https://github.com/mastodon-dart/mastodon-api/issues/34))
  - `GET /api/v2/search`
- Supported `timelines API methods`. ([#27](https://github.com/mastodon-dart/mastodon-api/issues/27))
  - `GET /api/v1/timelines/public`
  - `GET /api/v1/timelines/tag/:hashtag`
  - `GET /api/v1/timelines/home`
  - `GET /api/v1/timelines/list/:list_id`
- Supported `apps API methods`. ([#4](https://github.com/mastodon-dart/mastodon-api/issues/4))
  - `POST /api/v1/apps`
  - `GET /api/v1/apps/verify_credentials`
- Supported `instance API methods`. ([#35](https://github.com/mastodon-dart/mastodon-api/issues/35))
  - `GET /api/v2/instance`
  - `GET /api/v1/instance`
  - `GET /api/v1/instance/peers`
  - `GET /api/v1/instance/activity`
  - `GET /api/v1/instance/rules`
  - `GET /api/v1/instance/domain_block`
  - `GET /api/v1/example`
- Supported `emails API methods`. ([#6](https://github.com/mastodon-dart/mastodon-api/issues/6))
  - `POST /api/v1/emails/confirmation`

## v0.0.1

- Supported `POST /api/v1/statuses`.

## v0.0.0

- Let's start.
