// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheduled_status_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduledStatusParams _$ScheduledStatusParamsFromJson(
    Map<String, dynamic> json) {
  return _ScheduledStatusParams.fromJson(json);
}

/// @nodoc
mixin _$ScheduledStatusParams {
  /// Text to be used as status content.
  String get text => throw _privateConstructorUsedError;

  /// The text of the content warning or summary for the status.
  String? get spoilerText => throw _privateConstructorUsedError;

  /// Poll to be attached to the status.
  ScheduledPoll? get poll => throw _privateConstructorUsedError;

  /// IDs of the MediaAttachments that will be attached to the status.
  List<String>? get mediaIds => throw _privateConstructorUsedError;

  /// ID of the Status that will be replied to.
  @JsonKey(name: 'in_reply_to_id')
  String? get inReplyToStatusId => throw _privateConstructorUsedError;

  /// The language that will be used for the status.
  Language? get language => throw _privateConstructorUsedError;

  ///  The visibility that the status will have once it is posted.
  Visibility? get visibility => throw _privateConstructorUsedError;

  /// Idempotency key to prevent duplicate statuses.
  String? get idempotency => throw _privateConstructorUsedError;

  /// Whether the status will be marked as sensitive.
  @JsonKey(name: 'sensitive')
  bool? get isSensitive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduledStatusParamsCopyWith<ScheduledStatusParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduledStatusParamsCopyWith<$Res> {
  factory $ScheduledStatusParamsCopyWith(ScheduledStatusParams value,
          $Res Function(ScheduledStatusParams) then) =
      _$ScheduledStatusParamsCopyWithImpl<$Res, ScheduledStatusParams>;
  @useResult
  $Res call(
      {String text,
      String? spoilerText,
      ScheduledPoll? poll,
      List<String>? mediaIds,
      @JsonKey(name: 'in_reply_to_id') String? inReplyToStatusId,
      Language? language,
      Visibility? visibility,
      String? idempotency,
      @JsonKey(name: 'sensitive') bool? isSensitive});

  $ScheduledPollCopyWith<$Res>? get poll;
}

/// @nodoc
class _$ScheduledStatusParamsCopyWithImpl<$Res,
        $Val extends ScheduledStatusParams>
    implements $ScheduledStatusParamsCopyWith<$Res> {
  _$ScheduledStatusParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? spoilerText = freezed,
    Object? poll = freezed,
    Object? mediaIds = freezed,
    Object? inReplyToStatusId = freezed,
    Object? language = freezed,
    Object? visibility = freezed,
    Object? idempotency = freezed,
    Object? isSensitive = freezed,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      spoilerText: freezed == spoilerText
          ? _value.spoilerText
          : spoilerText // ignore: cast_nullable_to_non_nullable
              as String?,
      poll: freezed == poll
          ? _value.poll
          : poll // ignore: cast_nullable_to_non_nullable
              as ScheduledPoll?,
      mediaIds: freezed == mediaIds
          ? _value.mediaIds
          : mediaIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      inReplyToStatusId: freezed == inReplyToStatusId
          ? _value.inReplyToStatusId
          : inReplyToStatusId // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as Visibility?,
      idempotency: freezed == idempotency
          ? _value.idempotency
          : idempotency // ignore: cast_nullable_to_non_nullable
              as String?,
      isSensitive: freezed == isSensitive
          ? _value.isSensitive
          : isSensitive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduledPollCopyWith<$Res>? get poll {
    if (_value.poll == null) {
      return null;
    }

    return $ScheduledPollCopyWith<$Res>(_value.poll!, (value) {
      return _then(_value.copyWith(poll: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ScheduledStatusParamsCopyWith<$Res>
    implements $ScheduledStatusParamsCopyWith<$Res> {
  factory _$$_ScheduledStatusParamsCopyWith(_$_ScheduledStatusParams value,
          $Res Function(_$_ScheduledStatusParams) then) =
      __$$_ScheduledStatusParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      String? spoilerText,
      ScheduledPoll? poll,
      List<String>? mediaIds,
      @JsonKey(name: 'in_reply_to_id') String? inReplyToStatusId,
      Language? language,
      Visibility? visibility,
      String? idempotency,
      @JsonKey(name: 'sensitive') bool? isSensitive});

  @override
  $ScheduledPollCopyWith<$Res>? get poll;
}

/// @nodoc
class __$$_ScheduledStatusParamsCopyWithImpl<$Res>
    extends _$ScheduledStatusParamsCopyWithImpl<$Res, _$_ScheduledStatusParams>
    implements _$$_ScheduledStatusParamsCopyWith<$Res> {
  __$$_ScheduledStatusParamsCopyWithImpl(_$_ScheduledStatusParams _value,
      $Res Function(_$_ScheduledStatusParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? spoilerText = freezed,
    Object? poll = freezed,
    Object? mediaIds = freezed,
    Object? inReplyToStatusId = freezed,
    Object? language = freezed,
    Object? visibility = freezed,
    Object? idempotency = freezed,
    Object? isSensitive = freezed,
  }) {
    return _then(_$_ScheduledStatusParams(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      spoilerText: freezed == spoilerText
          ? _value.spoilerText
          : spoilerText // ignore: cast_nullable_to_non_nullable
              as String?,
      poll: freezed == poll
          ? _value.poll
          : poll // ignore: cast_nullable_to_non_nullable
              as ScheduledPoll?,
      mediaIds: freezed == mediaIds
          ? _value._mediaIds
          : mediaIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      inReplyToStatusId: freezed == inReplyToStatusId
          ? _value.inReplyToStatusId
          : inReplyToStatusId // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as Visibility?,
      idempotency: freezed == idempotency
          ? _value.idempotency
          : idempotency // ignore: cast_nullable_to_non_nullable
              as String?,
      isSensitive: freezed == isSensitive
          ? _value.isSensitive
          : isSensitive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_ScheduledStatusParams implements _ScheduledStatusParams {
  const _$_ScheduledStatusParams(
      {required this.text,
      this.spoilerText,
      this.poll,
      final List<String>? mediaIds,
      @JsonKey(name: 'in_reply_to_id') this.inReplyToStatusId,
      this.language,
      this.visibility,
      this.idempotency,
      @JsonKey(name: 'sensitive') this.isSensitive})
      : _mediaIds = mediaIds;

  factory _$_ScheduledStatusParams.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduledStatusParamsFromJson(json);

  /// Text to be used as status content.
  @override
  final String text;

  /// The text of the content warning or summary for the status.
  @override
  final String? spoilerText;

  /// Poll to be attached to the status.
  @override
  final ScheduledPoll? poll;

  /// IDs of the MediaAttachments that will be attached to the status.
  final List<String>? _mediaIds;

  /// IDs of the MediaAttachments that will be attached to the status.
  @override
  List<String>? get mediaIds {
    final value = _mediaIds;
    if (value == null) return null;
    if (_mediaIds is EqualUnmodifiableListView) return _mediaIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// ID of the Status that will be replied to.
  @override
  @JsonKey(name: 'in_reply_to_id')
  final String? inReplyToStatusId;

  /// The language that will be used for the status.
  @override
  final Language? language;

  ///  The visibility that the status will have once it is posted.
  @override
  final Visibility? visibility;

  /// Idempotency key to prevent duplicate statuses.
  @override
  final String? idempotency;

  /// Whether the status will be marked as sensitive.
  @override
  @JsonKey(name: 'sensitive')
  final bool? isSensitive;

  @override
  String toString() {
    return 'ScheduledStatusParams(text: $text, spoilerText: $spoilerText, poll: $poll, mediaIds: $mediaIds, inReplyToStatusId: $inReplyToStatusId, language: $language, visibility: $visibility, idempotency: $idempotency, isSensitive: $isSensitive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduledStatusParams &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.spoilerText, spoilerText) ||
                other.spoilerText == spoilerText) &&
            (identical(other.poll, poll) || other.poll == poll) &&
            const DeepCollectionEquality().equals(other._mediaIds, _mediaIds) &&
            (identical(other.inReplyToStatusId, inReplyToStatusId) ||
                other.inReplyToStatusId == inReplyToStatusId) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.idempotency, idempotency) ||
                other.idempotency == idempotency) &&
            (identical(other.isSensitive, isSensitive) ||
                other.isSensitive == isSensitive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      text,
      spoilerText,
      poll,
      const DeepCollectionEquality().hash(_mediaIds),
      inReplyToStatusId,
      language,
      visibility,
      idempotency,
      isSensitive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduledStatusParamsCopyWith<_$_ScheduledStatusParams> get copyWith =>
      __$$_ScheduledStatusParamsCopyWithImpl<_$_ScheduledStatusParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduledStatusParamsToJson(
      this,
    );
  }
}

abstract class _ScheduledStatusParams implements ScheduledStatusParams {
  const factory _ScheduledStatusParams(
          {required final String text,
          final String? spoilerText,
          final ScheduledPoll? poll,
          final List<String>? mediaIds,
          @JsonKey(name: 'in_reply_to_id') final String? inReplyToStatusId,
          final Language? language,
          final Visibility? visibility,
          final String? idempotency,
          @JsonKey(name: 'sensitive') final bool? isSensitive}) =
      _$_ScheduledStatusParams;

  factory _ScheduledStatusParams.fromJson(Map<String, dynamic> json) =
      _$_ScheduledStatusParams.fromJson;

  @override

  /// Text to be used as status content.
  String get text;
  @override

  /// The text of the content warning or summary for the status.
  String? get spoilerText;
  @override

  /// Poll to be attached to the status.
  ScheduledPoll? get poll;
  @override

  /// IDs of the MediaAttachments that will be attached to the status.
  List<String>? get mediaIds;
  @override

  /// ID of the Status that will be replied to.
  @JsonKey(name: 'in_reply_to_id')
  String? get inReplyToStatusId;
  @override

  /// The language that will be used for the status.
  Language? get language;
  @override

  ///  The visibility that the status will have once it is posted.
  Visibility? get visibility;
  @override

  /// Idempotency key to prevent duplicate statuses.
  String? get idempotency;
  @override

  /// Whether the status will be marked as sensitive.
  @JsonKey(name: 'sensitive')
  bool? get isSensitive;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduledStatusParamsCopyWith<_$_ScheduledStatusParams> get copyWith =>
      throw _privateConstructorUsedError;
}
