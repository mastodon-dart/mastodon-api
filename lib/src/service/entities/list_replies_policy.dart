// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

enum ListRepliesPolicy {
  /// Show replies to any followed user.
  followed,

  /// Show replies to members of the list.
  list,

  /// Show replies to no one.
  none,
}
