// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Announcement _$AnnouncementFromJson(Map<String, dynamic> json) {
  return _Announcement.fromJson(json);
}

/// @nodoc
mixin _$Announcement {
  /// The ID of the announcement in the database.
  String get id => throw _privateConstructorUsedError;

  /// The text of the announcement.
  String get content => throw _privateConstructorUsedError;

  /// Whether the announcement is currently active.
  @JsonKey(name: 'published')
  bool? get isPublished => throw _privateConstructorUsedError;

  /// Whether the announcement should start and end on dates only instead of
  /// date times.
  ///
  /// Will be `false` if there is no `startsAt` or `endsAt`.
  @JsonKey(name: 'all_day')
  bool get isAllDay => throw _privateConstructorUsedError;

  /// Whether the announcement has been read by the current user.
  @JsonKey(name: 'read')
  bool? get isRead => throw _privateConstructorUsedError;

  /// When the announcement will start.
  DateTime? get startsAt => throw _privateConstructorUsedError;

  /// When the announcement will end.
  DateTime? get endsAt => throw _privateConstructorUsedError;

  /// When the announcement was published.
  DateTime get publishedAt => throw _privateConstructorUsedError;

  /// When the announcement was last updated.
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Accounts mentioned in the announcement text.
  List<AnnouncementAccount> get mentions => throw _privateConstructorUsedError;

  /// Statuses linked in the announcement text.
  List<AnnouncementStatus> get statuses => throw _privateConstructorUsedError;

  /// Tags linked in the announcement text.
  List<Tag> get tags => throw _privateConstructorUsedError;

  /// Custom emoji used in the announcement text.
  List<Emoji> get emojis => throw _privateConstructorUsedError;

  /// Emoji reactions attached to the announcement.
  List<EmojiReaction> get reactions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnouncementCopyWith<Announcement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementCopyWith<$Res> {
  factory $AnnouncementCopyWith(
          Announcement value, $Res Function(Announcement) then) =
      _$AnnouncementCopyWithImpl<$Res, Announcement>;
  @useResult
  $Res call(
      {String id,
      String content,
      @JsonKey(name: 'published') bool? isPublished,
      @JsonKey(name: 'all_day') bool isAllDay,
      @JsonKey(name: 'read') bool? isRead,
      DateTime? startsAt,
      DateTime? endsAt,
      DateTime publishedAt,
      DateTime updatedAt,
      List<AnnouncementAccount> mentions,
      List<AnnouncementStatus> statuses,
      List<Tag> tags,
      List<Emoji> emojis,
      List<EmojiReaction> reactions});
}

/// @nodoc
class _$AnnouncementCopyWithImpl<$Res, $Val extends Announcement>
    implements $AnnouncementCopyWith<$Res> {
  _$AnnouncementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? isPublished = freezed,
    Object? isAllDay = null,
    Object? isRead = freezed,
    Object? startsAt = freezed,
    Object? endsAt = freezed,
    Object? publishedAt = null,
    Object? updatedAt = null,
    Object? mentions = null,
    Object? statuses = null,
    Object? tags = null,
    Object? emojis = null,
    Object? reactions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isPublished: freezed == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAllDay: null == isAllDay
          ? _value.isAllDay
          : isAllDay // ignore: cast_nullable_to_non_nullable
              as bool,
      isRead: freezed == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool?,
      startsAt: freezed == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endsAt: freezed == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mentions: null == mentions
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementAccount>,
      statuses: null == statuses
          ? _value.statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementStatus>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      emojis: null == emojis
          ? _value.emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as List<Emoji>,
      reactions: null == reactions
          ? _value.reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as List<EmojiReaction>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnnouncementCopyWith<$Res>
    implements $AnnouncementCopyWith<$Res> {
  factory _$$_AnnouncementCopyWith(
          _$_Announcement value, $Res Function(_$_Announcement) then) =
      __$$_AnnouncementCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String content,
      @JsonKey(name: 'published') bool? isPublished,
      @JsonKey(name: 'all_day') bool isAllDay,
      @JsonKey(name: 'read') bool? isRead,
      DateTime? startsAt,
      DateTime? endsAt,
      DateTime publishedAt,
      DateTime updatedAt,
      List<AnnouncementAccount> mentions,
      List<AnnouncementStatus> statuses,
      List<Tag> tags,
      List<Emoji> emojis,
      List<EmojiReaction> reactions});
}

