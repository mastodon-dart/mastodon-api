// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Poll _$PollFromJson(Map<String, dynamic> json) {
  return _Poll.fromJson(json);
}

/// @nodoc
mixin _$Poll {
  /// The ID of the poll in the database.
  String get id => throw _privateConstructorUsedError;

  /// How many votes have been received.
  int get votesCount => throw _privateConstructorUsedError;

  /// How many unique accounts have voted on a multiple-choice poll.
  ///
  /// It will be `null` if `isMultiple` is `false`.
  int? get votersCount => throw _privateConstructorUsedError;

  /// Does the poll allow multiple-choice answers?
  @JsonKey(name: 'multiple')
  bool get isMultiple => throw _privateConstructorUsedError;

  /// When called with a user token, has the authorized user voted?
  @JsonKey(name: 'voted')
  bool? get isVoted => throw _privateConstructorUsedError;

  /// Is the poll currently expired?
  @JsonKey(name: 'expired')
  bool get isExpired => throw _privateConstructorUsedError;

  /// Possible answers for the poll.
  List<PollOption> get options => throw _privateConstructorUsedError;

  /// When called with a user token, which options has the authorized
  /// user chosen?
  ///
  /// Contains an array of index values for `options`.
  List<int>? get ownVotes => throw _privateConstructorUsedError;

  /// Custom emoji to be used for rendering poll options.
  List<Emoji> get emojis => throw _privateConstructorUsedError;

  /// When the poll ends.
  ///
  /// If it's `null`, the poll does not end.
  DateTime? get expiresAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollCopyWith<Poll> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollCopyWith<$Res> {
  factory $PollCopyWith(Poll value, $Res Function(Poll) then) =
      _$PollCopyWithImpl<$Res, Poll>;
  @useResult
  $Res call(
      {String id,
      int votesCount,
      int? votersCount,
      @JsonKey(name: 'multiple') bool isMultiple,
      @JsonKey(name: 'voted') bool? isVoted,
      @JsonKey(name: 'expired') bool isExpired,
      List<PollOption> options,
      List<int>? ownVotes,
      List<Emoji> emojis,
      DateTime? expiresAt});
}

/// @nodoc
class _$PollCopyWithImpl<$Res, $Val extends Poll>
    implements $PollCopyWith<$Res> {
  _$PollCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? votesCount = null,
    Object? votersCount = freezed,
    Object? isMultiple = null,
    Object? isVoted = freezed,
    Object? isExpired = null,
    Object? options = null,
    Object? ownVotes = freezed,
    Object? emojis = null,
    Object? expiresAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      votesCount: null == votesCount
          ? _value.votesCount
          : votesCount // ignore: cast_nullable_to_non_nullable
              as int,
      votersCount: freezed == votersCount
          ? _value.votersCount
          : votersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isMultiple: null == isMultiple
          ? _value.isMultiple
          : isMultiple // ignore: cast_nullable_to_non_nullable
              as bool,
      isVoted: freezed == isVoted
          ? _value.isVoted
          : isVoted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isExpired: null == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<PollOption>,
      ownVotes: freezed == ownVotes
          ? _value.ownVotes
          : ownVotes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      emojis: null == emojis
          ? _value.emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as List<Emoji>,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PollCopyWith<$Res> implements $PollCopyWith<$Res> {
  factory _$$_PollCopyWith(_$_Poll value, $Res Function(_$_Poll) then) =
      __$$_PollCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int votesCount,
      int? votersCount,
      @JsonKey(name: 'multiple') bool isMultiple,
      @JsonKey(name: 'voted') bool? isVoted,
      @JsonKey(name: 'expired') bool isExpired,
      List<PollOption> options,
      List<int>? ownVotes,
      List<Emoji> emojis,
      DateTime? expiresAt});
}

