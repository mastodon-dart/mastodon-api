// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggestion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Suggestion _$SuggestionFromJson(Map<String, dynamic> json) {
  return _Suggestion.fromJson(json);
}

/// @nodoc
mixin _$Suggestion {
  /// The reason this account is being suggested.
  SuggestedReason get source => throw _privateConstructorUsedError;

  /// The account being recommended to follow.
  Account get account => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuggestionCopyWith<Suggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestionCopyWith<$Res> {
  factory $SuggestionCopyWith(
          Suggestion value, $Res Function(Suggestion) then) =
      _$SuggestionCopyWithImpl<$Res, Suggestion>;
  @useResult
  $Res call({SuggestedReason source, Account account});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$SuggestionCopyWithImpl<$Res, $Val extends Suggestion>
    implements $SuggestionCopyWith<$Res> {
  _$SuggestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? account = null,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as SuggestedReason,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SuggestionCopyWith<$Res>
    implements $SuggestionCopyWith<$Res> {
  factory _$$_SuggestionCopyWith(
          _$_Suggestion value, $Res Function(_$_Suggestion) then) =
      __$$_SuggestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SuggestedReason source, Account account});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$_SuggestionCopyWithImpl<$Res>
    extends _$SuggestionCopyWithImpl<$Res, _$_Suggestion>
    implements _$$_SuggestionCopyWith<$Res> {
  __$$_SuggestionCopyWithImpl(
      _$_Suggestion _value, $Res Function(_$_Suggestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? account = null,
  }) {
    return _then(_$_Suggestion(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as SuggestedReason,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_Suggestion implements _Suggestion {
  const _$_Suggestion({required this.source, required this.account});

  factory _$_Suggestion.fromJson(Map<String, dynamic> json) =>
      _$$_SuggestionFromJson(json);

  /// The reason this account is being suggested.
  @override
  final SuggestedReason source;

  /// The account being recommended to follow.
  @override
  final Account account;

  @override
  String toString() {
    return 'Suggestion(source: $source, account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Suggestion &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.account, account) || other.account == account));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, source, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuggestionCopyWith<_$_Suggestion> get copyWith =>
      __$$_SuggestionCopyWithImpl<_$_Suggestion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SuggestionToJson(
      this,
    );
  }
}

abstract class _Suggestion implements Suggestion {
  const factory _Suggestion(
      {required final SuggestedReason source,
      required final Account account}) = _$_Suggestion;

  factory _Suggestion.fromJson(Map<String, dynamic> json) =
      _$_Suggestion.fromJson;

  @override

  /// The reason this account is being suggested.
  SuggestedReason get source;
  @override

  /// The account being recommended to follow.
  Account get account;
  @override
  @JsonKey(ignore: true)
  _$$_SuggestionCopyWith<_$_Suggestion> get copyWith =>
      throw _privateConstructorUsedError;
}
