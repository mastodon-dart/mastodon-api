// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnnouncementStatus _$AnnouncementStatusFromJson(Map<String, dynamic> json) {
  return _AnnouncementStatus.fromJson(json);
}

/// @nodoc
mixin _$AnnouncementStatus {
  /// The ID of an attached Status in the database.
  String get id => throw _privateConstructorUsedError;

  /// The URL of an attached Status.
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnouncementStatusCopyWith<AnnouncementStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementStatusCopyWith<$Res> {
  factory $AnnouncementStatusCopyWith(
          AnnouncementStatus value, $Res Function(AnnouncementStatus) then) =
      _$AnnouncementStatusCopyWithImpl<$Res, AnnouncementStatus>;
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class _$AnnouncementStatusCopyWithImpl<$Res, $Val extends AnnouncementStatus>
    implements $AnnouncementStatusCopyWith<$Res> {
  _$AnnouncementStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnnouncementStatusCopyWith<$Res>
    implements $AnnouncementStatusCopyWith<$Res> {
  factory _$$_AnnouncementStatusCopyWith(_$_AnnouncementStatus value,
          $Res Function(_$_AnnouncementStatus) then) =
      __$$_AnnouncementStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class __$$_AnnouncementStatusCopyWithImpl<$Res>
    extends _$AnnouncementStatusCopyWithImpl<$Res, _$_AnnouncementStatus>
    implements _$$_AnnouncementStatusCopyWith<$Res> {
  __$$_AnnouncementStatusCopyWithImpl(
      _$_AnnouncementStatus _value, $Res Function(_$_AnnouncementStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_$_AnnouncementStatus(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_AnnouncementStatus implements _AnnouncementStatus {
  const _$_AnnouncementStatus({required this.id, required this.url});

  factory _$_AnnouncementStatus.fromJson(Map<String, dynamic> json) =>
      _$$_AnnouncementStatusFromJson(json);

  /// The ID of an attached Status in the database.
  @override
  final String id;

  /// The URL of an attached Status.
  @override
  final String url;

  @override
  String toString() {
    return 'AnnouncementStatus(id: $id, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnnouncementStatus &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnnouncementStatusCopyWith<_$_AnnouncementStatus> get copyWith =>
      __$$_AnnouncementStatusCopyWithImpl<_$_AnnouncementStatus>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnnouncementStatusToJson(
      this,
    );
  }
}

abstract class _AnnouncementStatus implements AnnouncementStatus {
  const factory _AnnouncementStatus(
      {required final String id,
      required final String url}) = _$_AnnouncementStatus;

  factory _AnnouncementStatus.fromJson(Map<String, dynamic> json) =
      _$_AnnouncementStatus.fromJson;

  @override

  /// The ID of an attached Status in the database.
  String get id;
  @override

  /// The URL of an attached Status.
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_AnnouncementStatusCopyWith<_$_AnnouncementStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
