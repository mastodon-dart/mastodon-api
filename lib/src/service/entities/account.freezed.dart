// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
mixin _$Account {
  /// The account id.
  String get id => throw _privateConstructorUsedError;

  /// The username of the account, not including domain.
  String get username => throw _privateConstructorUsedError;

  /// The profile's display name.
  String get displayName => throw _privateConstructorUsedError;

  /// The Web finger account URI.
  ///
  /// Equal to `username` for local users, or `username@domain` for
  /// remote users.
  String get acct => throw _privateConstructorUsedError;

  /// The profile's bio / description.
  String get note => throw _privateConstructorUsedError;

  /// The url to the profile.
  String get url => throw _privateConstructorUsedError;

  /// An image icon that is shown next to statuses and in the profile.
  String get avatar => throw _privateConstructorUsedError;

  /// A static version of the avatar.
  ///
  /// Equal to avatar if its value is a static image; different if avatar is
  /// an animated GIF.
  String get avatarStatic => throw _privateConstructorUsedError;

  /// An image banner that is shown above the profile and in profile cards.
  String get header => throw _privateConstructorUsedError;

  /// A static version of the header.
  ///
  /// Equal to header if its value is a static image; different if header is
  /// an animated GIF.
  String get headerStatic => throw _privateConstructorUsedError;

  /// An extra attribute that contains source values to be used with API
  /// methods that verify credentials and update credentials.
// String? source,
  /// The reported followers of this profile.
  int get followersCount => throw _privateConstructorUsedError;

  /// The reported follows of this profile.
  int get followingCount => throw _privateConstructorUsedError;

  /// The reported subscriptions of this profile.
  int? get subscribingCount => throw _privateConstructorUsedError;

  /// How many statuses are attached to this account.
  int get statusesCount => throw _privateConstructorUsedError;

  /// Custom emoji entities to be used when rendering the profile.
  ///
  /// If none, an empty array will be returned.
  List<Emoji> get emojis => throw _privateConstructorUsedError;

  /// Additional metadata attached to a profile as name-value pairs.
  List<Field> get fields => throw _privateConstructorUsedError;

  /// Whether the account has opted into discovery features such as the
  /// profile directory.
  @JsonKey(name: 'discoverable')
  bool? get isDiscoverable => throw _privateConstructorUsedError;

  /// Whether the account manually approves follow requests.
  @JsonKey(name: 'locked')
  bool? get isLocked => throw _privateConstructorUsedError;

  /// Indicates that the account may perform automated actions,
  /// may not be monitored, or identifies as a robot.
  @JsonKey(name: 'bot')
  bool? get isBot => throw _privateConstructorUsedError;

  /// When the most recent status was posted.
  DateTime? get lastStatusAt => throw _privateConstructorUsedError;

  /// When the account was created.
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call(
      {String id,
      String username,
      String displayName,
      String acct,
      String note,
      String url,
      String avatar,
      String avatarStatic,
      String header,
      String headerStatic,
      int followersCount,
      int followingCount,
      int? subscribingCount,
      int statusesCount,
      List<Emoji> emojis,
      List<Field> fields,
      @JsonKey(name: 'discoverable') bool? isDiscoverable,
      @JsonKey(name: 'locked') bool? isLocked,
      @JsonKey(name: 'bot') bool? isBot,
      DateTime? lastStatusAt,
      DateTime createdAt});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? displayName = null,
    Object? acct = null,
    Object? note = null,
    Object? url = null,
    Object? avatar = null,
    Object? avatarStatic = null,
    Object? header = null,
    Object? headerStatic = null,
    Object? followersCount = null,
    Object? followingCount = null,
    Object? subscribingCount = freezed,
    Object? statusesCount = null,
    Object? emojis = null,
    Object? fields = null,
    Object? isDiscoverable = freezed,
    Object? isLocked = freezed,
    Object? isBot = freezed,
    Object? lastStatusAt = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      acct: null == acct
          ? _value.acct
          : acct // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      avatarStatic: null == avatarStatic
          ? _value.avatarStatic
          : avatarStatic // ignore: cast_nullable_to_non_nullable
              as String,
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String,
      headerStatic: null == headerStatic
          ? _value.headerStatic
          : headerStatic // ignore: cast_nullable_to_non_nullable
              as String,
      followersCount: null == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int,
      followingCount: null == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
      subscribingCount: freezed == subscribingCount
          ? _value.subscribingCount
          : subscribingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      statusesCount: null == statusesCount
          ? _value.statusesCount
          : statusesCount // ignore: cast_nullable_to_non_nullable
              as int,
      emojis: null == emojis
          ? _value.emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as List<Emoji>,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Field>,
      isDiscoverable: freezed == isDiscoverable
          ? _value.isDiscoverable
          : isDiscoverable // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLocked: freezed == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBot: freezed == isBot
          ? _value.isBot
          : isBot // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastStatusAt: freezed == lastStatusAt
          ? _value.lastStatusAt
          : lastStatusAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$_AccountCopyWith(
          _$_Account value, $Res Function(_$_Account) then) =
      __$$_AccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String username,
      String displayName,
      String acct,
      String note,
      String url,
      String avatar,
      String avatarStatic,
      String header,
      String headerStatic,
      int followersCount,
      int followingCount,
      int? subscribingCount,
      int statusesCount,
      List<Emoji> emojis,
      List<Field> fields,
      @JsonKey(name: 'discoverable') bool? isDiscoverable,
      @JsonKey(name: 'locked') bool? isLocked,
      @JsonKey(name: 'bot') bool? isBot,
      DateTime? lastStatusAt,
      DateTime createdAt});
}

