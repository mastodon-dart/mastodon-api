// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  String get url => throw _privateConstructorUsedError;

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
  Language get language => throw _privateConstructorUsedError;

  /// ID of the status being replied.
  String? get inReplyToTweetId => throw _privateConstructorUsedError;

  /// ID of the account being replied to.
  String? get inReplyToAccountId => throw _privateConstructorUsedError;

  /// Have you favourited this status?
  @JsonKey(name: 'favourited')
  bool get isFavourited => throw _privateConstructorUsedError;

  /// Have you boosted this status?
  @JsonKey(name: 'reblogged')
  bool get isReblogged => throw _privateConstructorUsedError;

  /// Have you muted notifications for this status's conversation?
  @JsonKey(name: 'muted')
  bool get isMuted => throw _privateConstructorUsedError;

  /// Have you bookmarked this status?
  @JsonKey(name: 'bookmarked')
  bool get isBookmarked => throw _privateConstructorUsedError;

  /// Is this status marked as sensitive content?
  @JsonKey(name: 'sensitive')
  bool get isSensitive => throw _privateConstructorUsedError;

  /// Have you pinned this status?
  @JsonKey(name: 'pinned')
  bool get isPinned => throw _privateConstructorUsedError;

  /// The time and date the last status was posted at.
  DateTime? get lastStatusAt => throw _privateConstructorUsedError;

  /// The account that authored this status.
  Account get account => throw _privateConstructorUsedError;

  /// The application used to post this status.
  Application? get application => throw _privateConstructorUsedError;

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
      String url,
      String uri,
      String content,
      String spoilerText,
      Visibility visibility,
      int favouritesCount,
      int repliesCount,
      int reblogsCount,
      Language language,
      String? inReplyToTweetId,
      String? inReplyToAccountId,
      @JsonKey(name: 'favourited') bool isFavourited,
      @JsonKey(name: 'reblogged') bool isReblogged,
      @JsonKey(name: 'muted') bool isMuted,
      @JsonKey(name: 'bookmarked') bool isBookmarked,
      @JsonKey(name: 'sensitive') bool isSensitive,
      @JsonKey(name: 'pinned') bool isPinned,
      DateTime? lastStatusAt,
      Account account,
      Application? application,
      DateTime createdAt});

  $AccountCopyWith<$Res> get account;
  $ApplicationCopyWith<$Res>? get application;
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
    Object? url = null,
    Object? uri = null,
    Object? content = null,
    Object? spoilerText = null,
    Object? visibility = null,
    Object? favouritesCount = null,
    Object? repliesCount = null,
    Object? reblogsCount = null,
    Object? language = null,
    Object? inReplyToTweetId = freezed,
    Object? inReplyToAccountId = freezed,
    Object? isFavourited = null,
    Object? isReblogged = null,
    Object? isMuted = null,
    Object? isBookmarked = null,
    Object? isSensitive = null,
    Object? isPinned = null,
    Object? lastStatusAt = freezed,
    Object? account = null,
    Object? application = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
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
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
      inReplyToTweetId: freezed == inReplyToTweetId
          ? _value.inReplyToTweetId
          : inReplyToTweetId // ignore: cast_nullable_to_non_nullable
              as String?,
      inReplyToAccountId: freezed == inReplyToAccountId
          ? _value.inReplyToAccountId
          : inReplyToAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavourited: null == isFavourited
          ? _value.isFavourited
          : isFavourited // ignore: cast_nullable_to_non_nullable
              as bool,
      isReblogged: null == isReblogged
          ? _value.isReblogged
          : isReblogged // ignore: cast_nullable_to_non_nullable
              as bool,
      isMuted: null == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      isSensitive: null == isSensitive
          ? _value.isSensitive
          : isSensitive // ignore: cast_nullable_to_non_nullable
              as bool,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
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
}