/// @nodoc
class __$$_AnnouncementCopyWithImpl<$Res>
    extends _$AnnouncementCopyWithImpl<$Res, _$_Announcement>
    implements _$$_AnnouncementCopyWith<$Res> {
  __$$_AnnouncementCopyWithImpl(
      _$_Announcement _value, $Res Function(_$_Announcement) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? isPublished = freezed,
    Object? isAllDay = null,
    Object? isRead = freezed,
    Object? startsAt = freezed,
    Object? endsAt = freezed,
    Object? publishedAt = null,
    Object? updatedAt = null,
    Object? mentions = null,
    Object? statuses = null,
    Object? tags = null,
    Object? emojis = null,
    Object? reactions = null,
  }) {
    return _then(_$_Announcement(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isPublished: freezed == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAllDay: null == isAllDay
          ? _value.isAllDay
          : isAllDay // ignore: cast_nullable_to_non_nullable
              as bool,
      isRead: freezed == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool?,
      startsAt: freezed == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endsAt: freezed == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mentions: null == mentions
          ? _value._mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementAccount>,
      statuses: null == statuses
          ? _value._statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementStatus>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      emojis: null == emojis
          ? _value._emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as List<Emoji>,
      reactions: null == reactions
          ? _value._reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as List<EmojiReaction>,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_Announcement implements _Announcement {
  const _$_Announcement(
      {required this.id,
      required this.content,
      @JsonKey(name: 'published') this.isPublished,
      @JsonKey(name: 'all_day') required this.isAllDay,
      @JsonKey(name: 'read') this.isRead,
      this.startsAt,
      this.endsAt,
      required this.publishedAt,
      required this.updatedAt,
      required final List<AnnouncementAccount> mentions,
      required final List<AnnouncementStatus> statuses,
      required final List<Tag> tags,
      required final List<Emoji> emojis,
      required final List<EmojiReaction> reactions})
      : _mentions = mentions,
        _statuses = statuses,
        _tags = tags,
        _emojis = emojis,
        _reactions = reactions;

  factory _$_Announcement.fromJson(Map<String, dynamic> json) =>
      _$$_AnnouncementFromJson(json);

  /// The ID of the announcement in the database.
  @override
  final String id;

  /// The text of the announcement.
  @override
  final String content;

  /// Whether the announcement is currently active.
  @override
  @JsonKey(name: 'published')
  final bool? isPublished;

  /// Whether the announcement should start and end on dates only instead of
  /// date times.
  ///
  /// Will be `false` if there is no `startsAt` or `endsAt`.
  @override
  @JsonKey(name: 'all_day')
  final bool isAllDay;

  /// Whether the announcement has been read by the current user.
  @override
  @JsonKey(name: 'read')
  final bool? isRead;

  /// When the announcement will start.
  @override
  final DateTime? startsAt;

  /// When the announcement will end.
  @override
  final DateTime? endsAt;

  /// When the announcement was published.
  @override
  final DateTime publishedAt;

  /// When the announcement was last updated.
  @override
  final DateTime updatedAt;

  /// Accounts mentioned in the announcement text.
  final List<AnnouncementAccount> _mentions;

  /// Accounts mentioned in the announcement text.
  @override
  List<AnnouncementAccount> get mentions {
    if (_mentions is EqualUnmodifiableListView) return _mentions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mentions);
  }

  /// Statuses linked in the announcement text.
  final List<AnnouncementStatus> _statuses;

  /// Statuses linked in the announcement text.
  @override
  List<AnnouncementStatus> get statuses {
    if (_statuses is EqualUnmodifiableListView) return _statuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statuses);
  }

  /// Tags linked in the announcement text.
  final List<Tag> _tags;

  /// Tags linked in the announcement text.
  @override
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  /// Custom emoji used in the announcement text.
  final List<Emoji> _emojis;

  /// Custom emoji used in the announcement text.
  @override
  List<Emoji> get emojis {
    if (_emojis is EqualUnmodifiableListView) return _emojis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emojis);
  }

  /// Emoji reactions attached to the announcement.
  final List<EmojiReaction> _reactions;

  /// Emoji reactions attached to the announcement.
  @override
  List<EmojiReaction> get reactions {
    if (_reactions is EqualUnmodifiableListView) return _reactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reactions);
  }

  @override
  String toString() {
    return 'Announcement(id: $id, content: $content, isPublished: $isPublished, isAllDay: $isAllDay, isRead: $isRead, startsAt: $startsAt, endsAt: $endsAt, publishedAt: $publishedAt, updatedAt: $updatedAt, mentions: $mentions, statuses: $statuses, tags: $tags, emojis: $emojis, reactions: $reactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Announcement &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished) &&
            (identical(other.isAllDay, isAllDay) ||
                other.isAllDay == isAllDay) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.endsAt, endsAt) || other.endsAt == endsAt) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._mentions, _mentions) &&
            const DeepCollectionEquality().equals(other._statuses, _statuses) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._emojis, _emojis) &&
            const DeepCollectionEquality()
                .equals(other._reactions, _reactions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      isPublished,
      isAllDay,
      isRead,
      startsAt,
      endsAt,
      publishedAt,
      updatedAt,
      const DeepCollectionEquality().hash(_mentions),
      const DeepCollectionEquality().hash(_statuses),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_emojis),
      const DeepCollectionEquality().hash(_reactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnnouncementCopyWith<_$_Announcement> get copyWith =>
      __$$_AnnouncementCopyWithImpl<_$_Announcement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnnouncementToJson(
      this,
    );
  }
}

