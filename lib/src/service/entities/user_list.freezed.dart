// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserList _$UserListFromJson(Map<String, dynamic> json) {
  return _UserList.fromJson(json);
}

/// @nodoc
mixin _$UserList {
  /// The internal database ID of the list.
  String get id => throw _privateConstructorUsedError;

  /// The user-defined title of the list.
  String get title => throw _privateConstructorUsedError;

  /// Which replies should be shown in the list.
  ListRepliesPolicy? get repliesPolicy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserListCopyWith<UserList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListCopyWith<$Res> {
  factory $UserListCopyWith(UserList value, $Res Function(UserList) then) =
      _$UserListCopyWithImpl<$Res, UserList>;
  @useResult
  $Res call({String id, String title, ListRepliesPolicy? repliesPolicy});
}

/// @nodoc
class _$UserListCopyWithImpl<$Res, $Val extends UserList>
    implements $UserListCopyWith<$Res> {
  _$UserListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? repliesPolicy = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      repliesPolicy: freezed == repliesPolicy
          ? _value.repliesPolicy
          : repliesPolicy // ignore: cast_nullable_to_non_nullable
              as ListRepliesPolicy?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserListCopyWith<$Res> implements $UserListCopyWith<$Res> {
  factory _$$_UserListCopyWith(
          _$_UserList value, $Res Function(_$_UserList) then) =
      __$$_UserListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, ListRepliesPolicy? repliesPolicy});
}

/// @nodoc
class __$$_UserListCopyWithImpl<$Res>
    extends _$UserListCopyWithImpl<$Res, _$_UserList>
    implements _$$_UserListCopyWith<$Res> {
  __$$_UserListCopyWithImpl(
      _$_UserList _value, $Res Function(_$_UserList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? repliesPolicy = freezed,
  }) {
    return _then(_$_UserList(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      repliesPolicy: freezed == repliesPolicy
          ? _value.repliesPolicy
          : repliesPolicy // ignore: cast_nullable_to_non_nullable
              as ListRepliesPolicy?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_UserList implements _UserList {
  const _$_UserList(
      {required this.id, required this.title, this.repliesPolicy});

  factory _$_UserList.fromJson(Map<String, dynamic> json) =>
      _$$_UserListFromJson(json);

  /// The internal database ID of the list.
  @override
  final String id;

  /// The user-defined title of the list.
  @override
  final String title;

  /// Which replies should be shown in the list.
  @override
  final ListRepliesPolicy? repliesPolicy;

  @override
  String toString() {
    return 'UserList(id: $id, title: $title, repliesPolicy: $repliesPolicy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserList &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.repliesPolicy, repliesPolicy) ||
                other.repliesPolicy == repliesPolicy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, repliesPolicy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserListCopyWith<_$_UserList> get copyWith =>
      __$$_UserListCopyWithImpl<_$_UserList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserListToJson(
      this,
    );
  }
}

abstract class _UserList implements UserList {
  const factory _UserList(
      {required final String id,
      required final String title,
      final ListRepliesPolicy? repliesPolicy}) = _$_UserList;

  factory _UserList.fromJson(Map<String, dynamic> json) = _$_UserList.fromJson;

  @override

  /// The internal database ID of the list.
  String get id;
  @override

  /// The user-defined title of the list.
  String get title;
  @override

  /// Which replies should be shown in the list.
  ListRepliesPolicy? get repliesPolicy;
  @override
  @JsonKey(ignore: true)
  _$$_UserListCopyWith<_$_UserList> get copyWith =>
      throw _privateConstructorUsedError;
}