/// @nodoc
class __$$_AccountCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$_Account>
    implements _$$_AccountCopyWith<$Res> {
  __$$_AccountCopyWithImpl(_$_Account _value, $Res Function(_$_Account) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? displayName = null,
    Object? acct = null,
    Object? note = null,
    Object? url = null,
    Object? avatar = null,
    Object? avatarStatic = null,
    Object? header = null,
    Object? headerStatic = null,
    Object? followersCount = null,
    Object? followingCount = null,
    Object? subscribingCount = freezed,
    Object? statusesCount = null,
    Object? emojis = null,
    Object? fields = null,
    Object? isDiscoverable = freezed,
    Object? isLocked = freezed,
    Object? isBot = freezed,
    Object? lastStatusAt = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$_Account(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      acct: null == acct
          ? _value.acct
          : acct // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      avatarStatic: null == avatarStatic
          ? _value.avatarStatic
          : avatarStatic // ignore: cast_nullable_to_non_nullable
              as String,
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String,
      headerStatic: null == headerStatic
          ? _value.headerStatic
          : headerStatic // ignore: cast_nullable_to_non_nullable
              as String,
      followersCount: null == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int,
      followingCount: null == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
      subscribingCount: freezed == subscribingCount
          ? _value.subscribingCount
          : subscribingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      statusesCount: null == statusesCount
          ? _value.statusesCount
          : statusesCount // ignore: cast_nullable_to_non_nullable
              as int,
      emojis: null == emojis
          ? _value._emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as List<Emoji>,
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Field>,
      isDiscoverable: freezed == isDiscoverable
          ? _value.isDiscoverable
          : isDiscoverable // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLocked: freezed == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBot: freezed == isBot
          ? _value.isBot
          : isBot // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastStatusAt: freezed == lastStatusAt
          ? _value.lastStatusAt
          : lastStatusAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_Account implements _Account {
  const _$_Account(
      {required this.id,
      required this.username,
      required this.displayName,
      required this.acct,
      required this.note,
      required this.url,
      required this.avatar,
      required this.avatarStatic,
      required this.header,
      required this.headerStatic,
      required this.followersCount,
      required this.followingCount,
      this.subscribingCount,
      required this.statusesCount,
      required final List<Emoji> emojis,
      required final List<Field> fields,
      @JsonKey(name: 'discoverable') this.isDiscoverable,
      @JsonKey(name: 'locked') this.isLocked,
      @JsonKey(name: 'bot') this.isBot,
      this.lastStatusAt,
      required this.createdAt})
      : _emojis = emojis,
        _fields = fields;

  factory _$_Account.fromJson(Map<String, dynamic> json) =>
      _$$_AccountFromJson(json);

  /// The account id.
  @override
  final String id;

  /// The username of the account, not including domain.
  @override
  final String username;

  /// The profile's display name.
  @override
  final String displayName;

  /// The Web finger account URI.
  ///
  /// Equal to `username` for local users, or `username@domain` for
  /// remote users.
  @override
  final String acct;

  /// The profile's bio / description.
  @override
  final String note;

  /// The url to the profile.
  @override
  final String url;

  /// An image icon that is shown next to statuses and in the profile.
  @override
  final String avatar;

  /// A static version of the avatar.
  ///
  /// Equal to avatar if its value is a static image; different if avatar is
  /// an animated GIF.
  @override
  final String avatarStatic;

  /// An image banner that is shown above the profile and in profile cards.
  @override
  final String header;

  /// A static version of the header.
  ///
  /// Equal to header if its value is a static image; different if header is
  /// an animated GIF.
  @override
  final String headerStatic;

  /// An extra attribute that contains source values to be used with API
  /// methods that verify credentials and update credentials.
// String? source,
  /// The reported followers of this profile.
  @override
  final int followersCount;

  /// The reported follows of this profile.
  @override
  final int followingCount;

  /// The reported subscriptions of this profile.
  @override
  final int? subscribingCount;

  /// How many statuses are attached to this account.
  @override
  final int statusesCount;

  /// Custom emoji entities to be used when rendering the profile.
  ///
  /// If none, an empty array will be returned.
  final List<Emoji> _emojis;

  /// Custom emoji entities to be used when rendering the profile.
  ///
  /// If none, an empty array will be returned.
  @override
  List<Emoji> get emojis {
    if (_emojis is EqualUnmodifiableListView) return _emojis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emojis);
  }

  /// Additional metadata attached to a profile as name-value pairs.
  final List<Field> _fields;

  /// Additional metadata attached to a profile as name-value pairs.
  @override
  List<Field> get fields {
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fields);
  }

  /// Whether the account has opted into discovery features such as the
  /// profile directory.
  @override
  @JsonKey(name: 'discoverable')
  final bool? isDiscoverable;

  /// Whether the account manually approves follow requests.
  @override
  @JsonKey(name: 'locked')
  final bool? isLocked;

  /// Indicates that the account may perform automated actions,
  /// may not be monitored, or identifies as a robot.
  @override
  @JsonKey(name: 'bot')
  final bool? isBot;

  /// When the most recent status was posted.
  @override
  final DateTime? lastStatusAt;

  /// When the account was created.
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Account(id: $id, username: $username, displayName: $displayName, acct: $acct, note: $note, url: $url, avatar: $avatar, avatarStatic: $avatarStatic, header: $header, headerStatic: $headerStatic, followersCount: $followersCount, followingCount: $followingCount, subscribingCount: $subscribingCount, statusesCount: $statusesCount, emojis: $emojis, fields: $fields, isDiscoverable: $isDiscoverable, isLocked: $isLocked, isBot: $isBot, lastStatusAt: $lastStatusAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Account &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.acct, acct) || other.acct == acct) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.avatarStatic, avatarStatic) ||
                other.avatarStatic == avatarStatic) &&
            (identical(other.header, header) || other.header == header) &&
            (identical(other.headerStatic, headerStatic) ||
                other.headerStatic == headerStatic) &&
            (identical(other.followersCount, followersCount) ||
                other.followersCount == followersCount) &&
            (identical(other.followingCount, followingCount) ||
                other.followingCount == followingCount) &&
            (identical(other.subscribingCount, subscribingCount) ||
                other.subscribingCount == subscribingCount) &&
            (identical(other.statusesCount, statusesCount) ||
                other.statusesCount == statusesCount) &&
            const DeepCollectionEquality().equals(other._emojis, _emojis) &&
            const DeepCollectionEquality().equals(other._fields, _fields) &&
            (identical(other.isDiscoverable, isDiscoverable) ||
                other.isDiscoverable == isDiscoverable) &&
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked) &&
            (identical(other.isBot, isBot) || other.isBot == isBot) &&
            (identical(other.lastStatusAt, lastStatusAt) ||
                other.lastStatusAt == lastStatusAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        username,
        displayName,
        acct,
        note,
        url,
        avatar,
        avatarStatic,
        header,
        headerStatic,
        followersCount,
        followingCount,
        subscribingCount,
        statusesCount,
        const DeepCollectionEquality().hash(_emojis),
        const DeepCollectionEquality().hash(_fields),
        isDiscoverable,
        isLocked,
        isBot,
        lastStatusAt,
        createdAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountCopyWith<_$_Account> get copyWith =>
      __$$_AccountCopyWithImpl<_$_Account>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountToJson(
      this,
    );
  }
}

