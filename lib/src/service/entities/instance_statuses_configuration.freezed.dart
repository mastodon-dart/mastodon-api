// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instance_statuses_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InstanceStatusesConfiguration _$InstanceStatusesConfigurationFromJson(
    Map<String, dynamic> json) {
  return _InstanceStatusesConfiguration.fromJson(json);
}

/// @nodoc
mixin _$InstanceStatusesConfiguration {
  /// The maximum number of allowed characters per status.
  int get maxCharacters => throw _privateConstructorUsedError;

  /// The maximum number of media attachments that can be added to a status.
  int get maxMediaAttachments => throw _privateConstructorUsedError;

  /// Each URL in a status will be assumed to be exactly this many characters.
  int get charactersReservedPerUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstanceStatusesConfigurationCopyWith<InstanceStatusesConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstanceStatusesConfigurationCopyWith<$Res> {
  factory $InstanceStatusesConfigurationCopyWith(
          InstanceStatusesConfiguration value,
          $Res Function(InstanceStatusesConfiguration) then) =
      _$InstanceStatusesConfigurationCopyWithImpl<$Res,
          InstanceStatusesConfiguration>;
  @useResult
  $Res call(
      {int maxCharacters,
      int maxMediaAttachments,
      int charactersReservedPerUrl});
}

/// @nodoc
class _$InstanceStatusesConfigurationCopyWithImpl<$Res,
        $Val extends InstanceStatusesConfiguration>
    implements $InstanceStatusesConfigurationCopyWith<$Res> {
  _$InstanceStatusesConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxCharacters = null,
    Object? maxMediaAttachments = null,
    Object? charactersReservedPerUrl = null,
  }) {
    return _then(_value.copyWith(
      maxCharacters: null == maxCharacters
          ? _value.maxCharacters
          : maxCharacters // ignore: cast_nullable_to_non_nullable
              as int,
      maxMediaAttachments: null == maxMediaAttachments
          ? _value.maxMediaAttachments
          : maxMediaAttachments // ignore: cast_nullable_to_non_nullable
              as int,
      charactersReservedPerUrl: null == charactersReservedPerUrl
          ? _value.charactersReservedPerUrl
          : charactersReservedPerUrl // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InstanceStatusesConfigurationCopyWith<$Res>
    implements $InstanceStatusesConfigurationCopyWith<$Res> {
  factory _$$_InstanceStatusesConfigurationCopyWith(
          _$_InstanceStatusesConfiguration value,
          $Res Function(_$_InstanceStatusesConfiguration) then) =
      __$$_InstanceStatusesConfigurationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int maxCharacters,
      int maxMediaAttachments,
      int charactersReservedPerUrl});
}

/// @nodoc
class __$$_InstanceStatusesConfigurationCopyWithImpl<$Res>
    extends _$InstanceStatusesConfigurationCopyWithImpl<$Res,
        _$_InstanceStatusesConfiguration>
    implements _$$_InstanceStatusesConfigurationCopyWith<$Res> {
  __$$_InstanceStatusesConfigurationCopyWithImpl(
      _$_InstanceStatusesConfiguration _value,
      $Res Function(_$_InstanceStatusesConfiguration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxCharacters = null,
    Object? maxMediaAttachments = null,
    Object? charactersReservedPerUrl = null,
  }) {
    return _then(_$_InstanceStatusesConfiguration(
      maxCharacters: null == maxCharacters
          ? _value.maxCharacters
          : maxCharacters // ignore: cast_nullable_to_non_nullable
              as int,
      maxMediaAttachments: null == maxMediaAttachments
          ? _value.maxMediaAttachments
          : maxMediaAttachments // ignore: cast_nullable_to_non_nullable
              as int,
      charactersReservedPerUrl: null == charactersReservedPerUrl
          ? _value.charactersReservedPerUrl
          : charactersReservedPerUrl // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_InstanceStatusesConfiguration
    implements _InstanceStatusesConfiguration {
  const _$_InstanceStatusesConfiguration(
      {required this.maxCharacters,
      required this.maxMediaAttachments,
      required this.charactersReservedPerUrl});

  factory _$_InstanceStatusesConfiguration.fromJson(
          Map<String, dynamic> json) =>
      _$$_InstanceStatusesConfigurationFromJson(json);

  /// The maximum number of allowed characters per status.
  @override
  final int maxCharacters;

  /// The maximum number of media attachments that can be added to a status.
  @override
  final int maxMediaAttachments;

  /// Each URL in a status will be assumed to be exactly this many characters.
  @override
  final int charactersReservedPerUrl;

  @override
  String toString() {
    return 'InstanceStatusesConfiguration(maxCharacters: $maxCharacters, maxMediaAttachments: $maxMediaAttachments, charactersReservedPerUrl: $charactersReservedPerUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InstanceStatusesConfiguration &&
            (identical(other.maxCharacters, maxCharacters) ||
                other.maxCharacters == maxCharacters) &&
            (identical(other.maxMediaAttachments, maxMediaAttachments) ||
                other.maxMediaAttachments == maxMediaAttachments) &&
            (identical(
                    other.charactersReservedPerUrl, charactersReservedPerUrl) ||
                other.charactersReservedPerUrl == charactersReservedPerUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maxCharacters,
      maxMediaAttachments, charactersReservedPerUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InstanceStatusesConfigurationCopyWith<_$_InstanceStatusesConfiguration>
      get copyWith => __$$_InstanceStatusesConfigurationCopyWithImpl<
          _$_InstanceStatusesConfiguration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstanceStatusesConfigurationToJson(
      this,
    );
  }
}

abstract class _InstanceStatusesConfiguration
    implements InstanceStatusesConfiguration {
  const factory _InstanceStatusesConfiguration(
          {required final int maxCharacters,
          required final int maxMediaAttachments,
          required final int charactersReservedPerUrl}) =
      _$_InstanceStatusesConfiguration;

  factory _InstanceStatusesConfiguration.fromJson(Map<String, dynamic> json) =
      _$_InstanceStatusesConfiguration.fromJson;

  @override

  /// The maximum number of allowed characters per status.
  int get maxCharacters;
  @override

  /// The maximum number of media attachments that can be added to a status.
  int get maxMediaAttachments;
  @override

  /// Each URL in a status will be assumed to be exactly this many characters.
  int get charactersReservedPerUrl;
  @override
  @JsonKey(ignore: true)
  _$$_InstanceStatusesConfigurationCopyWith<_$_InstanceStatusesConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}
