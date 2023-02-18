// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheduled_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduledStatus _$ScheduledStatusFromJson(Map<String, dynamic> json) {
  return _ScheduledStatus.fromJson(json);
}

/// @nodoc
mixin _$ScheduledStatus {
  /// ID of the scheduled status in the database.
  String get id => throw _privateConstructorUsedError;

  /// The parameters that were used when scheduling the status, to be used
  /// when the status is posted.
  ScheduledStatusParams get params => throw _privateConstructorUsedError;

  /// Media that will be attached when the status is posted.
  List<MediaAttachment> get mediaAttachments =>
      throw _privateConstructorUsedError;

  /// The timestamp for when the status will be posted.
  DateTime get scheduledAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduledStatusCopyWith<ScheduledStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduledStatusCopyWith<$Res> {
  factory $ScheduledStatusCopyWith(
          ScheduledStatus value, $Res Function(ScheduledStatus) then) =
      _$ScheduledStatusCopyWithImpl<$Res, ScheduledStatus>;
  @useResult
  $Res call(
      {String id,
      ScheduledStatusParams params,
      List<MediaAttachment> mediaAttachments,
      DateTime scheduledAt});

  $ScheduledStatusParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$ScheduledStatusCopyWithImpl<$Res, $Val extends ScheduledStatus>
    implements $ScheduledStatusCopyWith<$Res> {
  _$ScheduledStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? params = null,
    Object? mediaAttachments = null,
    Object? scheduledAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ScheduledStatusParams,
      mediaAttachments: null == mediaAttachments
          ? _value.mediaAttachments
          : mediaAttachments // ignore: cast_nullable_to_non_nullable
              as List<MediaAttachment>,
      scheduledAt: null == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduledStatusParamsCopyWith<$Res> get params {
    return $ScheduledStatusParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ScheduledStatusCopyWith<$Res>
    implements $ScheduledStatusCopyWith<$Res> {
  factory _$$_ScheduledStatusCopyWith(
          _$_ScheduledStatus value, $Res Function(_$_ScheduledStatus) then) =
      __$$_ScheduledStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      ScheduledStatusParams params,
      List<MediaAttachment> mediaAttachments,
      DateTime scheduledAt});

  @override
  $ScheduledStatusParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$_ScheduledStatusCopyWithImpl<$Res>
    extends _$ScheduledStatusCopyWithImpl<$Res, _$_ScheduledStatus>
    implements _$$_ScheduledStatusCopyWith<$Res> {
  __$$_ScheduledStatusCopyWithImpl(
      _$_ScheduledStatus _value, $Res Function(_$_ScheduledStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? params = null,
    Object? mediaAttachments = null,
    Object? scheduledAt = null,
  }) {
    return _then(_$_ScheduledStatus(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ScheduledStatusParams,
      mediaAttachments: null == mediaAttachments
          ? _value._mediaAttachments
          : mediaAttachments // ignore: cast_nullable_to_non_nullable
              as List<MediaAttachment>,
      scheduledAt: null == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_ScheduledStatus implements _ScheduledStatus {
  const _$_ScheduledStatus(
      {required this.id,
      required this.params,
      required final List<MediaAttachment> mediaAttachments,
      required this.scheduledAt})
      : _mediaAttachments = mediaAttachments;

  factory _$_ScheduledStatus.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduledStatusFromJson(json);

  /// ID of the scheduled status in the database.
  @override
  final String id;

  /// The parameters that were used when scheduling the status, to be used
  /// when the status is posted.
  @override
  final ScheduledStatusParams params;

  /// Media that will be attached when the status is posted.
  final List<MediaAttachment> _mediaAttachments;

  /// Media that will be attached when the status is posted.
  @override
  List<MediaAttachment> get mediaAttachments {
    if (_mediaAttachments is EqualUnmodifiableListView)
      return _mediaAttachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaAttachments);
  }

  /// The timestamp for when the status will be posted.
  @override
  final DateTime scheduledAt;

  @override
  String toString() {
    return 'ScheduledStatus(id: $id, params: $params, mediaAttachments: $mediaAttachments, scheduledAt: $scheduledAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduledStatus &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.params, params) || other.params == params) &&
            const DeepCollectionEquality()
                .equals(other._mediaAttachments, _mediaAttachments) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, params,
      const DeepCollectionEquality().hash(_mediaAttachments), scheduledAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduledStatusCopyWith<_$_ScheduledStatus> get copyWith =>
      __$$_ScheduledStatusCopyWithImpl<_$_ScheduledStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduledStatusToJson(
      this,
    );
  }
}

abstract class _ScheduledStatus implements ScheduledStatus {
  const factory _ScheduledStatus(
      {required final String id,
      required final ScheduledStatusParams params,
      required final List<MediaAttachment> mediaAttachments,
      required final DateTime scheduledAt}) = _$_ScheduledStatus;

  factory _ScheduledStatus.fromJson(Map<String, dynamic> json) =
      _$_ScheduledStatus.fromJson;

  @override

  /// ID of the scheduled status in the database.
  String get id;
  @override

  /// The parameters that were used when scheduling the status, to be used
  /// when the status is posted.
  ScheduledStatusParams get params;
  @override

  /// Media that will be attached when the status is posted.
  List<MediaAttachment> get mediaAttachments;
  @override

  /// The timestamp for when the status will be posted.
  DateTime get scheduledAt;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduledStatusCopyWith<_$_ScheduledStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
