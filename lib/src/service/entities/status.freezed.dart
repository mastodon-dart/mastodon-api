// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Status _$StatusFromJson(Map<String, dynamic> json) {
  return _Status.fromJson(json);
}

/// @nodoc
mixin _$Status {
  /// ID of the status in the database.
  String get id => throw _privateConstructorUsedError;

  /// A link to the status's HTML representation.
  String? get url => throw _privateConstructorUsedError;

  /// URI of the status used for federation.
  String get uri => throw _privateConstructorUsedError;

  /// HTML-encoded status content.
  String get content => throw _privateConstructorUsedError;

  /// Subject or summary line, below which status content is collapsed until
  /// expanded.
  String get spoilerText => throw _privateConstructorUsedError;

  /// Visibility of this status.
  Visibility get visibility => throw _privateConstructorUsedError;

  /// How many favourites this status has received.
  int get favouritesCount => throw _privateConstructorUsedError;

  /// How many replies this status has received.
  int get repliesCount => throw _privateConstructorUsedError;

  /// How many boosts this status has received.
  int get reblogsCount => throw _privateConstructorUsedError;

  /// Primary language of this status.
  Language? get language => throw _privateConstructorUsedError;

  /// ID of the status being replied.
  String? get inReplyToId => throw _privateConstructorUsedError;

  /// ID of the account being replied to.
  String? get inReplyToAccountId => throw _privateConstructorUsedError;

  /// Have you favourited this status?
  @JsonKey(name: 'favourited')
  bool? get isFavourited => throw _privateConstructorUsedError;

  /// Have you boosted this status?
  @JsonKey(name: 'reblogged')
  bool? get isReblogged => throw _privateConstructorUsedError;

  /// Have you muted notifications for this status's conversation?
  @JsonKey(name: 'muted')
  bool? get isMuted => throw _privateConstructorUsedError;

  /// Have you bookmarked this status?
  @JsonKey(name: 'bookmarked')
  bool? get isBookmarked => throw _privateConstructorUsedError;

  /// Is this status marked as sensitive content?
  @JsonKey(name: 'sensitive')
  bool? get isSensitive => throw _privateConstructorUsedError;

  /// Have you pinned this status?
  @JsonKey(name: 'pinned')
  bool? get isPinned => throw _privateConstructorUsedError;

  /// The time and date the last status was posted at.
  DateTime? get lastStatusAt => throw _privateConstructorUsedError;

  /// The account that authored this status.
  Account get account => throw _privateConstructorUsedError;

  /// The application used to post this status.
  Application? get application => throw _privateConstructorUsedError;

  /// The poll attached to the status.
  Poll? get poll => throw _privateConstructorUsedError;

  /// The status being reblogged.
  Status? get reblog => throw _privateConstructorUsedError;

  /// Media that is attached to this status.
  List<MediaAttachment> get mediaAttachments =>
      throw _privateConstructorUsedError;

  /// Custom emoji to be used when rendering status content.
  List<Emoji> get emojis => throw _privateConstructorUsedError;

  /// Hashtags used within the status content.
  List<Tag> get tags => throw _privateConstructorUsedError;

  /// The date when this status was created.
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res, Status>;
  @useResult
  $Res call(
      {String id,
      String? url,
      String uri,
      String content,
      String spoilerText,
      Visibility visibility,
      int favouritesCount,
      int repliesCount,
      int reblogsCount,
      Language? language,
      String? inReplyToId,
      String? inReplyToAccountId,
      @JsonKey(name: 'favourited') bool? isFavourited,
      @JsonKey(name: 'reblogged') bool? isReblogged,
      @JsonKey(name: 'muted') bool? isMuted,
      @JsonKey(name: 'bookmarked') bool? isBookmarked,
      @JsonKey(name: 'sensitive') bool? isSensitive,
      @JsonKey(name: 'pinned') bool? isPinned,
      DateTime? lastStatusAt,
      Account account,
      Application? application,
      Poll? poll,
      Status? reblog,
      List<MediaAttachment> mediaAttachments,
      List<Emoji> emojis,
      List<Tag> tags,
      DateTime createdAt});

  $AccountCopyWith<$Res> get account;
  $ApplicationCopyWith<$Res>? get application;
  $PollCopyWith<$Res>? get poll;
  $StatusCopyWith<$Res>? get reblog;
}

