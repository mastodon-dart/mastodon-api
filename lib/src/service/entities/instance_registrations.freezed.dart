// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instance_registrations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InstanceRegistrations _$InstanceRegistrationsFromJson(
    Map<String, dynamic> json) {
  return _InstanceRegistrations.fromJson(json);
}

/// @nodoc
mixin _$InstanceRegistrations {
  /// Whether registrations are enabled.
  @JsonKey(name: 'enabled')
  bool get isEnabled => throw _privateConstructorUsedError;

  /// Whether registrations require moderator approval.
  @JsonKey(name: 'approval_required')
  bool get isApprovalRequired => throw _privateConstructorUsedError;

  /// A custom message to be shown when registrations are closed.
  @JsonKey(name: 'message')
  String? get closedMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstanceRegistrationsCopyWith<InstanceRegistrations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstanceRegistrationsCopyWith<$Res> {
  factory $InstanceRegistrationsCopyWith(InstanceRegistrations value,
          $Res Function(InstanceRegistrations) then) =
      _$InstanceRegistrationsCopyWithImpl<$Res, InstanceRegistrations>;
  @useResult
  $Res call(
      {@JsonKey(name: 'enabled') bool isEnabled,
      @JsonKey(name: 'approval_required') bool isApprovalRequired,
      @JsonKey(name: 'message') String? closedMessage});
}

/// @nodoc
class _$InstanceRegistrationsCopyWithImpl<$Res,
        $Val extends InstanceRegistrations>
    implements $InstanceRegistrationsCopyWith<$Res> {
  _$InstanceRegistrationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? isApprovalRequired = null,
    Object? closedMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isApprovalRequired: null == isApprovalRequired
          ? _value.isApprovalRequired
          : isApprovalRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      closedMessage: freezed == closedMessage
          ? _value.closedMessage
          : closedMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InstanceRegistrationsCopyWith<$Res>
    implements $InstanceRegistrationsCopyWith<$Res> {
  factory _$$_InstanceRegistrationsCopyWith(_$_InstanceRegistrations value,
          $Res Function(_$_InstanceRegistrations) then) =
      __$$_InstanceRegistrationsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'enabled') bool isEnabled,
      @JsonKey(name: 'approval_required') bool isApprovalRequired,
      @JsonKey(name: 'message') String? closedMessage});
}

/// @nodoc
class __$$_InstanceRegistrationsCopyWithImpl<$Res>
    extends _$InstanceRegistrationsCopyWithImpl<$Res, _$_InstanceRegistrations>
    implements _$$_InstanceRegistrationsCopyWith<$Res> {
  __$$_InstanceRegistrationsCopyWithImpl(_$_InstanceRegistrations _value,
      $Res Function(_$_InstanceRegistrations) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? isApprovalRequired = null,
    Object? closedMessage = freezed,
  }) {
    return _then(_$_InstanceRegistrations(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isApprovalRequired: null == isApprovalRequired
          ? _value.isApprovalRequired
          : isApprovalRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      closedMessage: freezed == closedMessage
          ? _value.closedMessage
          : closedMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_InstanceRegistrations implements _InstanceRegistrations {
  const _$_InstanceRegistrations(
      {@JsonKey(name: 'enabled') required this.isEnabled,
      @JsonKey(name: 'approval_required') required this.isApprovalRequired,
      @JsonKey(name: 'message') this.closedMessage});

  factory _$_InstanceRegistrations.fromJson(Map<String, dynamic> json) =>
      _$$_InstanceRegistrationsFromJson(json);

  /// Whether registrations are enabled.
  @override
  @JsonKey(name: 'enabled')
  final bool isEnabled;

  /// Whether registrations require moderator approval.
  @override
  @JsonKey(name: 'approval_required')
  final bool isApprovalRequired;

  /// A custom message to be shown when registrations are closed.
  @override
  @JsonKey(name: 'message')
  final String? closedMessage;

  @override
  String toString() {
    return 'InstanceRegistrations(isEnabled: $isEnabled, isApprovalRequired: $isApprovalRequired, closedMessage: $closedMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InstanceRegistrations &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.isApprovalRequired, isApprovalRequired) ||
                other.isApprovalRequired == isApprovalRequired) &&
            (identical(other.closedMessage, closedMessage) ||
                other.closedMessage == closedMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isEnabled, isApprovalRequired, closedMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InstanceRegistrationsCopyWith<_$_InstanceRegistrations> get copyWith =>
      __$$_InstanceRegistrationsCopyWithImpl<_$_InstanceRegistrations>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstanceRegistrationsToJson(
      this,
    );
  }
}

abstract class _InstanceRegistrations implements InstanceRegistrations {
  const factory _InstanceRegistrations(
      {@JsonKey(name: 'enabled')
          required final bool isEnabled,
      @JsonKey(name: 'approval_required')
          required final bool isApprovalRequired,
      @JsonKey(name: 'message')
          final String? closedMessage}) = _$_InstanceRegistrations;

  factory _InstanceRegistrations.fromJson(Map<String, dynamic> json) =
      _$_InstanceRegistrations.fromJson;

  @override

  /// Whether registrations are enabled.
  @JsonKey(name: 'enabled')
  bool get isEnabled;
  @override

  /// Whether registrations require moderator approval.
  @JsonKey(name: 'approval_required')
  bool get isApprovalRequired;
  @override

  /// A custom message to be shown when registrations are closed.
  @JsonKey(name: 'message')
  String? get closedMessage;
  @override
  @JsonKey(ignore: true)
  _$$_InstanceRegistrationsCopyWith<_$_InstanceRegistrations> get copyWith =>
      throw _privateConstructorUsedError;
}
