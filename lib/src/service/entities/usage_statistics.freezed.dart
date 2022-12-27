// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usage_statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UsageStatistics _$UsageStatisticsFromJson(Map<String, dynamic> json) {
  return _UsageStatistics.fromJson(json);
}

/// @nodoc
mixin _$UsageStatistics {
  /// The recorded date time of this history.
  @JsonKey(name: 'day')
  @UnixTimestampConverter()
  DateTime get recordedAt => throw _privateConstructorUsedError;

  /// The counted usage of the tag within that day.
  @JsonKey(name: 'uses')
  @IntConverter()
  int get usedCount => throw _privateConstructorUsedError;

  /// The total of accounts using the tag within that day.
  @JsonKey(name: 'accounts')
  @IntConverter()
  int get accountCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsageStatisticsCopyWith<UsageStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsageStatisticsCopyWith<$Res> {
  factory $UsageStatisticsCopyWith(
          UsageStatistics value, $Res Function(UsageStatistics) then) =
      _$UsageStatisticsCopyWithImpl<$Res, UsageStatistics>;
  @useResult
  $Res call(
      {@JsonKey(name: 'day') @UnixTimestampConverter() DateTime recordedAt,
      @JsonKey(name: 'uses') @IntConverter() int usedCount,
      @JsonKey(name: 'accounts') @IntConverter() int accountCount});
}

/// @nodoc
class _$UsageStatisticsCopyWithImpl<$Res, $Val extends UsageStatistics>
    implements $UsageStatisticsCopyWith<$Res> {
  _$UsageStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordedAt = null,
    Object? usedCount = null,
    Object? accountCount = null,
  }) {
    return _then(_value.copyWith(
      recordedAt: null == recordedAt
          ? _value.recordedAt
          : recordedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usedCount: null == usedCount
          ? _value.usedCount
          : usedCount // ignore: cast_nullable_to_non_nullable
              as int,
      accountCount: null == accountCount
          ? _value.accountCount
          : accountCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UsageStatisticsCopyWith<$Res>
    implements $UsageStatisticsCopyWith<$Res> {
  factory _$$_UsageStatisticsCopyWith(
          _$_UsageStatistics value, $Res Function(_$_UsageStatistics) then) =
      __$$_UsageStatisticsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'day') @UnixTimestampConverter() DateTime recordedAt,
      @JsonKey(name: 'uses') @IntConverter() int usedCount,
      @JsonKey(name: 'accounts') @IntConverter() int accountCount});
}

/// @nodoc
class __$$_UsageStatisticsCopyWithImpl<$Res>
    extends _$UsageStatisticsCopyWithImpl<$Res, _$_UsageStatistics>
    implements _$$_UsageStatisticsCopyWith<$Res> {
  __$$_UsageStatisticsCopyWithImpl(
      _$_UsageStatistics _value, $Res Function(_$_UsageStatistics) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordedAt = null,
    Object? usedCount = null,
    Object? accountCount = null,
  }) {
    return _then(_$_UsageStatistics(
      recordedAt: null == recordedAt
          ? _value.recordedAt
          : recordedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usedCount: null == usedCount
          ? _value.usedCount
          : usedCount // ignore: cast_nullable_to_non_nullable
              as int,
      accountCount: null == accountCount
          ? _value.accountCount
          : accountCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UsageStatistics implements _UsageStatistics {
  const _$_UsageStatistics(
      {@JsonKey(name: 'day') @UnixTimestampConverter() required this.recordedAt,
      @JsonKey(name: 'uses') @IntConverter() required this.usedCount,
      @JsonKey(name: 'accounts') @IntConverter() required this.accountCount});

  factory _$_UsageStatistics.fromJson(Map<String, dynamic> json) =>
      _$$_UsageStatisticsFromJson(json);

  /// The recorded date time of this history.
  @override
  @JsonKey(name: 'day')
  @UnixTimestampConverter()
  final DateTime recordedAt;

  /// The counted usage of the tag within that day.
  @override
  @JsonKey(name: 'uses')
  @IntConverter()
  final int usedCount;

  /// The total of accounts using the tag within that day.
  @override
  @JsonKey(name: 'accounts')
  @IntConverter()
  final int accountCount;

  @override
  String toString() {
    return 'UsageStatistics(recordedAt: $recordedAt, usedCount: $usedCount, accountCount: $accountCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsageStatistics &&
            (identical(other.recordedAt, recordedAt) ||
                other.recordedAt == recordedAt) &&
            (identical(other.usedCount, usedCount) ||
                other.usedCount == usedCount) &&
            (identical(other.accountCount, accountCount) ||
                other.accountCount == accountCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, recordedAt, usedCount, accountCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsageStatisticsCopyWith<_$_UsageStatistics> get copyWith =>
      __$$_UsageStatisticsCopyWithImpl<_$_UsageStatistics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsageStatisticsToJson(
      this,
    );
  }
}

abstract class _UsageStatistics implements UsageStatistics {
  const factory _UsageStatistics(
      {@JsonKey(name: 'day')
      @UnixTimestampConverter()
          required final DateTime recordedAt,
      @JsonKey(name: 'uses')
      @IntConverter()
          required final int usedCount,
      @JsonKey(name: 'accounts')
      @IntConverter()
          required final int accountCount}) = _$_UsageStatistics;

  factory _UsageStatistics.fromJson(Map<String, dynamic> json) =
      _$_UsageStatistics.fromJson;

  @override

  /// The recorded date time of this history.
  @JsonKey(name: 'day')
  @UnixTimestampConverter()
  DateTime get recordedAt;
  @override

  /// The counted usage of the tag within that day.
  @JsonKey(name: 'uses')
  @IntConverter()
  int get usedCount;
  @override

  /// The total of accounts using the tag within that day.
  @JsonKey(name: 'accounts')
  @IntConverter()
  int get accountCount;
  @override
  @JsonKey(ignore: true)
  _$$_UsageStatisticsCopyWith<_$_UsageStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}
