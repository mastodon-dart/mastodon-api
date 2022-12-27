// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relationship.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Relationship _$RelationshipFromJson(Map<String, dynamic> json) {
  return _Relationship.fromJson(json);
}

/// @nodoc
mixin _$Relationship {
  /// The account ID.
  String get id => throw _privateConstructorUsedError;

  ///  This user’s profile bio
  @JsonKey(name: 'note')
  String get bio => throw _privateConstructorUsedError;

  /// Are you following this user?
  @JsonKey(name: 'following')
  bool get isFollowing => throw _privateConstructorUsedError;

  /// Are you followed by this user?
  @JsonKey(name: 'followed_by')
  bool get isFollowed => throw _privateConstructorUsedError;

  /// Are you receiving this user’s boosts in your home timeline?
  @JsonKey(name: 'showing_reblogs')
  bool get isShowingReblogs => throw _privateConstructorUsedError;

  /// Have you enabled notifications for this user?
  @JsonKey(name: 'notifying')
  bool get isNotifying => throw _privateConstructorUsedError;

  /// Are you blocking this user?
  @JsonKey(name: 'blocking')
  bool get isBlocking => throw _privateConstructorUsedError;

  /// Is this user blocking you?
  @JsonKey(name: 'blocked_by')
  bool get isBlocked => throw _privateConstructorUsedError;

  /// Are you muting this user?
  @JsonKey(name: 'muting')
  bool get isMuting => throw _privateConstructorUsedError;

  /// Are you muting notifications from this user?
  @JsonKey(name: 'muting_notifications')
  bool get isMutingNotifications => throw _privateConstructorUsedError;

  /// Do you have a pending follow request for this user?
  @JsonKey(name: 'requested')
  bool get isRequested => throw _privateConstructorUsedError;

  /// Are you blocking this user’s domain?
  @JsonKey(name: 'domain_blocking')
  bool get isDomainBlocking => throw _privateConstructorUsedError;

  /// Are you featuring this user on your profile?
  @JsonKey(name: 'endorsed')
  bool get isEndorsed => throw _privateConstructorUsedError;

  /// Which languages are you following from this user?
  List<Language>? get languages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelationshipCopyWith<Relationship> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelationshipCopyWith<$Res> {
  factory $RelationshipCopyWith(
          Relationship value, $Res Function(Relationship) then) =
      _$RelationshipCopyWithImpl<$Res, Relationship>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'note') String bio,
      @JsonKey(name: 'following') bool isFollowing,
      @JsonKey(name: 'followed_by') bool isFollowed,
      @JsonKey(name: 'showing_reblogs') bool isShowingReblogs,
      @JsonKey(name: 'notifying') bool isNotifying,
      @JsonKey(name: 'blocking') bool isBlocking,
      @JsonKey(name: 'blocked_by') bool isBlocked,
      @JsonKey(name: 'muting') bool isMuting,
      @JsonKey(name: 'muting_notifications') bool isMutingNotifications,
      @JsonKey(name: 'requested') bool isRequested,
      @JsonKey(name: 'domain_blocking') bool isDomainBlocking,
      @JsonKey(name: 'endorsed') bool isEndorsed,
      List<Language>? languages});
}

