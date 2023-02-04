// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tag _$TagFromJson(Map<String, dynamic> json) {
  return _Tag.fromJson(json);
}

/// @nodoc
mixin _$Tag {
  /// The value of the hashtag after the # sign.
  String get name => throw _privateConstructorUsedError;

  /// A link to the hashtag on the instance.
  String get url => throw _privateConstructorUsedError;

  /// Usage history for given days (typically the past week).
  @JsonKey(name: 'history')
  List<UsageStatistics>? get usageHistory => throw _privateConstructorUsedError;

  /// Whether the current token’s authorized user is following this tag.
  @JsonKey(name: 'following')
  bool? get isFollowing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagCopyWith<Tag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagCopyWith<$Res> {
  factory $TagCopyWith(Tag value, $Res Function(Tag) then) =
      _$TagCopyWithImpl<$Res, Tag>;
  @useResult
  $Res call(
      {String name,
      String url,
      @JsonKey(name: 'history') List<UsageStatistics>? usageHistory,
      @JsonKey(name: 'following') bool? isFollowing});
}

/// @nodoc
class _$TagCopyWithImpl<$Res, $Val extends Tag> implements $TagCopyWith<$Res> {
  _$TagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
    Object? usageHistory = freezed,
    Object? isFollowing = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      usageHistory: freezed == usageHistory
          ? _value.usageHistory
          : usageHistory // ignore: cast_nullable_to_non_nullable
              as List<UsageStatistics>?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TagCopyWith<$Res> implements $TagCopyWith<$Res> {
  factory _$$_TagCopyWith(_$_Tag value, $Res Function(_$_Tag) then) =
      __$$_TagCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String url,
      @JsonKey(name: 'history') List<UsageStatistics>? usageHistory,
      @JsonKey(name: 'following') bool? isFollowing});
}

/// @nodoc
class __$$_TagCopyWithImpl<$Res> extends _$TagCopyWithImpl<$Res, _$_Tag>
    implements _$$_TagCopyWith<$Res> {
  __$$_TagCopyWithImpl(_$_Tag _value, $Res Function(_$_Tag) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
    Object? usageHistory = freezed,
    Object? isFollowing = freezed,
  }) {
    return _then(_$_Tag(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      usageHistory: freezed == usageHistory
          ? _value._usageHistory
          : usageHistory // ignore: cast_nullable_to_non_nullable
              as List<UsageStatistics>?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_Tag implements _Tag {
  const _$_Tag(
      {required this.name,
      required this.url,
      @JsonKey(name: 'history') final List<UsageStatistics>? usageHistory,
      @JsonKey(name: 'following') this.isFollowing})
      : _usageHistory = usageHistory;

  factory _$_Tag.fromJson(Map<String, dynamic> json) => _$$_TagFromJson(json);

  /// The value of the hashtag after the # sign.
  @override
  final String name;

  /// A link to the hashtag on the instance.
  @override
  final String url;

  /// Usage history for given days (typically the past week).
  final List<UsageStatistics>? _usageHistory;

  /// Usage history for given days (typically the past week).
  @override
  @JsonKey(name: 'history')
  List<UsageStatistics>? get usageHistory {
    final value = _usageHistory;
    if (value == null) return null;
    if (_usageHistory is EqualUnmodifiableListView) return _usageHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Whether the current token’s authorized user is following this tag.
  @override
  @JsonKey(name: 'following')
  final bool? isFollowing;

  @override
  String toString() {
    return 'Tag(name: $name, url: $url, usageHistory: $usageHistory, isFollowing: $isFollowing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tag &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality()
                .equals(other._usageHistory, _usageHistory) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url,
      const DeepCollectionEquality().hash(_usageHistory), isFollowing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TagCopyWith<_$_Tag> get copyWith =>
      __$$_TagCopyWithImpl<_$_Tag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TagToJson(
      this,
    );
  }
}

abstract class _Tag implements Tag {
  const factory _Tag(
      {required final String name,
      required final String url,
      @JsonKey(name: 'history') final List<UsageStatistics>? usageHistory,
      @JsonKey(name: 'following') final bool? isFollowing}) = _$_Tag;

  factory _Tag.fromJson(Map<String, dynamic> json) = _$_Tag.fromJson;

  @override

  /// The value of the hashtag after the # sign.
  String get name;
  @override

  /// A link to the hashtag on the instance.
  String get url;
  @override

  /// Usage history for given days (typically the past week).
  @JsonKey(name: 'history')
  List<UsageStatistics>? get usageHistory;
  @override

  /// Whether the current token’s authorized user is following this tag.
  @JsonKey(name: 'following')
  bool? get isFollowing;
  @override
  @JsonKey(ignore: true)
  _$$_TagCopyWith<_$_Tag> get copyWith => throw _privateConstructorUsedError;
}