abstract class _Account implements Account {
  const factory _Account(
      {required final String id,
      required final String username,
      required final String displayName,
      required final String acct,
      required final String note,
      required final String url,
      required final String avatar,
      required final String avatarStatic,
      required final String header,
      required final String headerStatic,
      required final int followersCount,
      required final int followingCount,
      final int? subscribingCount,
      required final int statusesCount,
      required final List<Emoji> emojis,
      required final List<Field> fields,
      @JsonKey(name: 'discoverable') final bool? isDiscoverable,
      @JsonKey(name: 'locked') final bool? isLocked,
      @JsonKey(name: 'bot') final bool? isBot,
      final DateTime? lastStatusAt,
      required final DateTime createdAt}) = _$_Account;

  factory _Account.fromJson(Map<String, dynamic> json) = _$_Account.fromJson;

  @override

  /// The account id.
  String get id;
  @override

  /// The username of the account, not including domain.
  String get username;
  @override

  /// The profile's display name.
  String get displayName;
  @override

  /// The Web finger account URI.
  ///
  /// Equal to `username` for local users, or `username@domain` for
  /// remote users.
  String get acct;
  @override

  /// The profile's bio / description.
  String get note;
  @override

  /// The url to the profile.
  String get url;
  @override

  /// An image icon that is shown next to statuses and in the profile.
  String get avatar;
  @override

