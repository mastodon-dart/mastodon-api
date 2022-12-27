// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Conversation _$ConversationFromJson(Map<String, dynamic> json) {
  return _Conversation.fromJson(json);
}

/// @nodoc
mixin _$Conversation {
  /// The ID of the conversation in the database.
  String get id => throw _privateConstructorUsedError;

  /// Is the conversation currently marked as unread?
  @JsonKey(name: 'unread')
  bool get isUnread => throw _privateConstructorUsedError;

  /// Participants in the conversation.
  List<Account> get accounts => throw _privateConstructorUsedError;

  /// The last status in the conversation.
  Status? get lastStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationCopyWith<Conversation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationCopyWith<$Res> {
  factory $ConversationCopyWith(
          Conversation value, $Res Function(Conversation) then) =
      _$ConversationCopyWithImpl<$Res, Conversation>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'unread') bool isUnread,
      List<Account> accounts,
      Status? lastStatus});

  $StatusCopyWith<$Res>? get lastStatus;
}

/// @nodoc
class _$ConversationCopyWithImpl<$Res, $Val extends Conversation>
    implements $ConversationCopyWith<$Res> {
  _$ConversationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isUnread = null,
    Object? accounts = null,
    Object? lastStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isUnread: null == isUnread
          ? _value.isUnread
          : isUnread // ignore: cast_nullable_to_non_nullable
              as bool,
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
      lastStatus: freezed == lastStatus
          ? _value.lastStatus
          : lastStatus // ignore: cast_nullable_to_non_nullable
              as Status?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res>? get lastStatus {
    if (_value.lastStatus == null) {
      return null;
    }

    return $StatusCopyWith<$Res>(_value.lastStatus!, (value) {
      return _then(_value.copyWith(lastStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ConversationCopyWith<$Res>
    implements $ConversationCopyWith<$Res> {
  factory _$$_ConversationCopyWith(
          _$_Conversation value, $Res Function(_$_Conversation) then) =
      __$$_ConversationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'unread') bool isUnread,
      List<Account> accounts,
      Status? lastStatus});

  @override
  $StatusCopyWith<$Res>? get lastStatus;
}

/// @nodoc
class __$$_ConversationCopyWithImpl<$Res>
    extends _$ConversationCopyWithImpl<$Res, _$_Conversation>
    implements _$$_ConversationCopyWith<$Res> {
  __$$_ConversationCopyWithImpl(
      _$_Conversation _value, $Res Function(_$_Conversation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isUnread = null,
    Object? accounts = null,
    Object? lastStatus = freezed,
  }) {
    return _then(_$_Conversation(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isUnread: null == isUnread
          ? _value.isUnread
          : isUnread // ignore: cast_nullable_to_non_nullable
              as bool,
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
      lastStatus: freezed == lastStatus
          ? _value.lastStatus
          : lastStatus // ignore: cast_nullable_to_non_nullable
              as Status?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_Conversation implements _Conversation {
  const _$_Conversation(
      {required this.id,
      @JsonKey(name: 'unread') required this.isUnread,
      required final List<Account> accounts,
      this.lastStatus})
      : _accounts = accounts;

  factory _$_Conversation.fromJson(Map<String, dynamic> json) =>
      _$$_ConversationFromJson(json);

  /// The ID of the conversation in the database.
  @override
  final String id;

  /// Is the conversation currently marked as unread?
  @override
  @JsonKey(name: 'unread')
  final bool isUnread;

  /// Participants in the conversation.
  final List<Account> _accounts;

  /// Participants in the conversation.
  @override
  List<Account> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  /// The last status in the conversation.
  @override
  final Status? lastStatus;

  @override
  String toString() {
    return 'Conversation(id: $id, isUnread: $isUnread, accounts: $accounts, lastStatus: $lastStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Conversation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isUnread, isUnread) ||
                other.isUnread == isUnread) &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            (identical(other.lastStatus, lastStatus) ||
                other.lastStatus == lastStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, isUnread,
      const DeepCollectionEquality().hash(_accounts), lastStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConversationCopyWith<_$_Conversation> get copyWith =>
      __$$_ConversationCopyWithImpl<_$_Conversation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConversationToJson(
      this,
    );
  }
}

abstract class _Conversation implements Conversation {
  const factory _Conversation(
      {required final String id,
      @JsonKey(name: 'unread') required final bool isUnread,
      required final List<Account> accounts,
      final Status? lastStatus}) = _$_Conversation;

  factory _Conversation.fromJson(Map<String, dynamic> json) =
      _$_Conversation.fromJson;

  @override

  /// The ID of the conversation in the database.
  String get id;
  @override

  /// Is the conversation currently marked as unread?
  @JsonKey(name: 'unread')
  bool get isUnread;
  @override

  /// Participants in the conversation.
  List<Account> get accounts;
  @override

  /// The last status in the conversation.
  Status? get lastStatus;
  @override
  @JsonKey(ignore: true)
  _$$_ConversationCopyWith<_$_Conversation> get copyWith =>
      throw _privateConstructorUsedError;
}
