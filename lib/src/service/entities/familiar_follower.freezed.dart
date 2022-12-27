// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'familiar_follower.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FamiliarFollower _$FamiliarFollowerFromJson(Map<String, dynamic> json) {
  return _FamiliarFollower.fromJson(json);
}

/// @nodoc
mixin _$FamiliarFollower {
  /// The ID of the Account in the database.
  @JsonKey(name: 'id')
  String get accountId => throw _privateConstructorUsedError;

  /// Accounts you follow that also follow this account.
  List<Account> get accounts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FamiliarFollowerCopyWith<FamiliarFollower> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamiliarFollowerCopyWith<$Res> {
  factory $FamiliarFollowerCopyWith(
          FamiliarFollower value, $Res Function(FamiliarFollower) then) =
      _$FamiliarFollowerCopyWithImpl<$Res, FamiliarFollower>;
  @useResult
  $Res call({@JsonKey(name: 'id') String accountId, List<Account> accounts});
}

/// @nodoc
class _$FamiliarFollowerCopyWithImpl<$Res, $Val extends FamiliarFollower>
    implements $FamiliarFollowerCopyWith<$Res> {
  _$FamiliarFollowerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? accounts = null,
  }) {
    return _then(_value.copyWith(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FamiliarFollowerCopyWith<$Res>
    implements $FamiliarFollowerCopyWith<$Res> {
  factory _$$_FamiliarFollowerCopyWith(
          _$_FamiliarFollower value, $Res Function(_$_FamiliarFollower) then) =
      __$$_FamiliarFollowerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') String accountId, List<Account> accounts});
}

/// @nodoc
class __$$_FamiliarFollowerCopyWithImpl<$Res>
    extends _$FamiliarFollowerCopyWithImpl<$Res, _$_FamiliarFollower>
    implements _$$_FamiliarFollowerCopyWith<$Res> {
  __$$_FamiliarFollowerCopyWithImpl(
      _$_FamiliarFollower _value, $Res Function(_$_FamiliarFollower) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? accounts = null,
  }) {
    return _then(_$_FamiliarFollower(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_FamiliarFollower implements _FamiliarFollower {
  const _$_FamiliarFollower(
      {@JsonKey(name: 'id') required this.accountId,
      required final List<Account> accounts})
      : _accounts = accounts;

  factory _$_FamiliarFollower.fromJson(Map<String, dynamic> json) =>
      _$$_FamiliarFollowerFromJson(json);

  /// The ID of the Account in the database.
  @override
  @JsonKey(name: 'id')
  final String accountId;

  /// Accounts you follow that also follow this account.
  final List<Account> _accounts;

  /// Accounts you follow that also follow this account.
  @override
  List<Account> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  String toString() {
    return 'FamiliarFollower(accountId: $accountId, accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FamiliarFollower &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, accountId, const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FamiliarFollowerCopyWith<_$_FamiliarFollower> get copyWith =>
      __$$_FamiliarFollowerCopyWithImpl<_$_FamiliarFollower>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FamiliarFollowerToJson(
      this,
    );
  }
}

abstract class _FamiliarFollower implements FamiliarFollower {
  const factory _FamiliarFollower(
      {@JsonKey(name: 'id') required final String accountId,
      required final List<Account> accounts}) = _$_FamiliarFollower;

  factory _FamiliarFollower.fromJson(Map<String, dynamic> json) =
      _$_FamiliarFollower.fromJson;

  @override

  /// The ID of the Account in the database.
  @JsonKey(name: 'id')
  String get accountId;
  @override

  /// Accounts you follow that also follow this account.
  List<Account> get accounts;
  @override
  @JsonKey(ignore: true)
  _$$_FamiliarFollowerCopyWith<_$_FamiliarFollower> get copyWith =>
      throw _privateConstructorUsedError;
}
