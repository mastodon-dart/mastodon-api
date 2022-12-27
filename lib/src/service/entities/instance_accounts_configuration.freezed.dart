// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instance_accounts_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InstanceAccountsConfiguration _$InstanceAccountsConfigurationFromJson(
    Map<String, dynamic> json) {
  return _InstanceAccountsConfiguration.fromJson(json);
}

/// @nodoc
mixin _$InstanceAccountsConfiguration {
  /// The maximum number of featured tags allowed for each account.
  int get maxFeaturedTags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstanceAccountsConfigurationCopyWith<InstanceAccountsConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstanceAccountsConfigurationCopyWith<$Res> {
  factory $InstanceAccountsConfigurationCopyWith(
          InstanceAccountsConfiguration value,
          $Res Function(InstanceAccountsConfiguration) then) =
      _$InstanceAccountsConfigurationCopyWithImpl<$Res,
          InstanceAccountsConfiguration>;
  @useResult
  $Res call({int maxFeaturedTags});
}

/// @nodoc
class _$InstanceAccountsConfigurationCopyWithImpl<$Res,
        $Val extends InstanceAccountsConfiguration>
    implements $InstanceAccountsConfigurationCopyWith<$Res> {
  _$InstanceAccountsConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxFeaturedTags = null,
  }) {
    return _then(_value.copyWith(
      maxFeaturedTags: null == maxFeaturedTags
          ? _value.maxFeaturedTags
          : maxFeaturedTags // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InstanceAccountsConfigurationCopyWith<$Res>
    implements $InstanceAccountsConfigurationCopyWith<$Res> {
  factory _$$_InstanceAccountsConfigurationCopyWith(
          _$_InstanceAccountsConfiguration value,
          $Res Function(_$_InstanceAccountsConfiguration) then) =
      __$$_InstanceAccountsConfigurationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int maxFeaturedTags});
}

/// @nodoc
class __$$_InstanceAccountsConfigurationCopyWithImpl<$Res>
    extends _$InstanceAccountsConfigurationCopyWithImpl<$Res,
        _$_InstanceAccountsConfiguration>
    implements _$$_InstanceAccountsConfigurationCopyWith<$Res> {
  __$$_InstanceAccountsConfigurationCopyWithImpl(
      _$_InstanceAccountsConfiguration _value,
      $Res Function(_$_InstanceAccountsConfiguration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxFeaturedTags = null,
  }) {
    return _then(_$_InstanceAccountsConfiguration(
      maxFeaturedTags: null == maxFeaturedTags
          ? _value.maxFeaturedTags
          : maxFeaturedTags // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_InstanceAccountsConfiguration
    implements _InstanceAccountsConfiguration {
  const _$_InstanceAccountsConfiguration({required this.maxFeaturedTags});

  factory _$_InstanceAccountsConfiguration.fromJson(
          Map<String, dynamic> json) =>
      _$$_InstanceAccountsConfigurationFromJson(json);

  /// The maximum number of featured tags allowed for each account.
  @override
  final int maxFeaturedTags;

  @override
  String toString() {
    return 'InstanceAccountsConfiguration(maxFeaturedTags: $maxFeaturedTags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InstanceAccountsConfiguration &&
            (identical(other.maxFeaturedTags, maxFeaturedTags) ||
                other.maxFeaturedTags == maxFeaturedTags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maxFeaturedTags);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InstanceAccountsConfigurationCopyWith<_$_InstanceAccountsConfiguration>
      get copyWith => __$$_InstanceAccountsConfigurationCopyWithImpl<
          _$_InstanceAccountsConfiguration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstanceAccountsConfigurationToJson(
      this,
    );
  }
}

abstract class _InstanceAccountsConfiguration
    implements InstanceAccountsConfiguration {
  const factory _InstanceAccountsConfiguration(
      {required final int maxFeaturedTags}) = _$_InstanceAccountsConfiguration;

  factory _InstanceAccountsConfiguration.fromJson(Map<String, dynamic> json) =
      _$_InstanceAccountsConfiguration.fromJson;

  @override

  /// The maximum number of featured tags allowed for each account.
  int get maxFeaturedTags;
  @override
  @JsonKey(ignore: true)
  _$$_InstanceAccountsConfigurationCopyWith<_$_InstanceAccountsConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}
