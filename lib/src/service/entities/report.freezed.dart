// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Report _$ReportFromJson(Map<String, dynamic> json) {
  return _Report.fromJson(json);
}

/// @nodoc
mixin _$Report {
  /// The ID of the report in the database.
  String get id => throw _privateConstructorUsedError;

  /// The generic reason for the report.
  ReportCategory get category => throw _privateConstructorUsedError;

  /// The reason for the report.
  String get comment => throw _privateConstructorUsedError;

  /// The domain name of the instance.
  List<String>? get statusIds => throw _privateConstructorUsedError;

  /// The domain name of the instance.
  List<String>? get ruleIds => throw _privateConstructorUsedError;

  /// The account that was reported.
  @JsonKey(name: 'target_account')
  Account get account => throw _privateConstructorUsedError;

  /// Whether the report was forwarded to a remote domain.
  @JsonKey(name: 'forwarded')
  bool get isForwarded => throw _privateConstructorUsedError;

  /// Whether an action was taken yet.
  @JsonKey(name: 'action_taken')
  bool get isActionTaken => throw _privateConstructorUsedError;

  /// When an action was taken against the report.
  DateTime? get actionTakenAt => throw _privateConstructorUsedError;

  /// When the report was created.
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportCopyWith<Report> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCopyWith<$Res> {
  factory $ReportCopyWith(Report value, $Res Function(Report) then) =
      _$ReportCopyWithImpl<$Res, Report>;
  @useResult
  $Res call(
      {String id,
      ReportCategory category,
      String comment,
      List<String>? statusIds,
      List<String>? ruleIds,
      @JsonKey(name: 'target_account') Account account,
      @JsonKey(name: 'forwarded') bool isForwarded,
      @JsonKey(name: 'action_taken') bool isActionTaken,
      DateTime? actionTakenAt,
      DateTime createdAt});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$ReportCopyWithImpl<$Res, $Val extends Report>
    implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? comment = null,
    Object? statusIds = freezed,
    Object? ruleIds = freezed,
    Object? account = null,
    Object? isForwarded = null,
    Object? isActionTaken = null,
    Object? actionTakenAt = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ReportCategory,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      statusIds: freezed == statusIds
          ? _value.statusIds
          : statusIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ruleIds: freezed == ruleIds
          ? _value.ruleIds
          : ruleIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      isForwarded: null == isForwarded
          ? _value.isForwarded
          : isForwarded // ignore: cast_nullable_to_non_nullable
              as bool,
      isActionTaken: null == isActionTaken
          ? _value.isActionTaken
          : isActionTaken // ignore: cast_nullable_to_non_nullable
              as bool,
      actionTakenAt: freezed == actionTakenAt
          ? _value.actionTakenAt
          : actionTakenAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReportCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$$_ReportCopyWith(_$_Report value, $Res Function(_$_Report) then) =
      __$$_ReportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      ReportCategory category,
      String comment,
      List<String>? statusIds,
      List<String>? ruleIds,
      @JsonKey(name: 'target_account') Account account,
      @JsonKey(name: 'forwarded') bool isForwarded,
      @JsonKey(name: 'action_taken') bool isActionTaken,
      DateTime? actionTakenAt,
      DateTime createdAt});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$_ReportCopyWithImpl<$Res>
    extends _$ReportCopyWithImpl<$Res, _$_Report>
    implements _$$_ReportCopyWith<$Res> {
  __$$_ReportCopyWithImpl(_$_Report _value, $Res Function(_$_Report) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? comment = null,
    Object? statusIds = freezed,
    Object? ruleIds = freezed,
    Object? account = null,
    Object? isForwarded = null,
    Object? isActionTaken = null,
    Object? actionTakenAt = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$_Report(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ReportCategory,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      statusIds: freezed == statusIds
          ? _value._statusIds
          : statusIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ruleIds: freezed == ruleIds
          ? _value._ruleIds
          : ruleIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      isForwarded: null == isForwarded
          ? _value.isForwarded
          : isForwarded // ignore: cast_nullable_to_non_nullable
              as bool,
      isActionTaken: null == isActionTaken
          ? _value.isActionTaken
          : isActionTaken // ignore: cast_nullable_to_non_nullable
              as bool,
      actionTakenAt: freezed == actionTakenAt
          ? _value.actionTakenAt
          : actionTakenAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_Report implements _Report {
  const _$_Report(
      {required this.id,
      required this.category,
      required this.comment,
      final List<String>? statusIds,
      final List<String>? ruleIds,
      @JsonKey(name: 'target_account') required this.account,
      @JsonKey(name: 'forwarded') required this.isForwarded,
      @JsonKey(name: 'action_taken') required this.isActionTaken,
      this.actionTakenAt,
      required this.createdAt})
      : _statusIds = statusIds,
        _ruleIds = ruleIds;

  factory _$_Report.fromJson(Map<String, dynamic> json) =>
      _$$_ReportFromJson(json);

  /// The ID of the report in the database.
  @override
  final String id;

  /// The generic reason for the report.
  @override
  final ReportCategory category;

  /// The reason for the report.
  @override
  final String comment;

  /// The domain name of the instance.
  final List<String>? _statusIds;

  /// The domain name of the instance.
  @override
  List<String>? get statusIds {
    final value = _statusIds;
    if (value == null) return null;
    if (_statusIds is EqualUnmodifiableListView) return _statusIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// The domain name of the instance.
  final List<String>? _ruleIds;

  /// The domain name of the instance.
  @override
  List<String>? get ruleIds {
    final value = _ruleIds;
    if (value == null) return null;
    if (_ruleIds is EqualUnmodifiableListView) return _ruleIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// The account that was reported.
  @override
  @JsonKey(name: 'target_account')
  final Account account;

  /// Whether the report was forwarded to a remote domain.
  @override
  @JsonKey(name: 'forwarded')
  final bool isForwarded;

  /// Whether an action was taken yet.
  @override
  @JsonKey(name: 'action_taken')
  final bool isActionTaken;

  /// When an action was taken against the report.
  @override
  final DateTime? actionTakenAt;

  /// When the report was created.
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Report(id: $id, category: $category, comment: $comment, statusIds: $statusIds, ruleIds: $ruleIds, account: $account, isForwarded: $isForwarded, isActionTaken: $isActionTaken, actionTakenAt: $actionTakenAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Report &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality()
                .equals(other._statusIds, _statusIds) &&
            const DeepCollectionEquality().equals(other._ruleIds, _ruleIds) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.isForwarded, isForwarded) ||
                other.isForwarded == isForwarded) &&
            (identical(other.isActionTaken, isActionTaken) ||
                other.isActionTaken == isActionTaken) &&
            (identical(other.actionTakenAt, actionTakenAt) ||
                other.actionTakenAt == actionTakenAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      category,
      comment,
      const DeepCollectionEquality().hash(_statusIds),
      const DeepCollectionEquality().hash(_ruleIds),
      account,
      isForwarded,
      isActionTaken,
      actionTakenAt,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReportCopyWith<_$_Report> get copyWith =>
      __$$_ReportCopyWithImpl<_$_Report>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportToJson(
      this,
    );
  }
}

abstract class _Report implements Report {
  const factory _Report(
      {required final String id,
      required final ReportCategory category,
      required final String comment,
      final List<String>? statusIds,
      final List<String>? ruleIds,
      @JsonKey(name: 'target_account') required final Account account,
      @JsonKey(name: 'forwarded') required final bool isForwarded,
      @JsonKey(name: 'action_taken') required final bool isActionTaken,
      final DateTime? actionTakenAt,
      required final DateTime createdAt}) = _$_Report;

  factory _Report.fromJson(Map<String, dynamic> json) = _$_Report.fromJson;

  @override

  /// The ID of the report in the database.
  String get id;
  @override

  /// The generic reason for the report.
  ReportCategory get category;
  @override

  /// The reason for the report.
  String get comment;
  @override

  /// The domain name of the instance.
  List<String>? get statusIds;
  @override

  /// The domain name of the instance.
  List<String>? get ruleIds;
  @override

  /// The account that was reported.
  @JsonKey(name: 'target_account')
  Account get account;
  @override

  /// Whether the report was forwarded to a remote domain.
  @JsonKey(name: 'forwarded')
  bool get isForwarded;
  @override

  /// Whether an action was taken yet.
  @JsonKey(name: 'action_taken')
  bool get isActionTaken;
  @override

  /// When an action was taken against the report.
  DateTime? get actionTakenAt;
  @override

  /// When the report was created.
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_ReportCopyWith<_$_Report> get copyWith =>
      throw _privateConstructorUsedError;
}