/// @nodoc
class _$RelationshipCopyWithImpl<$Res, $Val extends Relationship>
    implements $RelationshipCopyWith<$Res> {
  _$RelationshipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bio = null,
    Object? isFollowing = null,
    Object? isFollowed = null,
    Object? isShowingReblogs = null,
    Object? isNotifying = null,
    Object? isBlocking = null,
    Object? isBlocked = null,
    Object? isMuting = null,
    Object? isMutingNotifications = null,
    Object? isRequested = null,
    Object? isDomainBlocking = null,
    Object? isEndorsed = null,
    Object? languages = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      isFollowing: null == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollowed: null == isFollowed
          ? _value.isFollowed
          : isFollowed // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowingReblogs: null == isShowingReblogs
          ? _value.isShowingReblogs
          : isShowingReblogs // ignore: cast_nullable_to_non_nullable
              as bool,
      isNotifying: null == isNotifying
          ? _value.isNotifying
          : isNotifying // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlocking: null == isBlocking
          ? _value.isBlocking
          : isBlocking // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isMuting: null == isMuting
          ? _value.isMuting
          : isMuting // ignore: cast_nullable_to_non_nullable
              as bool,
      isMutingNotifications: null == isMutingNotifications
          ? _value.isMutingNotifications
          : isMutingNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      isRequested: null == isRequested
          ? _value.isRequested
          : isRequested // ignore: cast_nullable_to_non_nullable
              as bool,
      isDomainBlocking: null == isDomainBlocking
          ? _value.isDomainBlocking
          : isDomainBlocking // ignore: cast_nullable_to_non_nullable
              as bool,
      isEndorsed: null == isEndorsed
          ? _value.isEndorsed
          : isEndorsed // ignore: cast_nullable_to_non_nullable
              as bool,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RelationshipCopyWith<$Res>
    implements $RelationshipCopyWith<$Res> {
  factory _$$_RelationshipCopyWith(
          _$_Relationship value, $Res Function(_$_Relationship) then) =
      __$$_RelationshipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'note') String bio,
      @JsonKey(name: 'following') bool isFollowing,
      @JsonKey(name: 'followed_by') bool isFollowed,
      @JsonKey(name: 'showing_reblogs') bool isShowingReblogs,
      @JsonKey(name: 'notifying') bool isNotifying,
      @JsonKey(name: 'blocking') bool isBlocking,
      @JsonKey(name: 'blocked_by') bool isBlocked,
      @JsonKey(name: 'muting') bool isMuting,
      @JsonKey(name: 'muting_notifications') bool isMutingNotifications,
      @JsonKey(name: 'requested') bool isRequested,
      @JsonKey(name: 'domain_blocking') bool isDomainBlocking,
      @JsonKey(name: 'endorsed') bool isEndorsed,
      List<Language>? languages});
}

