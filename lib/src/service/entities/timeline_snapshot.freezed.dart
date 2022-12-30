// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimelineSnapshot _$TimelineSnapshotFromJson(Map<String, dynamic> json) {
  return _TimelineSnapshot.fromJson(json);
}

/// @nodoc
mixin _$TimelineSnapshot {
  /// Snapshot for notifications.
  PositionMarker? get notifications => throw _privateConstructorUsedError;

  /// Snapshot for home timeline.
  PositionMarker? get home => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimelineSnapshotCopyWith<TimelineSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineSnapshotCopyWith<$Res> {
  factory $TimelineSnapshotCopyWith(
          TimelineSnapshot value, $Res Function(TimelineSnapshot) then) =
      _$TimelineSnapshotCopyWithImpl<$Res, TimelineSnapshot>;
  @useResult
  $Res call({PositionMarker? notifications, PositionMarker? home});

  $PositionMarkerCopyWith<$Res>? get notifications;
  $PositionMarkerCopyWith<$Res>? get home;
}

/// @nodoc
class _$TimelineSnapshotCopyWithImpl<$Res, $Val extends TimelineSnapshot>
    implements $TimelineSnapshotCopyWith<$Res> {
  _$TimelineSnapshotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = freezed,
    Object? home = freezed,
  }) {
    return _then(_value.copyWith(
      notifications: freezed == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as PositionMarker?,
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as PositionMarker?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PositionMarkerCopyWith<$Res>? get notifications {
    if (_value.notifications == null) {
      return null;
    }

    return $PositionMarkerCopyWith<$Res>(_value.notifications!, (value) {
      return _then(_value.copyWith(notifications: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PositionMarkerCopyWith<$Res>? get home {
    if (_value.home == null) {
      return null;
    }

    return $PositionMarkerCopyWith<$Res>(_value.home!, (value) {
      return _then(_value.copyWith(home: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TimelineSnapshotCopyWith<$Res>
    implements $TimelineSnapshotCopyWith<$Res> {
  factory _$$_TimelineSnapshotCopyWith(
          _$_TimelineSnapshot value, $Res Function(_$_TimelineSnapshot) then) =
      __$$_TimelineSnapshotCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PositionMarker? notifications, PositionMarker? home});

  @override
  $PositionMarkerCopyWith<$Res>? get notifications;
  @override
  $PositionMarkerCopyWith<$Res>? get home;
}

/// @nodoc
class __$$_TimelineSnapshotCopyWithImpl<$Res>
    extends _$TimelineSnapshotCopyWithImpl<$Res, _$_TimelineSnapshot>
    implements _$$_TimelineSnapshotCopyWith<$Res> {
  __$$_TimelineSnapshotCopyWithImpl(
      _$_TimelineSnapshot _value, $Res Function(_$_TimelineSnapshot) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = freezed,
    Object? home = freezed,
  }) {
    return _then(_$_TimelineSnapshot(
      notifications: freezed == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as PositionMarker?,
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as PositionMarker?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_TimelineSnapshot implements _TimelineSnapshot {
  const _$_TimelineSnapshot({this.notifications, this.home});

  factory _$_TimelineSnapshot.fromJson(Map<String, dynamic> json) =>
      _$$_TimelineSnapshotFromJson(json);

  /// Snapshot for notifications.
  @override
  final PositionMarker? notifications;

  /// Snapshot for home timeline.
  @override
  final PositionMarker? home;

  @override
  String toString() {
    return 'TimelineSnapshot(notifications: $notifications, home: $home)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimelineSnapshot &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications) &&
            (identical(other.home, home) || other.home == home));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, notifications, home);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimelineSnapshotCopyWith<_$_TimelineSnapshot> get copyWith =>
      __$$_TimelineSnapshotCopyWithImpl<_$_TimelineSnapshot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimelineSnapshotToJson(
      this,
    );
  }
}

abstract class _TimelineSnapshot implements TimelineSnapshot {
  const factory _TimelineSnapshot(
      {final PositionMarker? notifications,
      final PositionMarker? home}) = _$_TimelineSnapshot;

  factory _TimelineSnapshot.fromJson(Map<String, dynamic> json) =
      _$_TimelineSnapshot.fromJson;

  @override

  /// Snapshot for notifications.
  PositionMarker? get notifications;
  @override

  /// Snapshot for home timeline.
  PositionMarker? get home;
  @override
  @JsonKey(ignore: true)
  _$$_TimelineSnapshotCopyWith<_$_TimelineSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}