/// @nodoc
class _$StatusCopyWithImpl<$Res, $Val extends Status>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = freezed,
    Object? uri = null,
    Object? content = null,
    Object? spoilerText = null,
    Object? visibility = null,
    Object? favouritesCount = null,
    Object? repliesCount = null,
    Object? reblogsCount = null,
    Object? language = freezed,
    Object? inReplyToId = freezed,
    Object? inReplyToAccountId = freezed,
    Object? isFavourited = freezed,
    Object? isReblogged = freezed,
    Object? isMuted = freezed,
    Object? isBookmarked = freezed,
    Object? isSensitive = freezed,
    Object? isPinned = freezed,
    Object? lastStatusAt = freezed,
    Object? account = null,
    Object? application = freezed,
    Object? poll = freezed,
    Object? reblog = freezed,
    Object? mediaAttachments = null,
    Object? emojis = null,
    Object? tags = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      spoilerText: null == spoilerText
          ? _value.spoilerText
          : spoilerText // ignore: cast_nullable_to_non_nullable
              as String,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as Visibility,
      favouritesCount: null == favouritesCount
          ? _value.favouritesCount
          : favouritesCount // ignore: cast_nullable_to_non_nullable
              as int,
      repliesCount: null == repliesCount
          ? _value.repliesCount
          : repliesCount // ignore: cast_nullable_to_non_nullable
              as int,
      reblogsCount: null == reblogsCount
          ? _value.reblogsCount
          : reblogsCount // ignore: cast_nullable_to_non_nullable
              as int,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language?,
      inReplyToId: freezed == inReplyToId
          ? _value.inReplyToId
          : inReplyToId // ignore: cast_nullable_to_non_nullable
              as String?,
      inReplyToAccountId: freezed == inReplyToAccountId
          ? _value.inReplyToAccountId
          : inReplyToAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavourited: freezed == isFavourited
          ? _value.isFavourited
          : isFavourited // ignore: cast_nullable_to_non_nullable
              as bool?,
      isReblogged: freezed == isReblogged
          ? _value.isReblogged
          : isReblogged // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMuted: freezed == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBookmarked: freezed == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSensitive: freezed == isSensitive
          ? _value.isSensitive
          : isSensitive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPinned: freezed == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastStatusAt: freezed == lastStatusAt
          ? _value.lastStatusAt
          : lastStatusAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      application: freezed == application
          ? _value.application
          : application // ignore: cast_nullable_to_non_nullable
              as Application?,
      poll: freezed == poll
          ? _value.poll
          : poll // ignore: cast_nullable_to_non_nullable
              as Poll?,
      reblog: freezed == reblog
          ? _value.reblog
          : reblog // ignore: cast_nullable_to_non_nullable
              as Status?,
      mediaAttachments: null == mediaAttachments
          ? _value.mediaAttachments
          : mediaAttachments // ignore: cast_nullable_to_non_nullable
              as List<MediaAttachment>,
      emojis: null == emojis
          ? _value.emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as List<Emoji>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApplicationCopyWith<$Res>? get application {
    if (_value.application == null) {
      return null;
    }

    return $ApplicationCopyWith<$Res>(_value.application!, (value) {
      return _then(_value.copyWith(application: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PollCopyWith<$Res>? get poll {
    if (_value.poll == null) {
      return null;
    }

    return $PollCopyWith<$Res>(_value.poll!, (value) {
      return _then(_value.copyWith(poll: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res>? get reblog {
    if (_value.reblog == null) {
      return null;
    }

    return $StatusCopyWith<$Res>(_value.reblog!, (value) {
      return _then(_value.copyWith(reblog: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StatusCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$_StatusCopyWith(_$_Status value, $Res Function(_$_Status) then) =
      __$$_StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? url,
      String uri,
      String content,
      String spoilerText,
      Visibility visibility,
      int favouritesCount,
      int repliesCount,
      int reblogsCount,
      Language? language,
      String? inReplyToId,
      String? inReplyToAccountId,
      @JsonKey(name: 'favourited') bool? isFavourited,
      @JsonKey(name: 'reblogged') bool? isReblogged,
      @JsonKey(name: 'muted') bool? isMuted,
      @JsonKey(name: 'bookmarked') bool? isBookmarked,
      @JsonKey(name: 'sensitive') bool? isSensitive,
      @JsonKey(name: 'pinned') bool? isPinned,
      DateTime? lastStatusAt,
      Account account,
      Application? application,
      Poll? poll,
      Status? reblog,
      List<MediaAttachment> mediaAttachments,
      List<Emoji> emojis,
      List<Tag> tags,
      DateTime createdAt});

  @override
  $AccountCopyWith<$Res> get account;
  @override
  $ApplicationCopyWith<$Res>? get application;
  @override
  $PollCopyWith<$Res>? get poll;
  @override
  $StatusCopyWith<$Res>? get reblog;
}

/// @nodoc
class __$$_StatusCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$_Status>
    implements _$$_StatusCopyWith<$Res> {
  __$$_StatusCopyWithImpl(_$_Status _value, $Res Function(_$_Status) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = freezed,
    Object? uri = null,
    Object? content = null,
    Object? spoilerText = null,
    Object? visibility = null,
    Object? favouritesCount = null,
    Object? repliesCount = null,
    Object? reblogsCount = null,
    Object? language = freezed,
    Object? inReplyToId = freezed,
    Object? inReplyToAccountId = freezed,
    Object? isFavourited = freezed,
    Object? isReblogged = freezed,
    Object? isMuted = freezed,
    Object? isBookmarked = freezed,
    Object? isSensitive = freezed,
    Object? isPinned = freezed,
    Object? lastStatusAt = freezed,
    Object? account = null,
    Object? application = freezed,
    Object? poll = freezed,
    Object? reblog = freezed,
    Object? mediaAttachments = null,
    Object? emojis = null,
    Object? tags = null,
    Object? createdAt = null,
  }) {
    return _then(_$_Status(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      spoilerText: null == spoilerText
          ? _value.spoilerText
          : spoilerText // ignore: cast_nullable_to_non_nullable
              as String,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as Visibility,
      favouritesCount: null == favouritesCount
          ? _value.favouritesCount
          : favouritesCount // ignore: cast_nullable_to_non_nullable
              as int,
      repliesCount: null == repliesCount
          ? _value.repliesCount
          : repliesCount // ignore: cast_nullable_to_non_nullable
              as int,
      reblogsCount: null == reblogsCount
          ? _value.reblogsCount
          : reblogsCount // ignore: cast_nullable_to_non_nullable
              as int,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language?,
      inReplyToId: freezed == inReplyToId
          ? _value.inReplyToId
          : inReplyToId // ignore: cast_nullable_to_non_nullable
              as String?,
      inReplyToAccountId: freezed == inReplyToAccountId
          ? _value.inReplyToAccountId
          : inReplyToAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavourited: freezed == isFavourited
          ? _value.isFavourited
          : isFavourited // ignore: cast_nullable_to_non_nullable
              as bool?,
      isReblogged: freezed == isReblogged
          ? _value.isReblogged
          : isReblogged // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMuted: freezed == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBookmarked: freezed == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSensitive: freezed == isSensitive
          ? _value.isSensitive
          : isSensitive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPinned: freezed == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastStatusAt: freezed == lastStatusAt
          ? _value.lastStatusAt
          : lastStatusAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      application: freezed == application
          ? _value.application
          : application // ignore: cast_nullable_to_non_nullable
              as Application?,
      poll: freezed == poll
          ? _value.poll
          : poll // ignore: cast_nullable_to_non_nullable
              as Poll?,
      reblog: freezed == reblog
          ? _value.reblog
          : reblog // ignore: cast_nullable_to_non_nullable
              as Status?,
      mediaAttachments: null == mediaAttachments
          ? _value._mediaAttachments
          : mediaAttachments // ignore: cast_nullable_to_non_nullable
              as List<MediaAttachment>,
      emojis: null == emojis
          ? _value._emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as List<Emoji>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_Status implements _Status {
  const _$_Status(
      {required this.id,
      this.url,
      required this.uri,
      required this.content,
      required this.spoilerText,
      required this.visibility,
      required this.favouritesCount,
      required this.repliesCount,
      required this.reblogsCount,
      this.language,
      this.inReplyToId,
      this.inReplyToAccountId,
      @JsonKey(name: 'favourited') this.isFavourited,
      @JsonKey(name: 'reblogged') this.isReblogged,
      @JsonKey(name: 'muted') this.isMuted,
      @JsonKey(name: 'bookmarked') this.isBookmarked,
      @JsonKey(name: 'sensitive') this.isSensitive,
      @JsonKey(name: 'pinned') this.isPinned,
      this.lastStatusAt,
      required this.account,
      this.application,
      this.poll,
      this.reblog,
      required final List<MediaAttachment> mediaAttachments,
      required final List<Emoji> emojis,
      required final List<Tag> tags,
      required this.createdAt})
      : _mediaAttachments = mediaAttachments,
        _emojis = emojis,
        _tags = tags;

  factory _$_Status.fromJson(Map<String, dynamic> json) =>
      _$$_StatusFromJson(json);

  /// ID of the status in the database.
  @override
  final String id;

  /// A link to the status's HTML representation.
  @override
  final String? url;

  /// URI of the status used for federation.
  @override
  final String uri;

  /// HTML-encoded status content.
  @override
  final String content;

  /// Subject or summary line, below which status content is collapsed until
  /// expanded.
  @override
  final String spoilerText;

  /// Visibility of this status.
  @override
  final Visibility visibility;

  /// How many favourites this status has received.
  @override
  final int favouritesCount;

  /// How many replies this status has received.
  @override
  final int repliesCount;

  /// How many boosts this status has received.
  @override
  final int reblogsCount;

  /// Primary language of this status.
  @override
  final Language? language;

  /// ID of the status being replied.
  @override
  final String? inReplyToId;

  /// ID of the account being replied to.
  @override
  final String? inReplyToAccountId;

  /// Have you favourited this status?
  @override
  @JsonKey(name: 'favourited')
  final bool? isFavourited;

  /// Have you boosted this status?
  @override
  @JsonKey(name: 'reblogged')
  final bool? isReblogged;

  /// Have you muted notifications for this status's conversation?
  @override
  @JsonKey(name: 'muted')
  final bool? isMuted;

  /// Have you bookmarked this status?
  @override
  @JsonKey(name: 'bookmarked')
  final bool? isBookmarked;

  /// Is this status marked as sensitive content?
  @override
  @JsonKey(name: 'sensitive')
  final bool? isSensitive;

  /// Have you pinned this status?
  @override
  @JsonKey(name: 'pinned')
  final bool? isPinned;

  /// The time and date the last status was posted at.
  @override
  final DateTime? lastStatusAt;

  /// The account that authored this status.
  @override
  final Account account;

  /// The application used to post this status.
  @override
  final Application? application;

  /// The poll attached to the status.
  @override
  final Poll? poll;

  /// The status being reblogged.
  @override
  final Status? reblog;

  /// Media that is attached to this status.
  final List<MediaAttachment> _mediaAttachments;

  /// Media that is attached to this status.
  @override
  List<MediaAttachment> get mediaAttachments {
    if (_mediaAttachments is EqualUnmodifiableListView)
      return _mediaAttachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaAttachments);
  }

  /// Custom emoji to be used when rendering status content.
  final List<Emoji> _emojis;

  /// Custom emoji to be used when rendering status content.
  @override
  List<Emoji> get emojis {
    if (_emojis is EqualUnmodifiableListView) return _emojis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emojis);
  }

  /// Hashtags used within the status content.
  final List<Tag> _tags;

  /// Hashtags used within the status content.
  @override
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  /// The date when this status was created.
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Status(id: $id, url: $url, uri: $uri, content: $content, spoilerText: $spoilerText, visibility: $visibility, favouritesCount: $favouritesCount, repliesCount: $repliesCount, reblogsCount: $reblogsCount, language: $language, inReplyToId: $inReplyToId, inReplyToAccountId: $inReplyToAccountId, isFavourited: $isFavourited, isReblogged: $isReblogged, isMuted: $isMuted, isBookmarked: $isBookmarked, isSensitive: $isSensitive, isPinned: $isPinned, lastStatusAt: $lastStatusAt, account: $account, application: $application, poll: $poll, reblog: $reblog, mediaAttachments: $mediaAttachments, emojis: $emojis, tags: $tags, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Status &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.spoilerText, spoilerText) ||
                other.spoilerText == spoilerText) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.favouritesCount, favouritesCount) ||
                other.favouritesCount == favouritesCount) &&
            (identical(other.repliesCount, repliesCount) ||
                other.repliesCount == repliesCount) &&
            (identical(other.reblogsCount, reblogsCount) ||
                other.reblogsCount == reblogsCount) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.inReplyToId, inReplyToId) ||
                other.inReplyToId == inReplyToId) &&
            (identical(other.inReplyToAccountId, inReplyToAccountId) ||
                other.inReplyToAccountId == inReplyToAccountId) &&
            (identical(other.isFavourited, isFavourited) ||
                other.isFavourited == isFavourited) &&
            (identical(other.isReblogged, isReblogged) ||
                other.isReblogged == isReblogged) &&
            (identical(other.isMuted, isMuted) || other.isMuted == isMuted) &&
            (identical(other.isBookmarked, isBookmarked) ||
                other.isBookmarked == isBookmarked) &&
            (identical(other.isSensitive, isSensitive) ||
                other.isSensitive == isSensitive) &&
            (identical(other.isPinned, isPinned) ||
                other.isPinned == isPinned) &&
            (identical(other.lastStatusAt, lastStatusAt) ||
                other.lastStatusAt == lastStatusAt) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.application, application) ||
                other.application == application) &&
            (identical(other.poll, poll) || other.poll == poll) &&
            (identical(other.reblog, reblog) || other.reblog == reblog) &&
            const DeepCollectionEquality()
                .equals(other._mediaAttachments, _mediaAttachments) &&
            const DeepCollectionEquality().equals(other._emojis, _emojis) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        url,
        uri,
        content,
        spoilerText,
        visibility,
        favouritesCount,
        repliesCount,
        reblogsCount,
        language,
        inReplyToId,
        inReplyToAccountId,
        isFavourited,
        isReblogged,
        isMuted,
        isBookmarked,
        isSensitive,
        isPinned,
        lastStatusAt,
        account,
        application,
        poll,
        reblog,
        const DeepCollectionEquality().hash(_mediaAttachments),
        const DeepCollectionEquality().hash(_emojis),
        const DeepCollectionEquality().hash(_tags),
        createdAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusCopyWith<_$_Status> get copyWith =>
      __$$_StatusCopyWithImpl<_$_Status>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusToJson(
      this,
    );
  }
}

abstract class _Status implements Status {
  const factory _Status(
      {required final String id,
      final String? url,
      required final String uri,
      required final String content,
      required final String spoilerText,
      required final Visibility visibility,
      required final int favouritesCount,
      required final int repliesCount,
      required final int reblogsCount,
      final Language? language,
      final String? inReplyToId,
      final String? inReplyToAccountId,
      @JsonKey(name: 'favourited') final bool? isFavourited,
      @JsonKey(name: 'reblogged') final bool? isReblogged,
      @JsonKey(name: 'muted') final bool? isMuted,
      @JsonKey(name: 'bookmarked') final bool? isBookmarked,
      @JsonKey(name: 'sensitive') final bool? isSensitive,
      @JsonKey(name: 'pinned') final bool? isPinned,
      final DateTime? lastStatusAt,
      required final Account account,
      final Application? application,
      final Poll? poll,
      final Status? reblog,
      required final List<MediaAttachment> mediaAttachments,
      required final List<Emoji> emojis,
      required final List<Tag> tags,
      required final DateTime createdAt}) = _$_Status;

  factory _Status.fromJson(Map<String, dynamic> json) = _$_Status.fromJson;

  @override

  /// ID of the status in the database.
  String get id;
  @override

  /// A link to the status's HTML representation.
  String? get url;
  @override

  /// URI of the status used for federation.
  String get uri;
  @override

  /// HTML-encoded status content.
  String get content;
  @override

  /// Subject or summary line, below which status content is collapsed until
  /// expanded.
  String get spoilerText;
  @override

  /// Visibility of this status.
  Visibility get visibility;
  @override

  /// How many favourites this status has received.
  int get favouritesCount;
  @override

  /// How many replies this status has received.
  int get repliesCount;
  @override

  /// How many boosts this status has received.
  int get reblogsCount;
  @override

  /// Primary language of this status.
  Language? get language;
  @override

  /// ID of the status being replied.
  String? get inReplyToId;
  @override

  /// ID of the account being replied to.
  String? get inReplyToAccountId;
  @override

  /// Have you favourited this status?
  @JsonKey(name: 'favourited')
  bool? get isFavourited;
  @override

  /// Have you boosted this status?
  @JsonKey(name: 'reblogged')
  bool? get isReblogged;
  @override

  /// Have you muted notifications for this status's conversation?
  @JsonKey(name: 'muted')
  bool? get isMuted;
  @override

  /// Have you bookmarked this status?
  @JsonKey(name: 'bookmarked')
  bool? get isBookmarked;
  @override

  /// Is this status marked as sensitive content?
  @JsonKey(name: 'sensitive')
  bool? get isSensitive;
  @override

  /// Have you pinned this status?
  @JsonKey(name: 'pinned')
  bool? get isPinned;
  @override

  /// The time and date the last status was posted at.
  DateTime? get lastStatusAt;
  @override

  /// The account that authored this status.
  Account get account;
  @override

  /// The application used to post this status.
  Application? get application;
  @override

  /// The poll attached to the status.
  Poll? get poll;
  @override

  /// The status being reblogged.
  Status? get reblog;
  @override

  /// Media that is attached to this status.
  List<MediaAttachment> get mediaAttachments;
  @override

  /// Custom emoji to be used when rendering status content.
  List<Emoji> get emojis;
  @override

  /// Hashtags used within the status content.
  List<Tag> get tags;
  @override

  /// The date when this status was created.
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_StatusCopyWith<_$_Status> get copyWith =>
      throw _privateConstructorUsedError;
}
