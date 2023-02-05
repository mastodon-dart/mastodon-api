// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Notification _$NotificationFromJson(Map<String, dynamic> json) {
  return _Notification.fromJson(json);
}

/// @nodoc
mixin _$Notification {
  /// The id of the notification in the database.
  String get id => throw _privateConstructorUsedError;

  /// The type of event that resulted in the notification.
  NotificationType get type => throw _privateConstructorUsedError;

  /// The timestamp of the notification.
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// The account that performed the action that generated the notification.
  Account get account => throw _privateConstructorUsedError;

  /// Status that was the object of the notification. Attached when type of
  /// the notification is favourite, reblog, status, mention, poll,
  /// or update.
  Status? get status =>
      throw _privateConstructorUsedError; // Report that was the object of the notification.
// Attached when type of the notification is admin.report.
  Report? get report => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationCopyWith<Notification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          Notification value, $Res Function(Notification) then) =
      _$NotificationCopyWithImpl<$Res, Notification>;
  @useResult
  $Res call(
      {String id,
      NotificationType type,
      DateTime createdAt,
      Account account,
      Status? status,
      Report? report});

  $AccountCopyWith<$Res> get account;
  $StatusCopyWith<$Res>? get status;
  $ReportCopyWith<$Res>? get report;
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res, $Val extends Notification>
    implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? createdAt = null,
    Object? account = null,
    Object? status = freezed,
    Object? report = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      report: freezed == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as Report?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReportCopyWith<$Res>? get report {
    if (_value.report == null) {
      return null;
    }

    return $ReportCopyWith<$Res>(_value.report!, (value) {
      return _then(_value.copyWith(report: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NotificationCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory _$$_NotificationCopyWith(
          _$_Notification value, $Res Function(_$_Notification) then) =
      __$$_NotificationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      NotificationType type,
      DateTime createdAt,
      Account account,
      Status? status,
      Report? report});

  @override
  $AccountCopyWith<$Res> get account;
  @override
  $StatusCopyWith<$Res>? get status;
  @override
  $ReportCopyWith<$Res>? get report;
}

/// @nodoc
class __$$_NotificationCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$_Notification>
    implements _$$_NotificationCopyWith<$Res> {
  __$$_NotificationCopyWithImpl(
      _$_Notification _value, $Res Function(_$_Notification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? createdAt = null,
    Object? account = null,
    Object? status = freezed,
    Object? report = freezed,
  }) {
    return _then(_$_Notification(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      report: freezed == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as Report?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_Notification implements _Notification {
  const _$_Notification(
      {required this.id,
      required this.type,
      required this.createdAt,
      required this.account,
      this.status,
      this.report});

  factory _$_Notification.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationFromJson(json);

  /// The id of the notification in the database.
  @override
  final String id;

  /// The type of event that resulted in the notification.
  @override
  final NotificationType type;

  /// The timestamp of the notification.
  @override
  final DateTime createdAt;

  /// The account that performed the action that generated the notification.
  @override
  final Account account;

  /// Status that was the object of the notification. Attached when type of
  /// the notification is favourite, reblog, status, mention, poll,
  /// or update.
  @override
  final Status? status;
// Report that was the object of the notification.
// Attached when type of the notification is admin.report.
  @override
  final Report? report;

  @override
  String toString() {
    return 'Notification(id: $id, type: $type, createdAt: $createdAt, account: $account, status: $status, report: $report)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Notification &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.report, report) || other.report == report));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, createdAt, account, status, report);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationCopyWith<_$_Notification> get copyWith =>
      __$$_NotificationCopyWithImpl<_$_Notification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationToJson(
      this,
    );
  }
}

abstract class _Notification implements Notification {
  const factory _Notification(
      {required final String id,
      required final NotificationType type,
      required final DateTime createdAt,
      required final Account account,
      final Status? status,
      final Report? report}) = _$_Notification;

  factory _Notification.fromJson(Map<String, dynamic> json) =
      _$_Notification.fromJson;

  @override

  /// The id of the notification in the database.
  String get id;
  @override

  /// The type of event that resulted in the notification.
  NotificationType get type;
  @override

  /// The timestamp of the notification.
  DateTime get createdAt;
  @override

  /// The account that performed the action that generated the notification.
  Account get account;
  @override

  /// Status that was the object of the notification. Attached when type of
  /// the notification is favourite, reblog, status, mention, poll,
  /// or update.
  Status? get status;
  @override // Report that was the object of the notification.
// Attached when type of the notification is admin.report.
  Report? get report;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationCopyWith<_$_Notification> get copyWith =>
      throw _privateConstructorUsedError;
}
