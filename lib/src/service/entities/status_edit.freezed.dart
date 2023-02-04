// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_edit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatusEdit _$StatusEditFromJson(Map<String, dynamic> json) {
  return _StatusEdit.fromJson(json);
}

/// @nodoc
mixin _$StatusEdit {
  /// The content of the status at this revision.
  String get content => throw _privateConstructorUsedError;

  /// The content of the subject or content warning at this revision.
  String get spoilerText => throw _privateConstructorUsedError;

  /// The account that published this revision.
  Account get account => throw _privateConstructorUsedError;

  /// The current state of the poll options at this revision.
  ///
  /// Note that edits changing the poll options will be collapsed together
  /// into one edit, since this action resets the poll.
  Poll? get poll => throw _privateConstructorUsedError;

  /// The current state of the poll options at this revision.
  ///
  /// Note that edits changing the poll options will be collapsed together
  /// into one edit, since this action resets the poll.
  List<MediaAttachment> get mediaAttachments =>
      throw _privateConstructorUsedError;

  /// Any custom emoji that are used in the current revision.
  List<Emoji> get emojis => throw _privateConstructorUsedError;

  /// Whether the status was marked sensitive at this revision.
  @JsonKey(name: 'sensitive')
  bool get isSensitive => throw _privateConstructorUsedError;

  /// The timestamp of when the revision was published.
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusEditCopyWith<StatusEdit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusEditCopyWith<$Res> {
  factory $StatusEditCopyWith(
          StatusEdit value, $Res Function(StatusEdit) then) =
      _$StatusEditCopyWithImpl<$Res, StatusEdit>;
  @useResult
  $Res call(
      {String content,
      String spoilerText,
      Account account,
      Poll? poll,
      List<MediaAttachment> mediaAttachments,
      List<Emoji> emojis,
      @JsonKey(name: 'sensitive') bool isSensitive,
      DateTime createdAt});

  $AccountCopyWith<$Res> get account;
  $PollCopyWith<$Res>? get poll;
}

/// @nodoc
class _$StatusEditCopyWithImpl<$Res, $Val extends StatusEdit>
    implements $StatusEditCopyWith<$Res> {
  _$StatusEditCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? spoilerText = null,
    Object? account = null,
    Object? poll = freezed,
    Object? mediaAttachments = null,
    Object? emojis = null,
    Object? isSensitive = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      spoilerText: null == spoilerText
          ? _value.spoilerText
          : spoilerText // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      poll: freezed == poll
          ? _value.poll
          : poll // ignore: cast_nullable_to_non_nullable
              as Poll?,
      mediaAttachments: null == mediaAttachments
          ? _value.mediaAttachments
          : mediaAttachments // ignore: cast_nullable_to_non_nullable
              as List<MediaAttachment>,
      emojis: null == emojis
          ? _value.emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as List<Emoji>,
      isSensitive: null == isSensitive
          ? _value.isSensitive
          : isSensitive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PollCopyWith<$Res>? get poll {
    if (_value.poll == null) {
      return null;
    }

    return $PollCopyWith<$Res>(_value.poll!, (value) {
      return _then(_value.copyWith(poll: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StatusEditCopyWith<$Res>
    implements $StatusEditCopyWith<$Res> {
  factory _$$_StatusEditCopyWith(
          _$_StatusEdit value, $Res Function(_$_StatusEdit) then) =
      __$$_StatusEditCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String content,
      String spoilerText,
      Account account,
      Poll? poll,
      List<MediaAttachment> mediaAttachments,
      List<Emoji> emojis,
      @JsonKey(name: 'sensitive') bool isSensitive,
      DateTime createdAt});

  @override
  $AccountCopyWith<$Res> get account;
  @override
  $PollCopyWith<$Res>? get poll;
}

/// @nodoc
class __$$_StatusEditCopyWithImpl<$Res>
    extends _$StatusEditCopyWithImpl<$Res, _$_StatusEdit>
    implements _$$_StatusEditCopyWith<$Res> {
  __$$_StatusEditCopyWithImpl(
      _$_StatusEdit _value, $Res Function(_$_StatusEdit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? spoilerText = null,
    Object? account = null,
    Object? poll = freezed,
    Object? mediaAttachments = null,
    Object? emojis = null,
    Object? isSensitive = null,
    Object? createdAt = null,
  }) {
    return _then(_$_StatusEdit(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      spoilerText: null == spoilerText
          ? _value.spoilerText
          : spoilerText // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      poll: freezed == poll
          ? _value.poll
          : poll // ignore: cast_nullable_to_non_nullable
              as Poll?,
      mediaAttachments: null == mediaAttachments
          ? _value._mediaAttachments
          : mediaAttachments // ignore: cast_nullable_to_non_nullable
              as List<MediaAttachment>,
      emojis: null == emojis
          ? _value._emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as List<Emoji>,
      isSensitive: null == isSensitive
          ? _value.isSensitive
          : isSensitive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_StatusEdit implements _StatusEdit {
  const _$_StatusEdit(
      {required this.content,
      required this.spoilerText,
      required this.account,
      this.poll,
      required final List<MediaAttachment> mediaAttachments,
      required final List<Emoji> emojis,
      @JsonKey(name: 'sensitive') required this.isSensitive,
      required this.createdAt})
      : _mediaAttachments = mediaAttachments,
        _emojis = emojis;

  factory _$_StatusEdit.fromJson(Map<String, dynamic> json) =>
      _$$_StatusEditFromJson(json);

  /// The content of the status at this revision.
  @override
  final String content;

  /// The content of the subject or content warning at this revision.
  @override
  final String spoilerText;

  /// The account that published this revision.
  @override
  final Account account;

  /// The current state of the poll options at this revision.
  ///
  /// Note that edits changing the poll options will be collapsed together
  /// into one edit, since this action resets the poll.
  @override
  final Poll? poll;

  /// The current state of the poll options at this revision.
  ///
  /// Note that edits changing the poll options will be collapsed together
  /// into one edit, since this action resets the poll.
  final List<MediaAttachment> _mediaAttachments;

  /// The current state of the poll options at this revision.
  ///
  /// Note that edits changing the poll options will be collapsed together
  /// into one edit, since this action resets the poll.
  @override
  List<MediaAttachment> get mediaAttachments {
    if (_mediaAttachments is EqualUnmodifiableListView)
      return _mediaAttachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaAttachments);
  }

  /// Any custom emoji that are used in the current revision.
  final List<Emoji> _emojis;

  /// Any custom emoji that are used in the current revision.
  @override
  List<Emoji> get emojis {
    if (_emojis is EqualUnmodifiableListView) return _emojis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emojis);
  }

  /// Whether the status was marked sensitive at this revision.
  @override
  @JsonKey(name: 'sensitive')
  final bool isSensitive;

  /// The timestamp of when the revision was published.
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'StatusEdit(content: $content, spoilerText: $spoilerText, account: $account, poll: $poll, mediaAttachments: $mediaAttachments, emojis: $emojis, isSensitive: $isSensitive, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusEdit &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.spoilerText, spoilerText) ||
                other.spoilerText == spoilerText) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.poll, poll) || other.poll == poll) &&
            const DeepCollectionEquality()
                .equals(other._mediaAttachments, _mediaAttachments) &&
            const DeepCollectionEquality().equals(other._emojis, _emojis) &&
            (identical(other.isSensitive, isSensitive) ||
                other.isSensitive == isSensitive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      content,
      spoilerText,
      account,
      poll,
      const DeepCollectionEquality().hash(_mediaAttachments),
      const DeepCollectionEquality().hash(_emojis),
      isSensitive,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusEditCopyWith<_$_StatusEdit> get copyWith =>
      __$$_StatusEditCopyWithImpl<_$_StatusEdit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusEditToJson(
      this,
    );
  }
}

abstract class _StatusEdit implements StatusEdit {
  const factory _StatusEdit(
      {required final String content,
      required final String spoilerText,
      required final Account account,
      final Poll? poll,
      required final List<MediaAttachment> mediaAttachments,
      required final List<Emoji> emojis,
      @JsonKey(name: 'sensitive') required final bool isSensitive,
      required final DateTime createdAt}) = _$_StatusEdit;

  factory _StatusEdit.fromJson(Map<String, dynamic> json) =
      _$_StatusEdit.fromJson;

  @override

  /// The content of the status at this revision.
  String get content;
  @override

  /// The content of the subject or content warning at this revision.
  String get spoilerText;
  @override

  /// The account that published this revision.
  Account get account;
  @override

  /// The current state of the poll options at this revision.
  ///
  /// Note that edits changing the poll options will be collapsed together
  /// into one edit, since this action resets the poll.
  Poll? get poll;
  @override

  /// The current state of the poll options at this revision.
  ///
  /// Note that edits changing the poll options will be collapsed together
  /// into one edit, since this action resets the poll.
  List<MediaAttachment> get mediaAttachments;
  @override

  /// Any custom emoji that are used in the current revision.
  List<Emoji> get emojis;
  @override

  /// Whether the status was marked sensitive at this revision.
  @JsonKey(name: 'sensitive')
  bool get isSensitive;
  @override

  /// The timestamp of when the revision was published.
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_StatusEditCopyWith<_$_StatusEdit> get copyWith =>
      throw _privateConstructorUsedError;
}