abstract class _Announcement implements Announcement {
  const factory _Announcement(
      {required final String id,
      required final String content,
      @JsonKey(name: 'published') final bool? isPublished,
      @JsonKey(name: 'all_day') required final bool isAllDay,
      @JsonKey(name: 'read') final bool? isRead,
      final DateTime? startsAt,
      final DateTime? endsAt,
      required final DateTime publishedAt,
      required final DateTime updatedAt,
      required final List<AnnouncementAccount> mentions,
      required final List<AnnouncementStatus> statuses,
      required final List<Tag> tags,
      required final List<Emoji> emojis,
      required final List<EmojiReaction> reactions}) = _$_Announcement;

  factory _Announcement.fromJson(Map<String, dynamic> json) =
      _$_Announcement.fromJson;

  @override

  /// The ID of the announcement in the database.
  String get id;
  @override

  /// The text of the announcement.
  String get content;
  @override

  /// Whether the announcement is currently active.
  @JsonKey(name: 'published')
  bool? get isPublished;
  @override

  /// Whether the announcement should start and end on dates only instead of
  /// date times.
  ///
  /// Will be `false` if there is no `startsAt` or `endsAt`.
  @JsonKey(name: 'all_day')
  bool get isAllDay;
  @override

  /// Whether the announcement has been read by the current user.
  @JsonKey(name: 'read')
  bool? get isRead;
  @override

  /// When the announcement will start.
  DateTime? get startsAt;
  @override

  /// When the announcement will end.
  DateTime? get endsAt;
  @override

  /// When the announcement was published.
  DateTime get publishedAt;
  @override

  /// When the announcement was last updated.
  DateTime get updatedAt;
  @override

  /// Accounts mentioned in the announcement text.
  List<AnnouncementAccount> get mentions;
  @override

  /// Statuses linked in the announcement text.
  List<AnnouncementStatus> get statuses;
  @override

  /// Tags linked in the announcement text.
  List<Tag> get tags;
  @override

  /// Custom emoji used in the announcement text.
  List<Emoji> get emojis;
  @override

  /// Emoji reactions attached to the announcement.
  List<EmojiReaction> get reactions;
  @override
  @JsonKey(ignore: true)
  _$$_AnnouncementCopyWith<_$_Announcement> get copyWith =>
      throw _privateConstructorUsedError;
}
