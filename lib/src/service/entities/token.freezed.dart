// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Token _$TokenFromJson(Map<String, dynamic> json) {
  return _Token.fromJson(json);
}

/// @nodoc
mixin _$Token {
  /// An OAuth token to be used for authorization.
  String get accessToken => throw _privateConstructorUsedError;

  /// The OAuth token type. Mastodon uses Bearer tokens.
  String get tokenType => throw _privateConstructorUsedError;

  /// The OAuth scopes granted by this token.
  @JsonKey(name: 'scope')
  @ScopeConverter()
  List<Scope> get scopes => throw _privateConstructorUsedError;

  /// When the token was generated.
  @IntDateTimeConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenCopyWith<Token> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenCopyWith<$Res> {
  factory $TokenCopyWith(Token value, $Res Function(Token) then) =
      _$TokenCopyWithImpl<$Res, Token>;
  @useResult
  $Res call(
      {String accessToken,
      String tokenType,
      @JsonKey(name: 'scope') @ScopeConverter() List<Scope> scopes,
      @IntDateTimeConverter() DateTime createdAt});
}

/// @nodoc
class _$TokenCopyWithImpl<$Res, $Val extends Token>
    implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? tokenType = null,
    Object? scopes = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      scopes: null == scopes
          ? _value.scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as List<Scope>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TokenCopyWith<$Res> implements $TokenCopyWith<$Res> {
  factory _$$_TokenCopyWith(_$_Token value, $Res Function(_$_Token) then) =
      __$$_TokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accessToken,
      String tokenType,
      @JsonKey(name: 'scope') @ScopeConverter() List<Scope> scopes,
      @IntDateTimeConverter() DateTime createdAt});
}

/// @nodoc
class __$$_TokenCopyWithImpl<$Res> extends _$TokenCopyWithImpl<$Res, _$_Token>
    implements _$$_TokenCopyWith<$Res> {
  __$$_TokenCopyWithImpl(_$_Token _value, $Res Function(_$_Token) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? tokenType = null,
    Object? scopes = null,
    Object? createdAt = null,
  }) {
    return _then(_$_Token(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      scopes: null == scopes
          ? _value._scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as List<Scope>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Token implements _Token {
  const _$_Token(
      {required this.accessToken,
      required this.tokenType,
      @JsonKey(name: 'scope')
      @ScopeConverter()
          required final List<Scope> scopes,
      @IntDateTimeConverter()
          required this.createdAt})
      : _scopes = scopes;

  factory _$_Token.fromJson(Map<String, dynamic> json) =>
      _$$_TokenFromJson(json);

  /// An OAuth token to be used for authorization.
  @override
  final String accessToken;

  /// The OAuth token type. Mastodon uses Bearer tokens.
  @override
  final String tokenType;

  /// The OAuth scopes granted by this token.
  final List<Scope> _scopes;

  /// The OAuth scopes granted by this token.
  @override
  @JsonKey(name: 'scope')
  @ScopeConverter()
  List<Scope> get scopes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scopes);
  }

  /// When the token was generated.
  @override
  @IntDateTimeConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'Token(accessToken: $accessToken, tokenType: $tokenType, scopes: $scopes, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Token &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            const DeepCollectionEquality().equals(other._scopes, _scopes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, tokenType,
      const DeepCollectionEquality().hash(_scopes), createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenCopyWith<_$_Token> get copyWith =>
      __$$_TokenCopyWithImpl<_$_Token>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenToJson(
      this,
    );
  }
}

abstract class _Token implements Token {
  const factory _Token(
      {required final String accessToken,
      required final String tokenType,
      @JsonKey(name: 'scope')
      @ScopeConverter()
          required final List<Scope> scopes,
      @IntDateTimeConverter()
          required final DateTime createdAt}) = _$_Token;

  factory _Token.fromJson(Map<String, dynamic> json) = _$_Token.fromJson;

  @override

  /// An OAuth token to be used for authorization.
  String get accessToken;
  @override

  /// The OAuth token type. Mastodon uses Bearer tokens.
  String get tokenType;
  @override

  /// The OAuth scopes granted by this token.
  @JsonKey(name: 'scope')
  @ScopeConverter()
  List<Scope> get scopes;
  @override

  /// When the token was generated.
  @IntDateTimeConverter()
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_TokenCopyWith<_$_Token> get copyWith =>
      throw _privateConstructorUsedError;
}