/// @nodoc
class __$$_PollCopyWithImpl<$Res> extends _$PollCopyWithImpl<$Res, _$_Poll>
    implements _$$_PollCopyWith<$Res> {
  __$$_PollCopyWithImpl(_$_Poll _value, $Res Function(_$_Poll) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? votesCount = null,
    Object? votersCount = freezed,
    Object? isMultiple = null,
    Object? isVoted = freezed,
    Object? isExpired = null,
    Object? options = null,
    Object? ownVotes = freezed,
    Object? emojis = null,
    Object? expiresAt = freezed,
  }) {
    return _then(_$_Poll(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      votesCount: null == votesCount
          ? _value.votesCount
          : votesCount // ignore: cast_nullable_to_non_nullable
              as int,
      votersCount: freezed == votersCount
          ? _value.votersCount
          : votersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isMultiple: null == isMultiple
          ? _value.isMultiple
          : isMultiple // ignore: cast_nullable_to_non_nullable
              as bool,
      isVoted: freezed == isVoted
          ? _value.isVoted
          : isVoted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isExpired: null == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<PollOption>,
      ownVotes: freezed == ownVotes
          ? _value._ownVotes
          : ownVotes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      emojis: null == emojis
          ? _value._emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as List<Emoji>,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Poll implements _Poll {
  const _$_Poll(
      {required this.id,
      required this.votesCount,
      this.votersCount,
      @JsonKey(name: 'multiple') required this.isMultiple,
      @JsonKey(name: 'voted') this.isVoted,
      @JsonKey(name: 'expired') required this.isExpired,
      required final List<PollOption> options,
      final List<int>? ownVotes,
      required final List<Emoji> emojis,
      this.expiresAt})
      : _options = options,
        _ownVotes = ownVotes,
        _emojis = emojis;

  factory _$_Poll.fromJson(Map<String, dynamic> json) => _$$_PollFromJson(json);

  /// The ID of the poll in the database.
  @override
  final String id;

  /// How many votes have been received.
  @override
  final int votesCount;

  /// How many unique accounts have voted on a multiple-choice poll.
  ///
  /// It will be `null` if `isMultiple` is `false`.
  @override
  final int? votersCount;

  /// Does the poll allow multiple-choice answers?
  @override
  @JsonKey(name: 'multiple')
  final bool isMultiple;

  /// When called with a user token, has the authorized user voted?
  @override
  @JsonKey(name: 'voted')
  final bool? isVoted;

  /// Is the poll currently expired?
  @override
  @JsonKey(name: 'expired')
  final bool isExpired;

  /// Possible answers for the poll.
  final List<PollOption> _options;

  /// Possible answers for the poll.
  @override
  List<PollOption> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  /// When called with a user token, which options has the authorized
  /// user chosen?
  ///
  /// Contains an array of index values for `options`.
  final List<int>? _ownVotes;

  /// When called with a user token, which options has the authorized
  /// user chosen?
  ///
  /// Contains an array of index values for `options`.
  @override
  List<int>? get ownVotes {
    final value = _ownVotes;
    if (value == null) return null;
    if (_ownVotes is EqualUnmodifiableListView) return _ownVotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Custom emoji to be used for rendering poll options.
  final List<Emoji> _emojis;

  /// Custom emoji to be used for rendering poll options.
  @override
  List<Emoji> get emojis {
    if (_emojis is EqualUnmodifiableListView) return _emojis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emojis);
  }

  /// When the poll ends.
  ///
  /// If it's `null`, the poll does not end.
  @override
  final DateTime? expiresAt;

  @override
  String toString() {
    return 'Poll(id: $id, votesCount: $votesCount, votersCount: $votersCount, isMultiple: $isMultiple, isVoted: $isVoted, isExpired: $isExpired, options: $options, ownVotes: $ownVotes, emojis: $emojis, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Poll &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.votesCount, votesCount) ||
                other.votesCount == votesCount) &&
            (identical(other.votersCount, votersCount) ||
                other.votersCount == votersCount) &&
            (identical(other.isMultiple, isMultiple) ||
                other.isMultiple == isMultiple) &&
            (identical(other.isVoted, isVoted) || other.isVoted == isVoted) &&
            (identical(other.isExpired, isExpired) ||
                other.isExpired == isExpired) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            const DeepCollectionEquality().equals(other._ownVotes, _ownVotes) &&
            const DeepCollectionEquality().equals(other._emojis, _emojis) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      votesCount,
      votersCount,
      isMultiple,
      isVoted,
      isExpired,
      const DeepCollectionEquality().hash(_options),
      const DeepCollectionEquality().hash(_ownVotes),
      const DeepCollectionEquality().hash(_emojis),
      expiresAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PollCopyWith<_$_Poll> get copyWith =>
      __$$_PollCopyWithImpl<_$_Poll>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PollToJson(
      this,
    );
  }
}

abstract class _Poll implements Poll {
  const factory _Poll(
      {required final String id,
      required final int votesCount,
      final int? votersCount,
      @JsonKey(name: 'multiple') required final bool isMultiple,
      @JsonKey(name: 'voted') final bool? isVoted,
      @JsonKey(name: 'expired') required final bool isExpired,
      required final List<PollOption> options,
      final List<int>? ownVotes,
      required final List<Emoji> emojis,
      final DateTime? expiresAt}) = _$_Poll;

  factory _Poll.fromJson(Map<String, dynamic> json) = _$_Poll.fromJson;

  @override

  /// The ID of the poll in the database.
  String get id;
  @override

  /// How many votes have been received.
  int get votesCount;
  @override

  /// How many unique accounts have voted on a multiple-choice poll.
  ///
  /// It will be `null` if `isMultiple` is `false`.
  int? get votersCount;
  @override

  /// Does the poll allow multiple-choice answers?
  @JsonKey(name: 'multiple')
  bool get isMultiple;
  @override

  /// When called with a user token, has the authorized user voted?
  @JsonKey(name: 'voted')
  bool? get isVoted;
  @override

  /// Is the poll currently expired?
  @JsonKey(name: 'expired')
  bool get isExpired;
  @override

  /// Possible answers for the poll.
  List<PollOption> get options;
  @override

  /// When called with a user token, which options has the authorized
  /// user chosen?
  ///
  /// Contains an array of index values for `options`.
  List<int>? get ownVotes;
  @override

  /// Custom emoji to be used for rendering poll options.
  List<Emoji> get emojis;
  @override

  /// When the poll ends.
  ///
  /// If it's `null`, the poll does not end.
  DateTime? get expiresAt;
  @override
  @JsonKey(ignore: true)
  _$$_PollCopyWith<_$_Poll> get copyWith => throw _privateConstructorUsedError;
}
