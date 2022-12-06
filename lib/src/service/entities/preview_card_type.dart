// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

/// The type of the preview card.
enum PreviewCardType {
  /// Link OEmbed.
  link,

  /// Photo OEmbed.
  photo,

  /// Video OEmbed.
  video,

  /// iframe OEmbed. Not currently accepted, so won’t show up in practice.
  rich,
}
