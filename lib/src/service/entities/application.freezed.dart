// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'application.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Application _$ApplicationFromJson(Map<String, dynamic> json) {
  return _Application.fromJson(json);
}

/// @nodoc
mixin _$Application {
  /// The name of your application.
  String get name => throw _privateConstructorUsedError;

  /// The website associated with your application.
  String? get website => throw _privateConstructorUsedError;

  /// Used for Push Streaming API.
  ///
  /// Returned with `POST /api/v1/apps`.
  /// Equivalent to `PushSubscription#server_key`.
  String? get vapidKey => throw _privateConstructorUsedError;

  /// Client ID key, to be used for obtaining OAuth tokens.
  String? get clientId => throw _privateConstructorUsedError;

  /// Client secret key, to be used for obtaining OAuth tokens.
  String? get clientSecret => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicationCopyWith<Application> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationCopyWith<$Res> {
  factory $ApplicationCopyWith(
          Application value, $Res Function(Application) then) =
      _$ApplicationCopyWithImpl<$Res, Application>;
  @useResult
  $Res call(
      {String name,
      String? website,
      String? vapidKey,
      String? clientId,
      String? clientSecret});
}

/// @nodoc
class _$ApplicationCopyWithImpl<$Res, $Val extends Application>
    implements $ApplicationCopyWith<$Res> {
  _$ApplicationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? website = freezed,
    Object? vapidKey = freezed,
    Object? clientId = freezed,
    Object? clientSecret = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      vapidKey: freezed == vapidKey
          ? _value.vapidKey
          : vapidKey // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientSecret: freezed == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApplicationCopyWith<$Res>
    implements $ApplicationCopyWith<$Res> {
  factory _$$_ApplicationCopyWith(
          _$_Application value, $Res Function(_$_Application) then) =
      __$$_ApplicationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? website,
      String? vapidKey,
      String? clientId,
      String? clientSecret});
}

/// @nodoc
class __$$_ApplicationCopyWithImpl<$Res>
    extends _$ApplicationCopyWithImpl<$Res, _$_Application>
    implements _$$_ApplicationCopyWith<$Res> {
  __$$_ApplicationCopyWithImpl(
      _$_Application _value, $Res Function(_$_Application) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? website = freezed,
    Object? vapidKey = freezed,
    Object? clientId = freezed,
    Object? clientSecret = freezed,
  }) {
    return _then(_$_Application(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      vapidKey: freezed == vapidKey
          ? _value.vapidKey
          : vapidKey // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientSecret: freezed == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_Application implements _Application {
  const _$_Application(
      {required this.name,
      this.website,
      this.vapidKey,
      this.clientId,
      this.clientSecret});

  factory _$_Application.fromJson(Map<String, dynamic> json) =>
      _$$_ApplicationFromJson(json);

  /// The name of your application.
  @override
  final String name;

  /// The website associated with your application.
  @override
  final String? website;

  /// Used for Push Streaming API.
  ///
  /// Returned with `POST /api/v1/apps`.
  /// Equivalent to `PushSubscription#server_key`.
  @override
  final String? vapidKey;

  /// Client ID key, to be used for obtaining OAuth tokens.
  @override
  final String? clientId;

  /// Client secret key, to be used for obtaining OAuth tokens.
  @override
  final String? clientSecret;

  @override
  String toString() {
    return 'Application(name: $name, website: $website, vapidKey: $vapidKey, clientId: $clientId, clientSecret: $clientSecret)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Application &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.vapidKey, vapidKey) ||
                other.vapidKey == vapidKey) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, website, vapidKey, clientId, clientSecret);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplicationCopyWith<_$_Application> get copyWith =>
      __$$_ApplicationCopyWithImpl<_$_Application>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApplicationToJson(
      this,
    );
  }
}

abstract class _Application implements Application {
  const factory _Application(
      {required final String name,
      final String? website,
      final String? vapidKey,
      final String? clientId,
      final String? clientSecret}) = _$_Application;

  factory _Application.fromJson(Map<String, dynamic> json) =
      _$_Application.fromJson;

  @override

  /// The name of your application.
  String get name;
  @override

  /// The website associated with your application.
  String? get website;
  @override

  /// Used for Push Streaming API.
  ///
  /// Returned with `POST /api/v1/apps`.
  /// Equivalent to `PushSubscription#server_key`.
  String? get vapidKey;
  @override

  /// Client ID key, to be used for obtaining OAuth tokens.
  String? get clientId;
  @override

  /// Client secret key, to be used for obtaining OAuth tokens.
  String? get clientSecret;
  @override
  @JsonKey(ignore: true)
  _$$_ApplicationCopyWith<_$_Application> get copyWith =>
      throw _privateConstructorUsedError;
}
