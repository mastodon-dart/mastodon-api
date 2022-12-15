// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'serializable.dart';

enum MimeType implements Serializable {
  /// `image/jpeg`
  @JsonValue('image/jpeg')
  imageJpg('image/jpeg'),

  /// `image/png`
  @JsonValue('image/png')
  png('image/png'),

  /// `image/gif`
  @JsonValue('image/gif')
  gif('image/gif'),

  /// `image/heic`
  @JsonValue('image/heic')
  heic('image/heic'),

  /// `image/heif`
  @JsonValue('image/heif')
  heif('image/heif'),

  /// `image/webp`
  @JsonValue('image/webp')
  webp('image/webp'),

  /// `image/avif`
  @JsonValue('image/avif')
  avif('image/avif'),

  /// `video/webm`
  @JsonValue('video/webm')
  webmVideo('video/webm'),

  /// `video/mp4`
  @JsonValue('video/mp4')
  mp4Video('video/mp4'),

  /// `video/quicktime`
  @JsonValue('video/quicktime')
  quicktime('video/quicktime'),

  /// `video/ogg`
  @JsonValue('video/ogg')
  oggVideo('video/ogg'),

  /// `video/x-ms-asf`
  @JsonValue('video/x-ms-asf')
  asf('video/x-ms-asf'),

  /// `audio/wave`
  @JsonValue('audio/wave')
  wave('audio/wave'),

  /// `audio/wav`
  @JsonValue('audio/wav')
  wav('audio/wav'),

  /// `audio/x-wav`
  @JsonValue('audio/x-wav')
  xwav('audio/x-wav'),

  /// `audio/x-pn-wave`
  @JsonValue('audio/x-pn-wave')
  xpnwav('audio/x-pn-wave'),

  /// `audio/vnd.wave`
  @JsonValue('audio/vnd.wave')
  vndWave('audio/vnd.wave'),

  /// `audio/ogg`
  @JsonValue('audio/ogg')
  oggAudio('audio/ogg'),

  /// `audio/vorbis`
  @JsonValue('audio/vorbis')
  vorbis('audio/vorbis'),

  /// `audio/mpeg`
  @JsonValue('audio/mpeg')
  mpeg('audio/mpeg'),

  /// `audio/mp3`
  @JsonValue('audio/mp3')
  mp3('audio/mp3'),

  /// `audio/webm`
  @JsonValue('audio/webm')
  webmAudio('audio/webm'),

  /// `audio/flac`
  @JsonValue('audio/flac')
  flac('audio/flac'),

  /// `audio/aac`
  @JsonValue('audio/aac')
  aac('audio/aac'),

  /// `audio/m4a`
  @JsonValue('audio/m4a')
  m4a('audio/m4a'),

  /// `audio/x-m4a`
  @JsonValue('audio/x-m4a')
  xm4a('audio/x-m4a'),

  /// `audio/mp4`
  @JsonValue('audio/mp4')
  mp4Audio('audio/mp4'),

  /// `audio/3gpp`
  @JsonValue('audio/3gpp')
  $3gpp('audio/3gpp');

  @override
  final String value;

  const MimeType(this.value);
}
