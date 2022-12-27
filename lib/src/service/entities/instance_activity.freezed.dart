// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instance_activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InstanceActivity _$InstanceActivityFromJson(Map<String, dynamic> json) {
  return _InstanceActivity.fromJson(json);
}

/// @nodoc
mixin _$InstanceActivity {
  /// Midnight at the first day of the week.
  @UnixTimestampConverter()
  DateTime get week => throw _privateConstructorUsedError;

  /// The number of Statuses created since the week began.
  @JsonKey(name: 'statuses')
  @IntConverter()
  int get statusCount => throw _privateConstructorUsedError;

  /// The number of user logins since the week began.
  @JsonKey(name: 'logins')
  @IntConverter()
  int get loginCount => throw _privateConstructorUsedError;

  /// The number of user registrations since the week began.
  @JsonKey(name: 'registrations')
  @IntConverter()
  int get registrationCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstanceActivityCopyWith<InstanceActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstanceActivityCopyWith<$Res> {
  factory $InstanceActivityCopyWith(
          InstanceActivity value, $Res Function(InstanceActivity) then) =
      _$InstanceActivityCopyWithImpl<$Res, InstanceActivity>;
  @useResult
  $Res call(
      {@UnixTimestampConverter() DateTime week,
      @JsonKey(name: 'statuses') @IntConverter() int statusCount,
      @JsonKey(name: 'logins') @IntConverter() int loginCount,
      @JsonKey(name: 'registrations') @IntConverter() int registrationCount});
}

/// @nodoc
class _$InstanceActivityCopyWithImpl<$Res, $Val extends InstanceActivity>
    implements $InstanceActivityCopyWith<$Res> {
  _$InstanceActivityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? week = null,
    Object? statusCount = null,
    Object? loginCount = null,
    Object? registrationCount = null,
  }) {
    return _then(_value.copyWith(
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as DateTime,
      statusCount: null == statusCount
          ? _value.statusCount
          : statusCount // ignore: cast_nullable_to_non_nullable
              as int,
      loginCount: null == loginCount
          ? _value.loginCount
          : loginCount // ignore: cast_nullable_to_non_nullable
              as int,
      registrationCount: null == registrationCount
          ? _value.registrationCount
          : registrationCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InstanceActivityCopyWith<$Res>
    implements $InstanceActivityCopyWith<$Res> {
  factory _$$_InstanceActivityCopyWith(
          _$_InstanceActivity value, $Res Function(_$_InstanceActivity) then) =
      __$$_InstanceActivityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@UnixTimestampConverter() DateTime week,
      @JsonKey(name: 'statuses') @IntConverter() int statusCount,
      @JsonKey(name: 'logins') @IntConverter() int loginCount,
      @JsonKey(name: 'registrations') @IntConverter() int registrationCount});
}

/// @nodoc
class __$$_InstanceActivityCopyWithImpl<$Res>
    extends _$InstanceActivityCopyWithImpl<$Res, _$_InstanceActivity>
    implements _$$_InstanceActivityCopyWith<$Res> {
  __$$_InstanceActivityCopyWithImpl(
      _$_InstanceActivity _value, $Res Function(_$_InstanceActivity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? week = null,
    Object? statusCount = null,
    Object? loginCount = null,
    Object? registrationCount = null,
  }) {
    return _then(_$_InstanceActivity(
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as DateTime,
      statusCount: null == statusCount
          ? _value.statusCount
          : statusCount // ignore: cast_nullable_to_non_nullable
              as int,
      loginCount: null == loginCount
          ? _value.loginCount
          : loginCount // ignore: cast_nullable_to_non_nullable
              as int,
      registrationCount: null == registrationCount
          ? _value.registrationCount
          : registrationCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_InstanceActivity implements _InstanceActivity {
  const _$_InstanceActivity(
      {@UnixTimestampConverter()
          required this.week,
      @JsonKey(name: 'statuses')
      @IntConverter()
          required this.statusCount,
      @JsonKey(name: 'logins')
      @IntConverter()
          required this.loginCount,
      @JsonKey(name: 'registrations')
      @IntConverter()
          required this.registrationCount});

  factory _$_InstanceActivity.fromJson(Map<String, dynamic> json) =>
      _$$_InstanceActivityFromJson(json);

  /// Midnight at the first day of the week.
  @override
  @UnixTimestampConverter()
  final DateTime week;

  /// The number of Statuses created since the week began.
  @override
  @JsonKey(name: 'statuses')
  @IntConverter()
  final int statusCount;

  /// The number of user logins since the week began.
  @override
  @JsonKey(name: 'logins')
  @IntConverter()
  final int loginCount;

  /// The number of user registrations since the week began.
  @override
  @JsonKey(name: 'registrations')
  @IntConverter()
  final int registrationCount;

  @override
  String toString() {
    return 'InstanceActivity(week: $week, statusCount: $statusCount, loginCount: $loginCount, registrationCount: $registrationCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InstanceActivity &&
            (identical(other.week, week) || other.week == week) &&
            (identical(other.statusCount, statusCount) ||
                other.statusCount == statusCount) &&
            (identical(other.loginCount, loginCount) ||
                other.loginCount == loginCount) &&
            (identical(other.registrationCount, registrationCount) ||
                other.registrationCount == registrationCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, week, statusCount, loginCount, registrationCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InstanceActivityCopyWith<_$_InstanceActivity> get copyWith =>
      __$$_InstanceActivityCopyWithImpl<_$_InstanceActivity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstanceActivityToJson(
      this,
    );
  }
}

abstract class _InstanceActivity implements InstanceActivity {
  const factory _InstanceActivity(
      {@UnixTimestampConverter()
          required final DateTime week,
      @JsonKey(name: 'statuses')
      @IntConverter()
          required final int statusCount,
      @JsonKey(name: 'logins')
      @IntConverter()
          required final int loginCount,
      @JsonKey(name: 'registrations')
      @IntConverter()
          required final int registrationCount}) = _$_InstanceActivity;

  factory _InstanceActivity.fromJson(Map<String, dynamic> json) =
      _$_InstanceActivity.fromJson;

  @override

  /// Midnight at the first day of the week.
  @UnixTimestampConverter()
  DateTime get week;
  @override

  /// The number of Statuses created since the week began.
  @JsonKey(name: 'statuses')
  @IntConverter()
  int get statusCount;
  @override

  /// The number of user logins since the week began.
  @JsonKey(name: 'logins')
  @IntConverter()
  int get loginCount;
  @override

  /// The number of user registrations since the week began.
  @JsonKey(name: 'registrations')
  @IntConverter()
  int get registrationCount;
  @override
  @JsonKey(ignore: true)
  _$$_InstanceActivityCopyWith<_$_InstanceActivity> get copyWith =>
      throw _privateConstructorUsedError;
}
