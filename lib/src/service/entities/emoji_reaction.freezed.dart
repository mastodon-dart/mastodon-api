// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emoji_reaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmojiReaction _$EmojiReactionFromJson(Map<String, dynamic> json) {
  return _EmojiReaction.fromJson(json);
}

/// @nodoc
mixin _$EmojiReaction {
  /// The emoji used for the reaction. Either a unicode emoji,
  /// or a custom emoji’s shortcode.
  String get name => throw _privateConstructorUsedError;

  /// The total number of users who have added this reaction.
  int get count => throw _privateConstructorUsedError;

  /// If there is a currently authorized user: Have you added this reaction?
  @JsonKey(name: 'me')
  bool? get isReacted => throw _privateConstructorUsedError;

  /// If the reaction is a custom emoji: A link to the custom emoji.
  String? get url => throw _privateConstructorUsedError;

  /// If the reaction is a custom emoji: A link to a non-animated version of
  /// the custom emoji.
  String? get staticUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmojiReactionCopyWith<EmojiReaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmojiReactionCopyWith<$Res> {
  factory $EmojiReactionCopyWith(
          EmojiReaction value, $Res Function(EmojiReaction) then) =
      _$EmojiReactionCopyWithImpl<$Res, EmojiReaction>;
  @useResult
  $Res call(
      {String name,
      int count,
      @JsonKey(name: 'me') bool? isReacted,
      String? url,
      String? staticUrl});
}

/// @nodoc
class _$EmojiReactionCopyWithImpl<$Res, $Val extends EmojiReaction>
    implements $EmojiReactionCopyWith<$Res> {
  _$EmojiReactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? count = null,
    Object? isReacted = freezed,
    Object? url = freezed,
    Object? staticUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      isReacted: freezed == isReacted
          ? _value.isReacted
          : isReacted // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      staticUrl: freezed == staticUrl
          ? _value.staticUrl
          : staticUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmojiReactionCopyWith<$Res>
    implements $EmojiReactionCopyWith<$Res> {
  factory _$$_EmojiReactionCopyWith(
          _$_EmojiReaction value, $Res Function(_$_EmojiReaction) then) =
      __$$_EmojiReactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int count,
      @JsonKey(name: 'me') bool? isReacted,
      String? url,
      String? staticUrl});
}

/// @nodoc
class __$$_EmojiReactionCopyWithImpl<$Res>
    extends _$EmojiReactionCopyWithImpl<$Res, _$_EmojiReaction>
    implements _$$_EmojiReactionCopyWith<$Res> {
  __$$_EmojiReactionCopyWithImpl(
      _$_EmojiReaction _value, $Res Function(_$_EmojiReaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? count = null,
    Object? isReacted = freezed,
    Object? url = freezed,
    Object? staticUrl = freezed,
  }) {
    return _then(_$_EmojiReaction(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      isReacted: freezed == isReacted
          ? _value.isReacted
          : isReacted // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      staticUrl: freezed == staticUrl
          ? _value.staticUrl
          : staticUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_EmojiReaction implements _EmojiReaction {
  const _$_EmojiReaction(
      {required this.name,
      required this.count,
      @JsonKey(name: 'me') this.isReacted,
      this.url,
      this.staticUrl});

  factory _$_EmojiReaction.fromJson(Map<String, dynamic> json) =>
      _$$_EmojiReactionFromJson(json);

  /// The emoji used for the reaction. Either a unicode emoji,
  /// or a custom emoji’s shortcode.
  @override
  final String name;

  /// The total number of users who have added this reaction.
  @override
  final int count;

  /// If there is a currently authorized user: Have you added this reaction?
  @override
  @JsonKey(name: 'me')
  final bool? isReacted;

  /// If the reaction is a custom emoji: A link to the custom emoji.
  @override
  final String? url;

  /// If the reaction is a custom emoji: A link to a non-animated version of
  /// the custom emoji.
  @override
  final String? staticUrl;

  @override
  String toString() {
    return 'EmojiReaction(name: $name, count: $count, isReacted: $isReacted, url: $url, staticUrl: $staticUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmojiReaction &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.isReacted, isReacted) ||
                other.isReacted == isReacted) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.staticUrl, staticUrl) ||
                other.staticUrl == staticUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, count, isReacted, url, staticUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmojiReactionCopyWith<_$_EmojiReaction> get copyWith =>
      __$$_EmojiReactionCopyWithImpl<_$_EmojiReaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmojiReactionToJson(
      this,
    );
  }
}

abstract class _EmojiReaction implements EmojiReaction {
  const factory _EmojiReaction(
      {required final String name,
      required final int count,
      @JsonKey(name: 'me') final bool? isReacted,
      final String? url,
      final String? staticUrl}) = _$_EmojiReaction;

  factory _EmojiReaction.fromJson(Map<String, dynamic> json) =
      _$_EmojiReaction.fromJson;

  @override

  /// The emoji used for the reaction. Either a unicode emoji,
  /// or a custom emoji’s shortcode.
  String get name;
  @override

  /// The total number of users who have added this reaction.
  int get count;
  @override

  /// If there is a currently authorized user: Have you added this reaction?
  @JsonKey(name: 'me')
  bool? get isReacted;
  @override

  /// If the reaction is a custom emoji: A link to the custom emoji.
  String? get url;
  @override

  /// If the reaction is a custom emoji: A link to a non-animated version of
  /// the custom emoji.
  String? get staticUrl;
  @override
  @JsonKey(ignore: true)
  _$$_EmojiReactionCopyWith<_$_EmojiReaction> get copyWith =>
      throw _privateConstructorUsedError;
}
