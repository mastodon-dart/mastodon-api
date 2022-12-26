# Release Note

## v0.3.0

- Supported `preferences API methods`. ([#19](https://github.com/mastodon-dart/mastodon-api/issues/19))
  - `GET /api/v1/preferences`
- Fixed ([#78](https://github.com/mastodon-dart/mastodon-api/issues/78)).
- Supported `featured_tags API methods`. ([#18](https://github.com/mastodon-dart/mastodon-api/issues/18))
  - `GET /api/v1/featured_tags`
  - `POST /api/v1/featured_tags`
  - `DELETE /api/v1/featured_tags/:id`
  - `GET /api/v1/featured_tags/suggestions`

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
