// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatusSource _$StatusSourceFromJson(Map<String, dynamic> json) {
  return _StatusSource.fromJson(json);
}

/// @nodoc
mixin _$StatusSource {
  /// ID of the status in the database.
  String get id => throw _privateConstructorUsedError;

  /// The plain text used to compose the status.
  String get text => throw _privateConstructorUsedError;

  /// The plain text used to compose the status’s subject or content warning.
  String get spoilerText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusSourceCopyWith<StatusSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusSourceCopyWith<$Res> {
  factory $StatusSourceCopyWith(
          StatusSource value, $Res Function(StatusSource) then) =
      _$StatusSourceCopyWithImpl<$Res, StatusSource>;
  @useResult
  $Res call({String id, String text, String spoilerText});
}

/// @nodoc
class _$StatusSourceCopyWithImpl<$Res, $Val extends StatusSource>
    implements $StatusSourceCopyWith<$Res> {
  _$StatusSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? spoilerText = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      spoilerText: null == spoilerText
          ? _value.spoilerText
          : spoilerText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatusSourceCopyWith<$Res>
    implements $StatusSourceCopyWith<$Res> {
  factory _$$_StatusSourceCopyWith(
          _$_StatusSource value, $Res Function(_$_StatusSource) then) =
      __$$_StatusSourceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String text, String spoilerText});
}

/// @nodoc
class __$$_StatusSourceCopyWithImpl<$Res>
    extends _$StatusSourceCopyWithImpl<$Res, _$_StatusSource>
    implements _$$_StatusSourceCopyWith<$Res> {
  __$$_StatusSourceCopyWithImpl(
      _$_StatusSource _value, $Res Function(_$_StatusSource) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? spoilerText = null,
  }) {
    return _then(_$_StatusSource(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      spoilerText: null == spoilerText
          ? _value.spoilerText
          : spoilerText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatusSource implements _StatusSource {
  const _$_StatusSource(
      {required this.id, required this.text, required this.spoilerText});

  factory _$_StatusSource.fromJson(Map<String, dynamic> json) =>
      _$$_StatusSourceFromJson(json);

  /// ID of the status in the database.
  @override
  final String id;

  /// The plain text used to compose the status.
  @override
  final String text;

  /// The plain text used to compose the status’s subject or content warning.
  @override
  final String spoilerText;

  @override
  String toString() {
    return 'StatusSource(id: $id, text: $text, spoilerText: $spoilerText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusSource &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.spoilerText, spoilerText) ||
                other.spoilerText == spoilerText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, spoilerText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusSourceCopyWith<_$_StatusSource> get copyWith =>
      __$$_StatusSourceCopyWithImpl<_$_StatusSource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusSourceToJson(
      this,
    );
  }
}

abstract class _StatusSource implements StatusSource {
  const factory _StatusSource(
      {required final String id,
      required final String text,
      required final String spoilerText}) = _$_StatusSource;

  factory _StatusSource.fromJson(Map<String, dynamic> json) =
      _$_StatusSource.fromJson;

  @override

  /// ID of the status in the database.
  String get id;
  @override

  /// The plain text used to compose the status.
  String get text;
  @override

  /// The plain text used to compose the status’s subject or content warning.
  String get spoilerText;
  @override
  @JsonKey(ignore: true)
  _$$_StatusSourceCopyWith<_$_StatusSource> get copyWith =>
      throw _privateConstructorUsedError;
}
