// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emoji.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Emoji _$EmojiFromJson(Map<String, dynamic> json) {
  return _Emoji.fromJson(json);
}

/// @nodoc
mixin _$Emoji {
  /// The name of the custom emoji.
  @JsonKey(name: 'shortcode')
  String get code => throw _privateConstructorUsedError;

  /// A link to the custom emoji.
  String get url => throw _privateConstructorUsedError;

  /// A link to a static copy of the custom emoji.
  String? get staticUrl => throw _privateConstructorUsedError;

  /// Whether this Emoji should be visible in the picker or unlisted.
  @JsonKey(name: 'visible_in_picker')
  bool get isVisibleInPicker => throw _privateConstructorUsedError;

  /// Used for sorting custom emoji in the picker.
  String? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmojiCopyWith<Emoji> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmojiCopyWith<$Res> {
  factory $EmojiCopyWith(Emoji value, $Res Function(Emoji) then) =
      _$EmojiCopyWithImpl<$Res, Emoji>;
  @useResult
  $Res call(
      {@JsonKey(name: 'shortcode') String code,
      String url,
      String? staticUrl,
      @JsonKey(name: 'visible_in_picker') bool isVisibleInPicker,
      String? category});
}

/// @nodoc
class _$EmojiCopyWithImpl<$Res, $Val extends Emoji>
    implements $EmojiCopyWith<$Res> {
  _$EmojiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? url = null,
    Object? staticUrl = freezed,
    Object? isVisibleInPicker = null,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      staticUrl: freezed == staticUrl
          ? _value.staticUrl
          : staticUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isVisibleInPicker: null == isVisibleInPicker
          ? _value.isVisibleInPicker
          : isVisibleInPicker // ignore: cast_nullable_to_non_nullable
              as bool,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmojiCopyWith<$Res> implements $EmojiCopyWith<$Res> {
  factory _$$_EmojiCopyWith(_$_Emoji value, $Res Function(_$_Emoji) then) =
      __$$_EmojiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'shortcode') String code,
      String url,
      String? staticUrl,
      @JsonKey(name: 'visible_in_picker') bool isVisibleInPicker,
      String? category});
}

/// @nodoc
class __$$_EmojiCopyWithImpl<$Res> extends _$EmojiCopyWithImpl<$Res, _$_Emoji>
    implements _$$_EmojiCopyWith<$Res> {
  __$$_EmojiCopyWithImpl(_$_Emoji _value, $Res Function(_$_Emoji) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? url = null,
    Object? staticUrl = freezed,
    Object? isVisibleInPicker = null,
    Object? category = freezed,
  }) {
    return _then(_$_Emoji(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      staticUrl: freezed == staticUrl
          ? _value.staticUrl
          : staticUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isVisibleInPicker: null == isVisibleInPicker
          ? _value.isVisibleInPicker
          : isVisibleInPicker // ignore: cast_nullable_to_non_nullable
              as bool,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_Emoji implements _Emoji {
  const _$_Emoji(
      {@JsonKey(name: 'shortcode') required this.code,
      required this.url,
      this.staticUrl,
      @JsonKey(name: 'visible_in_picker') required this.isVisibleInPicker,
      this.category});

  factory _$_Emoji.fromJson(Map<String, dynamic> json) =>
      _$$_EmojiFromJson(json);

  /// The name of the custom emoji.
  @override
  @JsonKey(name: 'shortcode')
  final String code;

  /// A link to the custom emoji.
  @override
  final String url;

  /// A link to a static copy of the custom emoji.
  @override
  final String? staticUrl;

  /// Whether this Emoji should be visible in the picker or unlisted.
  @override
  @JsonKey(name: 'visible_in_picker')
  final bool isVisibleInPicker;

  /// Used for sorting custom emoji in the picker.
  @override
  final String? category;

  @override
  String toString() {
    return 'Emoji(code: $code, url: $url, staticUrl: $staticUrl, isVisibleInPicker: $isVisibleInPicker, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Emoji &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.staticUrl, staticUrl) ||
                other.staticUrl == staticUrl) &&
            (identical(other.isVisibleInPicker, isVisibleInPicker) ||
                other.isVisibleInPicker == isVisibleInPicker) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, url, staticUrl, isVisibleInPicker, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmojiCopyWith<_$_Emoji> get copyWith =>
      __$$_EmojiCopyWithImpl<_$_Emoji>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmojiToJson(
      this,
    );
  }
}

abstract class _Emoji implements Emoji {
  const factory _Emoji(
      {@JsonKey(name: 'shortcode') required final String code,
      required final String url,
      final String? staticUrl,
      @JsonKey(name: 'visible_in_picker') required final bool isVisibleInPicker,
      final String? category}) = _$_Emoji;

  factory _Emoji.fromJson(Map<String, dynamic> json) = _$_Emoji.fromJson;

  @override

  /// The name of the custom emoji.
  @JsonKey(name: 'shortcode')
  String get code;
  @override

  /// A link to the custom emoji.
  String get url;
  @override

  /// A link to a static copy of the custom emoji.
  String? get staticUrl;
  @override

  /// Whether this Emoji should be visible in the picker or unlisted.
  @JsonKey(name: 'visible_in_picker')
  bool get isVisibleInPicker;
  @override

  /// Used for sorting custom emoji in the picker.
  String? get category;
  @override
  @JsonKey(ignore: true)
  _$$_EmojiCopyWith<_$_Emoji> get copyWith =>
      throw _privateConstructorUsedError;
}