  /// A static version of the avatar.
  ///
  /// Equal to avatar if its value is a static image; different if avatar is
  /// an animated GIF.
  String get avatarStatic;
  @override

  /// An image banner that is shown above the profile and in profile cards.
  String get header;
  @override

  /// A static version of the header.
  ///
  /// Equal to header if its value is a static image; different if header is
  /// an animated GIF.
  String get headerStatic;
  @override

  /// An extra attribute that contains source values to be used with API
  /// methods that verify credentials and update credentials.
// String? source,
  /// The reported followers of this profile.
  int get followersCount;
  @override

  /// The reported follows of this profile.
  int get followingCount;
  @override

  /// The reported subscriptions of this profile.
  int? get subscribingCount;
  @override

  /// How many statuses are attached to this account.
  int get statusesCount;
  @override

  /// Custom emoji entities to be used when rendering the profile.
  ///
  /// If none, an empty array will be returned.
  List<Emoji> get emojis;
  @override

  /// Additional metadata attached to a profile as name-value pairs.
  List<Field> get fields;
  @override

  /// Whether the account has opted into discovery features such as the
  /// profile directory.
  @JsonKey(name: 'discoverable')
  bool? get isDiscoverable;
  @override

  /// Whether the account manually approves follow requests.
  @JsonKey(name: 'locked')
  bool? get isLocked;
  @override

  /// Indicates that the account may perform automated actions,
  /// may not be monitored, or identifies as a robot.
  @JsonKey(name: 'bot')
  bool? get isBot;
  @override

  /// When the most recent status was posted.
  DateTime? get lastStatusAt;
  @override

  /// When the account was created.
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_AccountCopyWith<_$_Account> get copyWith =>
      throw _privateConstructorUsedError;
}
