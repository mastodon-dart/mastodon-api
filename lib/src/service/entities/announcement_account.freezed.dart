// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnnouncementAccount _$AnnouncementAccountFromJson(Map<String, dynamic> json) {
  return _AnnouncementAccount.fromJson(json);
}

/// @nodoc
mixin _$AnnouncementAccount {
  /// The account ID of the mentioned user.
  String get id => throw _privateConstructorUsedError;

  /// The username of the mentioned user.
  String get username => throw _privateConstructorUsedError;

  /// The location of the mentioned user’s profile.
  String get url => throw _privateConstructorUsedError;

  /// The web finger acct: URI of the mentioned user. Equivalent to username
  /// for local users, or username@domain for remote users.
  @JsonKey(name: 'acct')
  String get webFingerAccountUri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnouncementAccountCopyWith<AnnouncementAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementAccountCopyWith<$Res> {
  factory $AnnouncementAccountCopyWith(
          AnnouncementAccount value, $Res Function(AnnouncementAccount) then) =
      _$AnnouncementAccountCopyWithImpl<$Res, AnnouncementAccount>;
  @useResult
  $Res call(
      {String id,
      String username,
      String url,
      @JsonKey(name: 'acct') String webFingerAccountUri});
}

/// @nodoc
class _$AnnouncementAccountCopyWithImpl<$Res, $Val extends AnnouncementAccount>
    implements $AnnouncementAccountCopyWith<$Res> {
  _$AnnouncementAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? url = null,
    Object? webFingerAccountUri = null,
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
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      webFingerAccountUri: null == webFingerAccountUri
          ? _value.webFingerAccountUri
          : webFingerAccountUri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnnouncementAccountCopyWith<$Res>
    implements $AnnouncementAccountCopyWith<$Res> {
  factory _$$_AnnouncementAccountCopyWith(_$_AnnouncementAccount value,
          $Res Function(_$_AnnouncementAccount) then) =
      __$$_AnnouncementAccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String username,
      String url,
      @JsonKey(name: 'acct') String webFingerAccountUri});
}

/// @nodoc
class __$$_AnnouncementAccountCopyWithImpl<$Res>
    extends _$AnnouncementAccountCopyWithImpl<$Res, _$_AnnouncementAccount>
    implements _$$_AnnouncementAccountCopyWith<$Res> {
  __$$_AnnouncementAccountCopyWithImpl(_$_AnnouncementAccount _value,
      $Res Function(_$_AnnouncementAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? url = null,
    Object? webFingerAccountUri = null,
  }) {
    return _then(_$_AnnouncementAccount(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      webFingerAccountUri: null == webFingerAccountUri
          ? _value.webFingerAccountUri
          : webFingerAccountUri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_AnnouncementAccount implements _AnnouncementAccount {
  const _$_AnnouncementAccount(
      {required this.id,
      required this.username,
      required this.url,
      @JsonKey(name: 'acct') required this.webFingerAccountUri});

  factory _$_AnnouncementAccount.fromJson(Map<String, dynamic> json) =>
      _$$_AnnouncementAccountFromJson(json);

  /// The account ID of the mentioned user.
  @override
  final String id;

  /// The username of the mentioned user.
  @override
  final String username;

  /// The location of the mentioned user’s profile.
  @override
  final String url;

  /// The web finger acct: URI of the mentioned user. Equivalent to username
  /// for local users, or username@domain for remote users.
  @override
  @JsonKey(name: 'acct')
  final String webFingerAccountUri;

  @override
  String toString() {
    return 'AnnouncementAccount(id: $id, username: $username, url: $url, webFingerAccountUri: $webFingerAccountUri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnnouncementAccount &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.webFingerAccountUri, webFingerAccountUri) ||
                other.webFingerAccountUri == webFingerAccountUri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, username, url, webFingerAccountUri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnnouncementAccountCopyWith<_$_AnnouncementAccount> get copyWith =>
      __$$_AnnouncementAccountCopyWithImpl<_$_AnnouncementAccount>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnnouncementAccountToJson(
      this,
    );
  }
}

abstract class _AnnouncementAccount implements AnnouncementAccount {
  const factory _AnnouncementAccount(
          {required final String id,
          required final String username,
          required final String url,
          @JsonKey(name: 'acct') required final String webFingerAccountUri}) =
      _$_AnnouncementAccount;

  factory _AnnouncementAccount.fromJson(Map<String, dynamic> json) =
      _$_AnnouncementAccount.fromJson;

  @override

  /// The account ID of the mentioned user.
  String get id;
  @override

  /// The username of the mentioned user.
  String get username;
  @override

  /// The location of the mentioned user’s profile.
  String get url;
  @override

  /// The web finger acct: URI of the mentioned user. Equivalent to username
  /// for local users, or username@domain for remote users.
  @JsonKey(name: 'acct')
  String get webFingerAccountUri;
  @override
  @JsonKey(ignore: true)
  _$$_AnnouncementAccountCopyWith<_$_AnnouncementAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
