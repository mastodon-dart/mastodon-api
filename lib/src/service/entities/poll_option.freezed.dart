// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PollOption _$PollOptionFromJson(Map<String, dynamic> json) {
  return _PollOption.fromJson(json);
}

/// @nodoc
mixin _$PollOption {
  /// The title of this option.
  String get title => throw _privateConstructorUsedError;

  /// The count of this option.
  int get votesCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollOptionCopyWith<PollOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollOptionCopyWith<$Res> {
  factory $PollOptionCopyWith(
          PollOption value, $Res Function(PollOption) then) =
      _$PollOptionCopyWithImpl<$Res, PollOption>;
  @useResult
  $Res call({String title, int votesCount});
}

/// @nodoc
class _$PollOptionCopyWithImpl<$Res, $Val extends PollOption>
    implements $PollOptionCopyWith<$Res> {
  _$PollOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? votesCount = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      votesCount: null == votesCount
          ? _value.votesCount
          : votesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PollOptionCopyWith<$Res>
    implements $PollOptionCopyWith<$Res> {
  factory _$$_PollOptionCopyWith(
          _$_PollOption value, $Res Function(_$_PollOption) then) =
      __$$_PollOptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, int votesCount});
}

/// @nodoc
class __$$_PollOptionCopyWithImpl<$Res>
    extends _$PollOptionCopyWithImpl<$Res, _$_PollOption>
    implements _$$_PollOptionCopyWith<$Res> {
  __$$_PollOptionCopyWithImpl(
      _$_PollOption _value, $Res Function(_$_PollOption) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? votesCount = null,
  }) {
    return _then(_$_PollOption(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      votesCount: null == votesCount
          ? _value.votesCount
          : votesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PollOption implements _PollOption {
  const _$_PollOption({required this.title, required this.votesCount});

  factory _$_PollOption.fromJson(Map<String, dynamic> json) =>
      _$$_PollOptionFromJson(json);

  /// The title of this option.
  @override
  final String title;

  /// The count of this option.
  @override
  final int votesCount;

  @override
  String toString() {
    return 'PollOption(title: $title, votesCount: $votesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PollOption &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.votesCount, votesCount) ||
                other.votesCount == votesCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, votesCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PollOptionCopyWith<_$_PollOption> get copyWith =>
      __$$_PollOptionCopyWithImpl<_$_PollOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PollOptionToJson(
      this,
    );
  }
}

abstract class _PollOption implements PollOption {
  const factory _PollOption(
      {required final String title,
      required final int votesCount}) = _$_PollOption;

  factory _PollOption.fromJson(Map<String, dynamic> json) =
      _$_PollOption.fromJson;

  @override

  /// The title of this option.
  String get title;
  @override

  /// The count of this option.
  int get votesCount;
  @override
  @JsonKey(ignore: true)
  _$$_PollOptionCopyWith<_$_PollOption> get copyWith =>
      throw _privateConstructorUsedError;
}
