// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blocked_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlockedDomain _$BlockedDomainFromJson(Map<String, dynamic> json) {
  return _BlockedDomain.fromJson(json);
}

/// @nodoc
mixin _$BlockedDomain {
  /// The domain which is blocked.
  ///
  /// This may be obfuscated or partially censored.
  @JsonKey(name: 'domain')
  String get name => throw _privateConstructorUsedError;

  /// The SHA256 hash digest of the domain string.
  @JsonKey(name: 'digest')
  String get sha256digest => throw _privateConstructorUsedError;

  /// The level to which the domain is blocked.
  BlockSeverity get severity => throw _privateConstructorUsedError;

  /// An optional reason for the domain block.
  @JsonKey(name: 'comment')
  String? get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlockedDomainCopyWith<BlockedDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockedDomainCopyWith<$Res> {
  factory $BlockedDomainCopyWith(
          BlockedDomain value, $Res Function(BlockedDomain) then) =
      _$BlockedDomainCopyWithImpl<$Res, BlockedDomain>;
  @useResult
  $Res call(
      {@JsonKey(name: 'domain') String name,
      @JsonKey(name: 'digest') String sha256digest,
      BlockSeverity severity,
      @JsonKey(name: 'comment') String? reason});
}

/// @nodoc
class _$BlockedDomainCopyWithImpl<$Res, $Val extends BlockedDomain>
    implements $BlockedDomainCopyWith<$Res> {
  _$BlockedDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sha256digest = null,
    Object? severity = null,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sha256digest: null == sha256digest
          ? _value.sha256digest
          : sha256digest // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as BlockSeverity,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BlockedDomainCopyWith<$Res>
    implements $BlockedDomainCopyWith<$Res> {
  factory _$$_BlockedDomainCopyWith(
          _$_BlockedDomain value, $Res Function(_$_BlockedDomain) then) =
      __$$_BlockedDomainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'domain') String name,
      @JsonKey(name: 'digest') String sha256digest,
      BlockSeverity severity,
      @JsonKey(name: 'comment') String? reason});
}

/// @nodoc
class __$$_BlockedDomainCopyWithImpl<$Res>
    extends _$BlockedDomainCopyWithImpl<$Res, _$_BlockedDomain>
    implements _$$_BlockedDomainCopyWith<$Res> {
  __$$_BlockedDomainCopyWithImpl(
      _$_BlockedDomain _value, $Res Function(_$_BlockedDomain) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sha256digest = null,
    Object? severity = null,
    Object? reason = freezed,
  }) {
    return _then(_$_BlockedDomain(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sha256digest: null == sha256digest
          ? _value.sha256digest
          : sha256digest // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as BlockSeverity,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BlockedDomain implements _BlockedDomain {
  const _$_BlockedDomain(
      {@JsonKey(name: 'domain') required this.name,
      @JsonKey(name: 'digest') required this.sha256digest,
      required this.severity,
      @JsonKey(name: 'comment') this.reason});

  factory _$_BlockedDomain.fromJson(Map<String, dynamic> json) =>
      _$$_BlockedDomainFromJson(json);

  /// The domain which is blocked.
  ///
  /// This may be obfuscated or partially censored.
  @override
  @JsonKey(name: 'domain')
  final String name;

  /// The SHA256 hash digest of the domain string.
  @override
  @JsonKey(name: 'digest')
  final String sha256digest;

  /// The level to which the domain is blocked.
  @override
  final BlockSeverity severity;

  /// An optional reason for the domain block.
  @override
  @JsonKey(name: 'comment')
  final String? reason;

  @override
  String toString() {
    return 'BlockedDomain(name: $name, sha256digest: $sha256digest, severity: $severity, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlockedDomain &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sha256digest, sha256digest) ||
                other.sha256digest == sha256digest) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, sha256digest, severity, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BlockedDomainCopyWith<_$_BlockedDomain> get copyWith =>
      __$$_BlockedDomainCopyWithImpl<_$_BlockedDomain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlockedDomainToJson(
      this,
    );
  }
}

abstract class _BlockedDomain implements BlockedDomain {
  const factory _BlockedDomain(
      {@JsonKey(name: 'domain') required final String name,
      @JsonKey(name: 'digest') required final String sha256digest,
      required final BlockSeverity severity,
      @JsonKey(name: 'comment') final String? reason}) = _$_BlockedDomain;

  factory _BlockedDomain.fromJson(Map<String, dynamic> json) =
      _$_BlockedDomain.fromJson;

  @override

  /// The domain which is blocked.
  ///
  /// This may be obfuscated or partially censored.
  @JsonKey(name: 'domain')
  String get name;
  @override

  /// The SHA256 hash digest of the domain string.
  @JsonKey(name: 'digest')
  String get sha256digest;
  @override

  /// The level to which the domain is blocked.
  BlockSeverity get severity;
  @override

  /// An optional reason for the domain block.
  @JsonKey(name: 'comment')
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$_BlockedDomainCopyWith<_$_BlockedDomain> get copyWith =>
      throw _privateConstructorUsedError;
}
