// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Rule _$RuleFromJson(Map<String, dynamic> json) {
  return _Rule.fromJson(json);
}

/// @nodoc
mixin _$Rule {
  /// An identifier for the rule.
  String get id => throw _privateConstructorUsedError;

  /// The rule to be followed.
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RuleCopyWith<Rule> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RuleCopyWith<$Res> {
  factory $RuleCopyWith(Rule value, $Res Function(Rule) then) =
      _$RuleCopyWithImpl<$Res, Rule>;
  @useResult
  $Res call({String id, String text});
}

/// @nodoc
class _$RuleCopyWithImpl<$Res, $Val extends Rule>
    implements $RuleCopyWith<$Res> {
  _$RuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RuleCopyWith<$Res> implements $RuleCopyWith<$Res> {
  factory _$$_RuleCopyWith(_$_Rule value, $Res Function(_$_Rule) then) =
      __$$_RuleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String text});
}

/// @nodoc
class __$$_RuleCopyWithImpl<$Res> extends _$RuleCopyWithImpl<$Res, _$_Rule>
    implements _$$_RuleCopyWith<$Res> {
  __$$_RuleCopyWithImpl(_$_Rule _value, $Res Function(_$_Rule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_$_Rule(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rule implements _Rule {
  const _$_Rule({required this.id, required this.text});

  factory _$_Rule.fromJson(Map<String, dynamic> json) => _$$_RuleFromJson(json);

  /// An identifier for the rule.
  @override
  final String id;

  /// The rule to be followed.
  @override
  final String text;

  @override
  String toString() {
    return 'Rule(id: $id, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Rule &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RuleCopyWith<_$_Rule> get copyWith =>
      __$$_RuleCopyWithImpl<_$_Rule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RuleToJson(
      this,
    );
  }
}

abstract class _Rule implements Rule {
  const factory _Rule({required final String id, required final String text}) =
      _$_Rule;

  factory _Rule.fromJson(Map<String, dynamic> json) = _$_Rule.fromJson;

  @override

  /// An identifier for the rule.
  String get id;
  @override

  /// The rule to be followed.
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_RuleCopyWith<_$_Rule> get copyWith => throw _privateConstructorUsedError;
}
