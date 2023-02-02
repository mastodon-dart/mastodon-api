// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_context.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatusContext _$StatusContextFromJson(Map<String, dynamic> json) {
  return _StatusesContext.fromJson(json);
}

/// @nodoc
mixin _$StatusContext {
  /// Parents in the thread.
  List<Status> get ancestors => throw _privateConstructorUsedError;

  /// Children in the thread.
  List<Status> get descendants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusContextCopyWith<StatusContext> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusContextCopyWith<$Res> {
  factory $StatusContextCopyWith(
          StatusContext value, $Res Function(StatusContext) then) =
      _$StatusContextCopyWithImpl<$Res, StatusContext>;
  @useResult
  $Res call({List<Status> ancestors, List<Status> descendants});
}

/// @nodoc
class _$StatusContextCopyWithImpl<$Res, $Val extends StatusContext>
    implements $StatusContextCopyWith<$Res> {
  _$StatusContextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ancestors = null,
    Object? descendants = null,
  }) {
    return _then(_value.copyWith(
      ancestors: null == ancestors
          ? _value.ancestors
          : ancestors // ignore: cast_nullable_to_non_nullable
              as List<Status>,
      descendants: null == descendants
          ? _value.descendants
          : descendants // ignore: cast_nullable_to_non_nullable
              as List<Status>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatusesContextCopyWith<$Res>
    implements $StatusContextCopyWith<$Res> {
  factory _$$_StatusesContextCopyWith(
          _$_StatusesContext value, $Res Function(_$_StatusesContext) then) =
      __$$_StatusesContextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Status> ancestors, List<Status> descendants});
}

/// @nodoc
class __$$_StatusesContextCopyWithImpl<$Res>
    extends _$StatusContextCopyWithImpl<$Res, _$_StatusesContext>
    implements _$$_StatusesContextCopyWith<$Res> {
  __$$_StatusesContextCopyWithImpl(
      _$_StatusesContext _value, $Res Function(_$_StatusesContext) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ancestors = null,
    Object? descendants = null,
  }) {
    return _then(_$_StatusesContext(
      ancestors: null == ancestors
          ? _value._ancestors
          : ancestors // ignore: cast_nullable_to_non_nullable
              as List<Status>,
      descendants: null == descendants
          ? _value._descendants
          : descendants // ignore: cast_nullable_to_non_nullable
              as List<Status>,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_StatusesContext implements _StatusesContext {
  const _$_StatusesContext(
      {required final List<Status> ancestors,
      required final List<Status> descendants})
      : _ancestors = ancestors,
        _descendants = descendants;

  factory _$_StatusesContext.fromJson(Map<String, dynamic> json) =>
      _$$_StatusesContextFromJson(json);

  /// Parents in the thread.
  final List<Status> _ancestors;

  /// Parents in the thread.
  @override
  List<Status> get ancestors {
    if (_ancestors is EqualUnmodifiableListView) return _ancestors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ancestors);
  }

  /// Children in the thread.
  final List<Status> _descendants;

  /// Children in the thread.
  @override
  List<Status> get descendants {
    if (_descendants is EqualUnmodifiableListView) return _descendants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_descendants);
  }

  @override
  String toString() {
    return 'StatusContext(ancestors: $ancestors, descendants: $descendants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusesContext &&
            const DeepCollectionEquality()
                .equals(other._ancestors, _ancestors) &&
            const DeepCollectionEquality()
                .equals(other._descendants, _descendants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ancestors),
      const DeepCollectionEquality().hash(_descendants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusesContextCopyWith<_$_StatusesContext> get copyWith =>
      __$$_StatusesContextCopyWithImpl<_$_StatusesContext>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusesContextToJson(
      this,
    );
  }
}

abstract class _StatusesContext implements StatusContext {
  const factory _StatusesContext(
      {required final List<Status> ancestors,
      required final List<Status> descendants}) = _$_StatusesContext;

  factory _StatusesContext.fromJson(Map<String, dynamic> json) =
      _$_StatusesContext.fromJson;

  @override

  /// Parents in the thread.
  List<Status> get ancestors;
  @override

  /// Children in the thread.
  List<Status> get descendants;
  @override
  @JsonKey(ignore: true)
  _$$_StatusesContextCopyWith<_$_StatusesContext> get copyWith =>
      throw _privateConstructorUsedError;
}