/// @nodoc
abstract class _$$_StatusCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$_StatusCopyWith(_$_Status value, $Res Function(_$_Status) then) =
      __$$_StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String url,
      String uri,
      String content,
      String spoilerText,
      Visibility visibility,
      int favouritesCount,
      int repliesCount,
      int reblogsCount,
      Language language,
      String? inReplyToTweetId,
      String? inReplyToAccountId,
      @JsonKey(name: 'favourited') bool isFavourited,
      @JsonKey(name: 'reblogged') bool isReblogged,
      @JsonKey(name: 'muted') bool isMuted,
      @JsonKey(name: 'bookmarked') bool isBookmarked,
      @JsonKey(name: 'sensitive') bool isSensitive,
      @JsonKey(name: 'pinned') bool isPinned,
      DateTime? lastStatusAt,
      Account account,
      Application? application,
      DateTime createdAt});

  @override
  $AccountCopyWith<$Res> get account;
  @override
  $ApplicationCopyWith<$Res>? get application;
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
    Object? url = null,
    Object? uri = null,
    Object? content = null,
    Object? spoilerText = null,
    Object? visibility = null,
    Object? favouritesCount = null,
    Object? repliesCount = null,
    Object? reblogsCount = null,
    Object? language = null,
    Object? inReplyToTweetId = freezed,
    Object? inReplyToAccountId = freezed,
    Object? isFavourited = null,
    Object? isReblogged = null,
    Object? isMuted = null,
    Object? isBookmarked = null,
    Object? isSensitive = null,
    Object? isPinned = null,
    Object? lastStatusAt = freezed,
    Object? account = null,
    Object? application = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$_Status(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
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
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
      inReplyToTweetId: freezed == inReplyToTweetId
          ? _value.inReplyToTweetId
          : inReplyToTweetId // ignore: cast_nullable_to_non_nullable
              as String?,
      inReplyToAccountId: freezed == inReplyToAccountId
          ? _value.inReplyToAccountId
          : inReplyToAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavourited: null == isFavourited
          ? _value.isFavourited
          : isFavourited // ignore: cast_nullable_to_non_nullable
              as bool,
      isReblogged: null == isReblogged
          ? _value.isReblogged
          : isReblogged // ignore: cast_nullable_to_non_nullable
              as bool,
      isMuted: null == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      isSensitive: null == isSensitive
          ? _value.isSensitive
          : isSensitive // ignore: cast_nullable_to_non_nullable
              as bool,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Status implements _Status {
  const _$_Status(
      {required this.id,
      required this.url,
      required this.uri,
      required this.content,
      required this.spoilerText,
      required this.visibility,
      required this.favouritesCount,
      required this.repliesCount,
      required this.reblogsCount,
      required this.language,
      this.inReplyToTweetId,
      this.inReplyToAccountId,
      @JsonKey(name: 'favourited') this.isFavourited = false,
      @JsonKey(name: 'reblogged') this.isReblogged = false,
      @JsonKey(name: 'muted') this.isMuted = false,
      @JsonKey(name: 'bookmarked') this.isBookmarked = false,
      @JsonKey(name: 'sensitive') this.isSensitive = false,
      @JsonKey(name: 'pinned') this.isPinned = false,
      this.lastStatusAt,
      required this.account,
      this.application,
      required this.createdAt});

  factory _$_Status.fromJson(Map<String, dynamic> json) =>
      _$$_StatusFromJson(json);

  /// ID of the status in the database.
  @override
  final String id;

  /// A link to the status's HTML representation.
  @override
  final String url;

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
  final Language language;

  /// ID of the status being replied.
  @override
  final String? inReplyToTweetId;

  /// ID of the account being replied to.
  @override
  final String? inReplyToAccountId;

  /// Have you favourited this status?
  @override
  @JsonKey(name: 'favourited')
  final bool isFavourited;

  /// Have you boosted this status?
  @override
  @JsonKey(name: 'reblogged')
  final bool isReblogged;

  /// Have you muted notifications for this status's conversation?
  @override
  @JsonKey(name: 'muted')
  final bool isMuted;

  /// Have you bookmarked this status?
  @override
  @JsonKey(name: 'bookmarked')
  final bool isBookmarked;

  /// Is this status marked as sensitive content?
  @override
  @JsonKey(name: 'sensitive')
  final bool isSensitive;

  /// Have you pinned this status?
  @override
  @JsonKey(name: 'pinned')
  final bool isPinned;

  /// The time and date the last status was posted at.
  @override
  final DateTime? lastStatusAt;

  /// The account that authored this status.
  @override
  final Account account;

  /// The application used to post this status.
  @override
  final Application? application;

  /// The date when this status was created.
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Status(id: $id, url: $url, uri: $uri, content: $content, spoilerText: $spoilerText, visibility: $visibility, favouritesCount: $favouritesCount, repliesCount: $repliesCount, reblogsCount: $reblogsCount, language: $language, inReplyToTweetId: $inReplyToTweetId, inReplyToAccountId: $inReplyToAccountId, isFavourited: $isFavourited, isReblogged: $isReblogged, isMuted: $isMuted, isBookmarked: $isBookmarked, isSensitive: $isSensitive, isPinned: $isPinned, lastStatusAt: $lastStatusAt, account: $account, application: $application, createdAt: $createdAt)';
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
            (identical(other.inReplyToTweetId, inReplyToTweetId) ||
                other.inReplyToTweetId == inReplyToTweetId) &&
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
        inReplyToTweetId,
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
      required final String url,
      required final String uri,
      required final String content,
      required final String spoilerText,
      required final Visibility visibility,
      required final int favouritesCount,
      required final int repliesCount,
      required final int reblogsCount,
      required final Language language,
      final String? inReplyToTweetId,
      final String? inReplyToAccountId,
      @JsonKey(name: 'favourited') final bool isFavourited,
      @JsonKey(name: 'reblogged') final bool isReblogged,
      @JsonKey(name: 'muted') final bool isMuted,
      @JsonKey(name: 'bookmarked') final bool isBookmarked,
      @JsonKey(name: 'sensitive') final bool isSensitive,
      @JsonKey(name: 'pinned') final bool isPinned,
      final DateTime? lastStatusAt,
      required final Account account,
      final Application? application,
      required final DateTime createdAt}) = _$_Status;

  factory _Status.fromJson(Map<String, dynamic> json) = _$_Status.fromJson;

  @override

  /// ID of the status in the database.
  String get id;
  @override

  /// A link to the status's HTML representation.
  String get url;
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
  Language get language;
  @override

  /// ID of the status being replied.
  String? get inReplyToTweetId;
  @override

  /// ID of the account being replied to.
  String? get inReplyToAccountId;
  @override

  /// Have you favourited this status?
  @JsonKey(name: 'favourited')
  bool get isFavourited;
  @override

  /// Have you boosted this status?
  @JsonKey(name: 'reblogged')
  bool get isReblogged;
  @override

  /// Have you muted notifications for this status's conversation?
  @JsonKey(name: 'muted')
  bool get isMuted;
  @override

  /// Have you bookmarked this status?
  @JsonKey(name: 'bookmarked')
  bool get isBookmarked;
  @override

  /// Is this status marked as sensitive content?
  @JsonKey(name: 'sensitive')
  bool get isSensitive;
  @override

  /// Have you pinned this status?
  @JsonKey(name: 'pinned')
  bool get isPinned;
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

  /// The date when this status was created.
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_StatusCopyWith<_$_Status> get copyWith =>
      throw _privateConstructorUsedError;
}
