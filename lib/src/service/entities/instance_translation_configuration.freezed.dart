// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instance_translation_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InstanceTranslationConfiguration _$InstanceTranslationConfigurationFromJson(
    Map<String, dynamic> json) {
  return _InstanceTranslationConfiguration.fromJson(json);
}

/// @nodoc
mixin _$InstanceTranslationConfiguration {
  /// The Web Sockets URL for connecting to the streaming API.
  @JsonKey(name: 'enabled')
  bool get isEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstanceTranslationConfigurationCopyWith<InstanceTranslationConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstanceTranslationConfigurationCopyWith<$Res> {
  factory $InstanceTranslationConfigurationCopyWith(
          InstanceTranslationConfiguration value,
          $Res Function(InstanceTranslationConfiguration) then) =
      _$InstanceTranslationConfigurationCopyWithImpl<$Res,
          InstanceTranslationConfiguration>;
  @useResult
  $Res call({@JsonKey(name: 'enabled') bool isEnabled});
}

/// @nodoc
class _$InstanceTranslationConfigurationCopyWithImpl<$Res,
        $Val extends InstanceTranslationConfiguration>
    implements $InstanceTranslationConfigurationCopyWith<$Res> {
  _$InstanceTranslationConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
  }) {
    return _then(_value.copyWith(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InstanceTranslationConfigurationCopyWith<$Res>
    implements $InstanceTranslationConfigurationCopyWith<$Res> {
  factory _$$_InstanceTranslationConfigurationCopyWith(
          _$_InstanceTranslationConfiguration value,
          $Res Function(_$_InstanceTranslationConfiguration) then) =
      __$$_InstanceTranslationConfigurationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'enabled') bool isEnabled});
}

/// @nodoc
class __$$_InstanceTranslationConfigurationCopyWithImpl<$Res>
    extends _$InstanceTranslationConfigurationCopyWithImpl<$Res,
        _$_InstanceTranslationConfiguration>
    implements _$$_InstanceTranslationConfigurationCopyWith<$Res> {
  __$$_InstanceTranslationConfigurationCopyWithImpl(
      _$_InstanceTranslationConfiguration _value,
      $Res Function(_$_InstanceTranslationConfiguration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
  }) {
    return _then(_$_InstanceTranslationConfiguration(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_InstanceTranslationConfiguration
    implements _InstanceTranslationConfiguration {
  const _$_InstanceTranslationConfiguration(
      {@JsonKey(name: 'enabled') required this.isEnabled});

  factory _$_InstanceTranslationConfiguration.fromJson(
          Map<String, dynamic> json) =>
      _$$_InstanceTranslationConfigurationFromJson(json);

  /// The Web Sockets URL for connecting to the streaming API.
  @override
  @JsonKey(name: 'enabled')
  final bool isEnabled;

  @override
  String toString() {
    return 'InstanceTranslationConfiguration(isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InstanceTranslationConfiguration &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InstanceTranslationConfigurationCopyWith<
          _$_InstanceTranslationConfiguration>
      get copyWith => __$$_InstanceTranslationConfigurationCopyWithImpl<
          _$_InstanceTranslationConfiguration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstanceTranslationConfigurationToJson(
      this,
    );
  }
}

abstract class _InstanceTranslationConfiguration
    implements InstanceTranslationConfiguration {
  const factory _InstanceTranslationConfiguration(
          {@JsonKey(name: 'enabled') required final bool isEnabled}) =
      _$_InstanceTranslationConfiguration;

  factory _InstanceTranslationConfiguration.fromJson(
      Map<String, dynamic> json) = _$_InstanceTranslationConfiguration.fromJson;

  @override

  /// The Web Sockets URL for connecting to the streaming API.
  @JsonKey(name: 'enabled')
  bool get isEnabled;
  @override
  @JsonKey(ignore: true)
  _$$_InstanceTranslationConfigurationCopyWith<
          _$_InstanceTranslationConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}
