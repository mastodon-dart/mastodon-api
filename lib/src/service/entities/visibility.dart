// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

/// Represents the visibility of specific status.
enum Visibility {
  /// Visible to everyone, shown in public timelines.
  public,

  /// Visible to public, but not included in public timelines.
  unlisted,

  /// Visible to followers only, and to any mentioned users.
  private,

  ///  Visible only to mentioned users.
  direct,
}