/// @nodoc
class __$$_RelationshipCopyWithImpl<$Res>
    extends _$RelationshipCopyWithImpl<$Res, _$_Relationship>
    implements _$$_RelationshipCopyWith<$Res> {
  __$$_RelationshipCopyWithImpl(
      _$_Relationship _value, $Res Function(_$_Relationship) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bio = null,
    Object? isFollowing = null,
    Object? isFollowed = null,
    Object? isShowingReblogs = null,
    Object? isNotifying = null,
    Object? isBlocking = null,
    Object? isBlocked = null,
    Object? isMuting = null,
    Object? isMutingNotifications = null,
    Object? isRequested = null,
    Object? isDomainBlocking = null,
    Object? isEndorsed = null,
    Object? languages = freezed,
  }) {
    return _then(_$_Relationship(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      isFollowing: null == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollowed: null == isFollowed
          ? _value.isFollowed
          : isFollowed // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowingReblogs: null == isShowingReblogs
          ? _value.isShowingReblogs
          : isShowingReblogs // ignore: cast_nullable_to_non_nullable
              as bool,
      isNotifying: null == isNotifying
          ? _value.isNotifying
          : isNotifying // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlocking: null == isBlocking
          ? _value.isBlocking
          : isBlocking // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isMuting: null == isMuting
          ? _value.isMuting
          : isMuting // ignore: cast_nullable_to_non_nullable
              as bool,
      isMutingNotifications: null == isMutingNotifications
          ? _value.isMutingNotifications
          : isMutingNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      isRequested: null == isRequested
          ? _value.isRequested
          : isRequested // ignore: cast_nullable_to_non_nullable
              as bool,
      isDomainBlocking: null == isDomainBlocking
          ? _value.isDomainBlocking
          : isDomainBlocking // ignore: cast_nullable_to_non_nullable
              as bool,
      isEndorsed: null == isEndorsed
          ? _value.isEndorsed
          : isEndorsed // ignore: cast_nullable_to_non_nullable
              as bool,
      languages: freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_Relationship implements _Relationship {
  const _$_Relationship(
      {required this.id,
      @JsonKey(name: 'note')
          required this.bio,
      @JsonKey(name: 'following')
          required this.isFollowing,
      @JsonKey(name: 'followed_by')
          required this.isFollowed,
      @JsonKey(name: 'showing_reblogs')
          required this.isShowingReblogs,
      @JsonKey(name: 'notifying')
          required this.isNotifying,
      @JsonKey(name: 'blocking')
          required this.isBlocking,
      @JsonKey(name: 'blocked_by')
          required this.isBlocked,
      @JsonKey(name: 'muting')
          required this.isMuting,
      @JsonKey(name: 'muting_notifications')
          required this.isMutingNotifications,
      @JsonKey(name: 'requested')
          required this.isRequested,
      @JsonKey(name: 'domain_blocking')
          required this.isDomainBlocking,
      @JsonKey(name: 'endorsed')
          required this.isEndorsed,
      final List<Language>? languages})
      : _languages = languages;

  factory _$_Relationship.fromJson(Map<String, dynamic> json) =>
      _$$_RelationshipFromJson(json);

  /// The account ID.
  @override
  final String id;

  ///  This user’s profile bio
  @override
  @JsonKey(name: 'note')
  final String bio;

  /// Are you following this user?
  @override
  @JsonKey(name: 'following')
  final bool isFollowing;

  /// Are you followed by this user?
  @override
  @JsonKey(name: 'followed_by')
  final bool isFollowed;

  /// Are you receiving this user’s boosts in your home timeline?
  @override
  @JsonKey(name: 'showing_reblogs')
  final bool isShowingReblogs;

  /// Have you enabled notifications for this user?
  @override
  @JsonKey(name: 'notifying')
  final bool isNotifying;

  /// Are you blocking this user?
  @override
  @JsonKey(name: 'blocking')
  final bool isBlocking;

  /// Is this user blocking you?
  @override
  @JsonKey(name: 'blocked_by')
  final bool isBlocked;

  /// Are you muting this user?
  @override
  @JsonKey(name: 'muting')
  final bool isMuting;

  /// Are you muting notifications from this user?
  @override
  @JsonKey(name: 'muting_notifications')
  final bool isMutingNotifications;

  /// Do you have a pending follow request for this user?
  @override
  @JsonKey(name: 'requested')
  final bool isRequested;

  /// Are you blocking this user’s domain?
  @override
  @JsonKey(name: 'domain_blocking')
  final bool isDomainBlocking;

  /// Are you featuring this user on your profile?
  @override
  @JsonKey(name: 'endorsed')
  final bool isEndorsed;

  /// Which languages are you following from this user?
  final List<Language>? _languages;

  /// Which languages are you following from this user?
  @override
  List<Language>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Relationship(id: $id, bio: $bio, isFollowing: $isFollowing, isFollowed: $isFollowed, isShowingReblogs: $isShowingReblogs, isNotifying: $isNotifying, isBlocking: $isBlocking, isBlocked: $isBlocked, isMuting: $isMuting, isMutingNotifications: $isMutingNotifications, isRequested: $isRequested, isDomainBlocking: $isDomainBlocking, isEndorsed: $isEndorsed, languages: $languages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Relationship &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing) &&
            (identical(other.isFollowed, isFollowed) ||
                other.isFollowed == isFollowed) &&
            (identical(other.isShowingReblogs, isShowingReblogs) ||
                other.isShowingReblogs == isShowingReblogs) &&
            (identical(other.isNotifying, isNotifying) ||
                other.isNotifying == isNotifying) &&
            (identical(other.isBlocking, isBlocking) ||
                other.isBlocking == isBlocking) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.isMuting, isMuting) ||
                other.isMuting == isMuting) &&
            (identical(other.isMutingNotifications, isMutingNotifications) ||
                other.isMutingNotifications == isMutingNotifications) &&
            (identical(other.isRequested, isRequested) ||
                other.isRequested == isRequested) &&
            (identical(other.isDomainBlocking, isDomainBlocking) ||
                other.isDomainBlocking == isDomainBlocking) &&
            (identical(other.isEndorsed, isEndorsed) ||
                other.isEndorsed == isEndorsed) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      bio,
      isFollowing,
      isFollowed,
      isShowingReblogs,
      isNotifying,
      isBlocking,
      isBlocked,
      isMuting,
      isMutingNotifications,
      isRequested,
      isDomainBlocking,
      isEndorsed,
      const DeepCollectionEquality().hash(_languages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RelationshipCopyWith<_$_Relationship> get copyWith =>
      __$$_RelationshipCopyWithImpl<_$_Relationship>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RelationshipToJson(
      this,
    );
  }
}

abstract class _Relationship implements Relationship {
  const factory _Relationship(
      {required final String id,
      @JsonKey(name: 'note')
          required final String bio,
      @JsonKey(name: 'following')
          required final bool isFollowing,
      @JsonKey(name: 'followed_by')
          required final bool isFollowed,
      @JsonKey(name: 'showing_reblogs')
          required final bool isShowingReblogs,
      @JsonKey(name: 'notifying')
          required final bool isNotifying,
      @JsonKey(name: 'blocking')
          required final bool isBlocking,
      @JsonKey(name: 'blocked_by')
          required final bool isBlocked,
      @JsonKey(name: 'muting')
          required final bool isMuting,
      @JsonKey(name: 'muting_notifications')
          required final bool isMutingNotifications,
      @JsonKey(name: 'requested')
          required final bool isRequested,
      @JsonKey(name: 'domain_blocking')
          required final bool isDomainBlocking,
      @JsonKey(name: 'endorsed')
          required final bool isEndorsed,
      final List<Language>? languages}) = _$_Relationship;

  factory _Relationship.fromJson(Map<String, dynamic> json) =
      _$_Relationship.fromJson;

  @override

  /// The account ID.
  String get id;
  @override

  ///  This user’s profile bio
  @JsonKey(name: 'note')
  String get bio;
  @override

  /// Are you following this user?
  @JsonKey(name: 'following')
  bool get isFollowing;
  @override

  /// Are you followed by this user?
  @JsonKey(name: 'followed_by')
  bool get isFollowed;
  @override

  /// Are you receiving this user’s boosts in your home timeline?
  @JsonKey(name: 'showing_reblogs')
  bool get isShowingReblogs;
  @override

  /// Have you enabled notifications for this user?
  @JsonKey(name: 'notifying')
  bool get isNotifying;
  @override

  /// Are you blocking this user?
  @JsonKey(name: 'blocking')
  bool get isBlocking;
  @override

  /// Is this user blocking you?
  @JsonKey(name: 'blocked_by')
  bool get isBlocked;
  @override

  /// Are you muting this user?
  @JsonKey(name: 'muting')
  bool get isMuting;
  @override

  /// Are you muting notifications from this user?
  @JsonKey(name: 'muting_notifications')
  bool get isMutingNotifications;
  @override

  /// Do you have a pending follow request for this user?
  @JsonKey(name: 'requested')
  bool get isRequested;
  @override

  /// Are you blocking this user’s domain?
  @JsonKey(name: 'domain_blocking')
  bool get isDomainBlocking;
  @override

  /// Are you featuring this user on your profile?
  @JsonKey(name: 'endorsed')
  bool get isEndorsed;
  @override

  /// Which languages are you following from this user?
  List<Language>? get languages;
  @override
  @JsonKey(ignore: true)
  _$$_RelationshipCopyWith<_$_Relationship> get copyWith =>
      throw _privateConstructorUsedError;
}
