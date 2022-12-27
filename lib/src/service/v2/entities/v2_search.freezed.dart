// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v2_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

V2Search _$V2SearchFromJson(Map<String, dynamic> json) {
  return _V2Search.fromJson(json);
}

/// @nodoc
mixin _$V2Search {
  /// [Account] objects related to search query.
  List<Account>? get accounts => throw _privateConstructorUsedError;

  /// [Status] object related to search query.
  List<Status>? get statuses => throw _privateConstructorUsedError;

  /// [Tag] object related to search query.
  List<Tag>? get hashtags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $V2SearchCopyWith<V2Search> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V2SearchCopyWith<$Res> {
  factory $V2SearchCopyWith(V2Search value, $Res Function(V2Search) then) =
      _$V2SearchCopyWithImpl<$Res, V2Search>;
  @useResult
  $Res call(
      {List<Account>? accounts, List<Status>? statuses, List<Tag>? hashtags});
}

/// @nodoc
class _$V2SearchCopyWithImpl<$Res, $Val extends V2Search>
    implements $V2SearchCopyWith<$Res> {
  _$V2SearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = freezed,
    Object? statuses = freezed,
    Object? hashtags = freezed,
  }) {
    return _then(_value.copyWith(
      accounts: freezed == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>?,
      statuses: freezed == statuses
          ? _value.statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<Status>?,
      hashtags: freezed == hashtags
          ? _value.hashtags
          : hashtags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_V2SearchCopyWith<$Res> implements $V2SearchCopyWith<$Res> {
  factory _$$_V2SearchCopyWith(
          _$_V2Search value, $Res Function(_$_V2Search) then) =
      __$$_V2SearchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Account>? accounts, List<Status>? statuses, List<Tag>? hashtags});
}

/// @nodoc
class __$$_V2SearchCopyWithImpl<$Res>
    extends _$V2SearchCopyWithImpl<$Res, _$_V2Search>
    implements _$$_V2SearchCopyWith<$Res> {
  __$$_V2SearchCopyWithImpl(
      _$_V2Search _value, $Res Function(_$_V2Search) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = freezed,
    Object? statuses = freezed,
    Object? hashtags = freezed,
  }) {
    return _then(_$_V2Search(
      accounts: freezed == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>?,
      statuses: freezed == statuses
          ? _value._statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<Status>?,
      hashtags: freezed == hashtags
          ? _value._hashtags
          : hashtags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_V2Search implements _V2Search {
  const _$_V2Search(
      {final List<Account>? accounts,
      final List<Status>? statuses,
      final List<Tag>? hashtags})
      : _accounts = accounts,
        _statuses = statuses,
        _hashtags = hashtags;

  factory _$_V2Search.fromJson(Map<String, dynamic> json) =>
      _$$_V2SearchFromJson(json);

  /// [Account] objects related to search query.
  final List<Account>? _accounts;

  /// [Account] objects related to search query.
  @override
  List<Account>? get accounts {
    final value = _accounts;
    if (value == null) return null;
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [Status] object related to search query.
  final List<Status>? _statuses;

  /// [Status] object related to search query.
  @override
  List<Status>? get statuses {
    final value = _statuses;
    if (value == null) return null;
    if (_statuses is EqualUnmodifiableListView) return _statuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [Tag] object related to search query.
  final List<Tag>? _hashtags;

  /// [Tag] object related to search query.
  @override
  List<Tag>? get hashtags {
    final value = _hashtags;
    if (value == null) return null;
    if (_hashtags is EqualUnmodifiableListView) return _hashtags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'V2Search(accounts: $accounts, statuses: $statuses, hashtags: $hashtags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_V2Search &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            const DeepCollectionEquality().equals(other._statuses, _statuses) &&
            const DeepCollectionEquality().equals(other._hashtags, _hashtags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_accounts),
      const DeepCollectionEquality().hash(_statuses),
      const DeepCollectionEquality().hash(_hashtags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_V2SearchCopyWith<_$_V2Search> get copyWith =>
      __$$_V2SearchCopyWithImpl<_$_V2Search>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_V2SearchToJson(
      this,
    );
  }
}

abstract class _V2Search implements V2Search {
  const factory _V2Search(
      {final List<Account>? accounts,
      final List<Status>? statuses,
      final List<Tag>? hashtags}) = _$_V2Search;

  factory _V2Search.fromJson(Map<String, dynamic> json) = _$_V2Search.fromJson;

  @override

  /// [Account] objects related to search query.
  List<Account>? get accounts;
  @override

  /// [Status] object related to search query.
  List<Status>? get statuses;
  @override

  /// [Tag] object related to search query.
  List<Tag>? get hashtags;
  @override
  @JsonKey(ignore: true)
  _$$_V2SearchCopyWith<_$_V2Search> get copyWith =>
      throw _privateConstructorUsedError;
}
