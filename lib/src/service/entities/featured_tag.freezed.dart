// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'featured_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeaturedTag _$FeaturedTagFromJson(Map<String, dynamic> json) {
  return _FeaturedTag.fromJson(json);
}

/// @nodoc
mixin _$FeaturedTag {
  /// The internal ID of the featured tag in the database.
  String get id => throw _privateConstructorUsedError;

  /// The name of the hashtag being featured.
  String get name => throw _privateConstructorUsedError;

  /// A link to all statuses by a user that contain this hashtag.
  String? get url => throw _privateConstructorUsedError;

  /// The number of authored statuses containing this hashtag.
  @IntConverter()
  int? get statusesCount => throw _privateConstructorUsedError;

  /// The timestamp of the last authored status containing this hashtag.
  DateTime? get lastStatusAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeaturedTagCopyWith<FeaturedTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedTagCopyWith<$Res> {
  factory $FeaturedTagCopyWith(
          FeaturedTag value, $Res Function(FeaturedTag) then) =
      _$FeaturedTagCopyWithImpl<$Res, FeaturedTag>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? url,
      @IntConverter() int? statusesCount,
      DateTime? lastStatusAt});
}

/// @nodoc
class _$FeaturedTagCopyWithImpl<$Res, $Val extends FeaturedTag>
    implements $FeaturedTagCopyWith<$Res> {
  _$FeaturedTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = freezed,
    Object? statusesCount = freezed,
    Object? lastStatusAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      statusesCount: freezed == statusesCount
          ? _value.statusesCount
          : statusesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      lastStatusAt: freezed == lastStatusAt
          ? _value.lastStatusAt
          : lastStatusAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeaturedTagCopyWith<$Res>
    implements $FeaturedTagCopyWith<$Res> {
  factory _$$_FeaturedTagCopyWith(
          _$_FeaturedTag value, $Res Function(_$_FeaturedTag) then) =
      __$$_FeaturedTagCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? url,
      @IntConverter() int? statusesCount,
      DateTime? lastStatusAt});
}

/// @nodoc
class __$$_FeaturedTagCopyWithImpl<$Res>
    extends _$FeaturedTagCopyWithImpl<$Res, _$_FeaturedTag>
    implements _$$_FeaturedTagCopyWith<$Res> {
  __$$_FeaturedTagCopyWithImpl(
      _$_FeaturedTag _value, $Res Function(_$_FeaturedTag) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = freezed,
    Object? statusesCount = freezed,
    Object? lastStatusAt = freezed,
  }) {
    return _then(_$_FeaturedTag(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      statusesCount: freezed == statusesCount
          ? _value.statusesCount
          : statusesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      lastStatusAt: freezed == lastStatusAt
          ? _value.lastStatusAt
          : lastStatusAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_FeaturedTag implements _FeaturedTag {
  const _$_FeaturedTag(
      {required this.id,
      required this.name,
      this.url,
      @IntConverter() this.statusesCount,
      this.lastStatusAt});

  factory _$_FeaturedTag.fromJson(Map<String, dynamic> json) =>
      _$$_FeaturedTagFromJson(json);

  /// The internal ID of the featured tag in the database.
  @override
  final String id;

  /// The name of the hashtag being featured.
  @override
  final String name;

  /// A link to all statuses by a user that contain this hashtag.
  @override
  final String? url;

  /// The number of authored statuses containing this hashtag.
  @override
  @IntConverter()
  final int? statusesCount;

  /// The timestamp of the last authored status containing this hashtag.
  @override
  final DateTime? lastStatusAt;

  @override
  String toString() {
    return 'FeaturedTag(id: $id, name: $name, url: $url, statusesCount: $statusesCount, lastStatusAt: $lastStatusAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeaturedTag &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.statusesCount, statusesCount) ||
                other.statusesCount == statusesCount) &&
            (identical(other.lastStatusAt, lastStatusAt) ||
                other.lastStatusAt == lastStatusAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, url, statusesCount, lastStatusAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeaturedTagCopyWith<_$_FeaturedTag> get copyWith =>
      __$$_FeaturedTagCopyWithImpl<_$_FeaturedTag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeaturedTagToJson(
      this,
    );
  }
}

abstract class _FeaturedTag implements FeaturedTag {
  const factory _FeaturedTag(
      {required final String id,
      required final String name,
      final String? url,
      @IntConverter() final int? statusesCount,
      final DateTime? lastStatusAt}) = _$_FeaturedTag;

  factory _FeaturedTag.fromJson(Map<String, dynamic> json) =
      _$_FeaturedTag.fromJson;

  @override

  /// The internal ID of the featured tag in the database.
  String get id;
  @override

  /// The name of the hashtag being featured.
  String get name;
  @override

  /// A link to all statuses by a user that contain this hashtag.
  String? get url;
  @override

  /// The number of authored statuses containing this hashtag.
  @IntConverter()
  int? get statusesCount;
  @override

  /// The timestamp of the last authored status containing this hashtag.
  DateTime? get lastStatusAt;
  @override
  @JsonKey(ignore: true)
  _$$_FeaturedTagCopyWith<_$_FeaturedTag> get copyWith =>
      throw _privateConstructorUsedError;
}
