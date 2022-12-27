// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registered_application.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisteredApplication _$RegisteredApplicationFromJson(
    Map<String, dynamic> json) {
  return _RegisteredApplication.fromJson(json);
}

/// @nodoc
mixin _$RegisteredApplication {
  /// The id of of this application.
  String get id => throw _privateConstructorUsedError;

  /// The name of your application.
  String get name => throw _privateConstructorUsedError;

  /// Client ID key, to be used for obtaining OAuth tokens.
  String get clientId => throw _privateConstructorUsedError;

  /// Client secret key, to be used for obtaining OAuth tokens.
  String get clientSecret => throw _privateConstructorUsedError;

  /// The registered redirect uri.
  String get redirectUri => throw _privateConstructorUsedError;

  /// Used for Push Streaming API.
  String get vapidKey => throw _privateConstructorUsedError;

  /// The website associated with your application.
  String? get website => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisteredApplicationCopyWith<RegisteredApplication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisteredApplicationCopyWith<$Res> {
  factory $RegisteredApplicationCopyWith(RegisteredApplication value,
          $Res Function(RegisteredApplication) then) =
      _$RegisteredApplicationCopyWithImpl<$Res, RegisteredApplication>;
  @useResult
  $Res call(
      {String id,
      String name,
      String clientId,
      String clientSecret,
      String redirectUri,
      String vapidKey,
      String? website});
}

/// @nodoc
class _$RegisteredApplicationCopyWithImpl<$Res,
        $Val extends RegisteredApplication>
    implements $RegisteredApplicationCopyWith<$Res> {
  _$RegisteredApplicationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? clientId = null,
    Object? clientSecret = null,
    Object? redirectUri = null,
    Object? vapidKey = null,
    Object? website = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
      redirectUri: null == redirectUri
          ? _value.redirectUri
          : redirectUri // ignore: cast_nullable_to_non_nullable
              as String,
      vapidKey: null == vapidKey
          ? _value.vapidKey
          : vapidKey // ignore: cast_nullable_to_non_nullable
              as String,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisteredApplicationCopyWith<$Res>
    implements $RegisteredApplicationCopyWith<$Res> {
  factory _$$_RegisteredApplicationCopyWith(_$_RegisteredApplication value,
          $Res Function(_$_RegisteredApplication) then) =
      __$$_RegisteredApplicationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String clientId,
      String clientSecret,
      String redirectUri,
      String vapidKey,
      String? website});
}

/// @nodoc
class __$$_RegisteredApplicationCopyWithImpl<$Res>
    extends _$RegisteredApplicationCopyWithImpl<$Res, _$_RegisteredApplication>
    implements _$$_RegisteredApplicationCopyWith<$Res> {
  __$$_RegisteredApplicationCopyWithImpl(_$_RegisteredApplication _value,
      $Res Function(_$_RegisteredApplication) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? clientId = null,
    Object? clientSecret = null,
    Object? redirectUri = null,
    Object? vapidKey = null,
    Object? website = freezed,
  }) {
    return _then(_$_RegisteredApplication(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
      redirectUri: null == redirectUri
          ? _value.redirectUri
          : redirectUri // ignore: cast_nullable_to_non_nullable
              as String,
      vapidKey: null == vapidKey
          ? _value.vapidKey
          : vapidKey // ignore: cast_nullable_to_non_nullable
              as String,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_RegisteredApplication implements _RegisteredApplication {
  const _$_RegisteredApplication(
      {required this.id,
      required this.name,
      required this.clientId,
      required this.clientSecret,
      required this.redirectUri,
      required this.vapidKey,
      this.website});

  factory _$_RegisteredApplication.fromJson(Map<String, dynamic> json) =>
      _$$_RegisteredApplicationFromJson(json);

  /// The id of of this application.
  @override
  final String id;

  /// The name of your application.
  @override
  final String name;

  /// Client ID key, to be used for obtaining OAuth tokens.
  @override
  final String clientId;

  /// Client secret key, to be used for obtaining OAuth tokens.
  @override
  final String clientSecret;

  /// The registered redirect uri.
  @override
  final String redirectUri;

  /// Used for Push Streaming API.
  @override
  final String vapidKey;

  /// The website associated with your application.
  @override
  final String? website;

  @override
  String toString() {
    return 'RegisteredApplication(id: $id, name: $name, clientId: $clientId, clientSecret: $clientSecret, redirectUri: $redirectUri, vapidKey: $vapidKey, website: $website)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisteredApplication &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret) &&
            (identical(other.redirectUri, redirectUri) ||
                other.redirectUri == redirectUri) &&
            (identical(other.vapidKey, vapidKey) ||
                other.vapidKey == vapidKey) &&
            (identical(other.website, website) || other.website == website));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, clientId, clientSecret,
      redirectUri, vapidKey, website);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisteredApplicationCopyWith<_$_RegisteredApplication> get copyWith =>
      __$$_RegisteredApplicationCopyWithImpl<_$_RegisteredApplication>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisteredApplicationToJson(
      this,
    );
  }
}

abstract class _RegisteredApplication implements RegisteredApplication {
  const factory _RegisteredApplication(
      {required final String id,
      required final String name,
      required final String clientId,
      required final String clientSecret,
      required final String redirectUri,
      required final String vapidKey,
      final String? website}) = _$_RegisteredApplication;

  factory _RegisteredApplication.fromJson(Map<String, dynamic> json) =
      _$_RegisteredApplication.fromJson;

  @override

  /// The id of of this application.
  String get id;
  @override

  /// The name of your application.
  String get name;
  @override

  /// Client ID key, to be used for obtaining OAuth tokens.
  String get clientId;
  @override

  /// Client secret key, to be used for obtaining OAuth tokens.
  String get clientSecret;
  @override

  /// The registered redirect uri.
  String get redirectUri;
  @override

  /// Used for Push Streaming API.
  String get vapidKey;
  @override

  /// The website associated with your application.
  String? get website;
  @override
  @JsonKey(ignore: true)
  _$$_RegisteredApplicationCopyWith<_$_RegisteredApplication> get copyWith =>
      throw _privateConstructorUsedError;
}
