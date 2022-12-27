// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

enum MediaAttachmentType {
  /// Unsupported or unrecognized file type
  unknown,

  /// Static image
  image,

  /// Looping, soundless animation
  gifv,

  /// Video clip
  video,

  /// Audio track
  audio,
}
