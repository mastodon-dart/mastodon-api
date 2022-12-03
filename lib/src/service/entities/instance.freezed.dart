// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'instance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Instance _$InstanceFromJson(Map<String, dynamic> json) {
  return _Instance.fromJson(json);
}

/// @nodoc
mixin _$Instance {
  /// The domain name of the instance.
  String get uri => throw _privateConstructorUsedError;

  /// The title of the website.
  String get title => throw _privateConstructorUsedError;

  /// A shorter description defined by the admin.
  String get shortDescription => throw _privateConstructorUsedError;

  /// An email that may be contacted for any inquiries.
  String get email => throw _privateConstructorUsedError;

  /// The version of Mastodon installed on the instance.
  String get version => throw _privateConstructorUsedError;

  /// Primary languages of the website and its staff.
  List<Language> get languages => throw _privateConstructorUsedError;

  /// Statistics about how much information the instance contains.
  @JsonKey(name: 'stats')
  InstanceStatistics get statistics => throw _privateConstructorUsedError;

  /// Banner image for the website.
  String? get thumbnail => throw _privateConstructorUsedError;

  /// Whether registrations are enabled.
  @JsonKey(name: 'registrations')
  bool get isRegistrationsEnabled => throw _privateConstructorUsedError;

  /// Whether registrations require moderator approval.
  @JsonKey(name: 'approval_required')
  bool get isApprovalRequired => throw _privateConstructorUsedError;

  /// Whether invites are enabled.
  @JsonKey(name: 'invites_enabled')
  bool get isInvitesEnabled => throw _privateConstructorUsedError;

  /// Configured values and limits for this website.
  InstanceConfiguration? get configuration =>
      throw _privateConstructorUsedError;

  /// A user that can be contacted, as an alternative to email.
  Account? get contactAccount => throw _privateConstructorUsedError;

  /// An itemized list of rules for this website.
  List<Rule>? get rules => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstanceCopyWith<Instance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstanceCopyWith<$Res> {
  factory $InstanceCopyWith(Instance value, $Res Function(Instance) then) =
      _$InstanceCopyWithImpl<$Res, Instance>;
  @useResult
  $Res call(
      {String uri,
      String title,
      String shortDescription,
      String email,
      String version,
      List<Language> languages,
      @JsonKey(name: 'stats') InstanceStatistics statistics,
      String? thumbnail,
      @JsonKey(name: 'registrations') bool isRegistrationsEnabled,
      @JsonKey(name: 'approval_required') bool isApprovalRequired,
      @JsonKey(name: 'invites_enabled') bool isInvitesEnabled,
      InstanceConfiguration? configuration,
      Account? contactAccount,
      List<Rule>? rules});

  $InstanceStatisticsCopyWith<$Res> get statistics;
  $InstanceConfigurationCopyWith<$Res>? get configuration;
  $AccountCopyWith<$Res>? get contactAccount;
}

/// @nodoc
class _$InstanceCopyWithImpl<$Res, $Val extends Instance>
    implements $InstanceCopyWith<$Res> {
  _$InstanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? title = null,
    Object? shortDescription = null,
    Object? email = null,
    Object? version = null,
    Object? languages = null,
    Object? statistics = null,
    Object? thumbnail = freezed,
    Object? isRegistrationsEnabled = null,
    Object? isApprovalRequired = null,
    Object? isInvitesEnabled = null,
    Object? configuration = freezed,
    Object? contactAccount = freezed,
    Object? rules = freezed,
  }) {
    return _then(_value.copyWith(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
      statistics: null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as InstanceStatistics,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      isRegistrationsEnabled: null == isRegistrationsEnabled
          ? _value.isRegistrationsEnabled
          : isRegistrationsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isApprovalRequired: null == isApprovalRequired
          ? _value.isApprovalRequired
          : isApprovalRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      isInvitesEnabled: null == isInvitesEnabled
          ? _value.isInvitesEnabled
          : isInvitesEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      configuration: freezed == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as InstanceConfiguration?,
      contactAccount: freezed == contactAccount
          ? _value.contactAccount
          : contactAccount // ignore: cast_nullable_to_non_nullable
              as Account?,
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<Rule>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InstanceStatisticsCopyWith<$Res> get statistics {
    return $InstanceStatisticsCopyWith<$Res>(_value.statistics, (value) {
      return _then(_value.copyWith(statistics: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InstanceConfigurationCopyWith<$Res>? get configuration {
    if (_value.configuration == null) {
      return null;
    }

    return $InstanceConfigurationCopyWith<$Res>(_value.configuration!, (value) {
      return _then(_value.copyWith(configuration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res>? get contactAccount {
    if (_value.contactAccount == null) {
      return null;
    }

    return $AccountCopyWith<$Res>(_value.contactAccount!, (value) {
      return _then(_value.copyWith(contactAccount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InstanceCopyWith<$Res> implements $InstanceCopyWith<$Res> {
  factory _$$_InstanceCopyWith(
          _$_Instance value, $Res Function(_$_Instance) then) =
      __$$_InstanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uri,
      String title,
      String shortDescription,
      String email,
      String version,
      List<Language> languages,
      @JsonKey(name: 'stats') InstanceStatistics statistics,
      String? thumbnail,
      @JsonKey(name: 'registrations') bool isRegistrationsEnabled,
      @JsonKey(name: 'approval_required') bool isApprovalRequired,
      @JsonKey(name: 'invites_enabled') bool isInvitesEnabled,
      InstanceConfiguration? configuration,
      Account? contactAccount,
      List<Rule>? rules});

  @override
  $InstanceStatisticsCopyWith<$Res> get statistics;
  @override
  $InstanceConfigurationCopyWith<$Res>? get configuration;
  @override
  $AccountCopyWith<$Res>? get contactAccount;
}

/// @nodoc
class __$$_InstanceCopyWithImpl<$Res>
    extends _$InstanceCopyWithImpl<$Res, _$_Instance>
    implements _$$_InstanceCopyWith<$Res> {
  __$$_InstanceCopyWithImpl(
      _$_Instance _value, $Res Function(_$_Instance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? title = null,
    Object? shortDescription = null,
    Object? email = null,
    Object? version = null,
    Object? languages = null,
    Object? statistics = null,
    Object? thumbnail = freezed,
    Object? isRegistrationsEnabled = null,
    Object? isApprovalRequired = null,
    Object? isInvitesEnabled = null,
    Object? configuration = freezed,
    Object? contactAccount = freezed,
    Object? rules = freezed,
  }) {
    return _then(_$_Instance(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
      statistics: null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as InstanceStatistics,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      isRegistrationsEnabled: null == isRegistrationsEnabled
          ? _value.isRegistrationsEnabled
          : isRegistrationsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isApprovalRequired: null == isApprovalRequired
          ? _value.isApprovalRequired
          : isApprovalRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      isInvitesEnabled: null == isInvitesEnabled
          ? _value.isInvitesEnabled
          : isInvitesEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      configuration: freezed == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as InstanceConfiguration?,
      contactAccount: freezed == contactAccount
          ? _value.contactAccount
          : contactAccount // ignore: cast_nullable_to_non_nullable
              as Account?,
      rules: freezed == rules
          ? _value._rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<Rule>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_Instance implements _Instance {
  const _$_Instance(
      {required this.uri,
      required this.title,
      required this.shortDescription,
      required this.email,
      required this.version,
      required final List<Language> languages,
      @JsonKey(name: 'stats') required this.statistics,
      this.thumbnail,
      @JsonKey(name: 'registrations') required this.isRegistrationsEnabled,
      @JsonKey(name: 'approval_required') required this.isApprovalRequired,
      @JsonKey(name: 'invites_enabled') required this.isInvitesEnabled,
      this.configuration,
      this.contactAccount,
      final List<Rule>? rules})
      : _languages = languages,
        _rules = rules;

  factory _$_Instance.fromJson(Map<String, dynamic> json) =>
      _$$_InstanceFromJson(json);

  /// The domain name of the instance.
  @override
  final String uri;

  /// The title of the website.
  @override
  final String title;

  /// A shorter description defined by the admin.
  @override
  final String shortDescription;

  /// An email that may be contacted for any inquiries.
  @override
  final String email;

  /// The version of Mastodon installed on the instance.
  @override
  final String version;

  /// Primary languages of the website and its staff.
  final List<Language> _languages;

  /// Primary languages of the website and its staff.
  @override
  List<Language> get languages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  /// Statistics about how much information the instance contains.
  @override
  @JsonKey(name: 'stats')
  final InstanceStatistics statistics;

  /// Banner image for the website.
  @override
  final String? thumbnail;

  /// Whether registrations are enabled.
  @override
  @JsonKey(name: 'registrations')
  final bool isRegistrationsEnabled;

  /// Whether registrations require moderator approval.
  @override
  @JsonKey(name: 'approval_required')
  final bool isApprovalRequired;

  /// Whether invites are enabled.
  @override
  @JsonKey(name: 'invites_enabled')
  final bool isInvitesEnabled;

  /// Configured values and limits for this website.
  @override
  final InstanceConfiguration? configuration;

  /// A user that can be contacted, as an alternative to email.
  @override
  final Account? contactAccount;

  /// An itemized list of rules for this website.
  final List<Rule>? _rules;

  /// An itemized list of rules for this website.
  @override
  List<Rule>? get rules {
    final value = _rules;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Instance(uri: $uri, title: $title, shortDescription: $shortDescription, email: $email, version: $version, languages: $languages, statistics: $statistics, thumbnail: $thumbnail, isRegistrationsEnabled: $isRegistrationsEnabled, isApprovalRequired: $isApprovalRequired, isInvitesEnabled: $isInvitesEnabled, configuration: $configuration, contactAccount: $contactAccount, rules: $rules)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Instance &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            (identical(other.statistics, statistics) ||
                other.statistics == statistics) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.isRegistrationsEnabled, isRegistrationsEnabled) ||
                other.isRegistrationsEnabled == isRegistrationsEnabled) &&
            (identical(other.isApprovalRequired, isApprovalRequired) ||
                other.isApprovalRequired == isApprovalRequired) &&
            (identical(other.isInvitesEnabled, isInvitesEnabled) ||
                other.isInvitesEnabled == isInvitesEnabled) &&
            (identical(other.configuration, configuration) ||
                other.configuration == configuration) &&
            (identical(other.contactAccount, contactAccount) ||
                other.contactAccount == contactAccount) &&
            const DeepCollectionEquality().equals(other._rules, _rules));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uri,
      title,
      shortDescription,
      email,
      version,
      const DeepCollectionEquality().hash(_languages),
      statistics,
      thumbnail,
      isRegistrationsEnabled,
      isApprovalRequired,
      isInvitesEnabled,
      configuration,
      contactAccount,
      const DeepCollectionEquality().hash(_rules));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InstanceCopyWith<_$_Instance> get copyWith =>
      __$$_InstanceCopyWithImpl<_$_Instance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstanceToJson(
      this,
    );
  }
}

abstract class _Instance implements Instance {
  const factory _Instance(
      {required final String uri,
      required final String title,
      required final String shortDescription,
      required final String email,
      required final String version,
      required final List<Language> languages,
      @JsonKey(name: 'stats')
          required final InstanceStatistics statistics,
      final String? thumbnail,
      @JsonKey(name: 'registrations')
          required final bool isRegistrationsEnabled,
      @JsonKey(name: 'approval_required')
          required final bool isApprovalRequired,
      @JsonKey(name: 'invites_enabled')
          required final bool isInvitesEnabled,
      final InstanceConfiguration? configuration,
      final Account? contactAccount,
      final List<Rule>? rules}) = _$_Instance;

  factory _Instance.fromJson(Map<String, dynamic> json) = _$_Instance.fromJson;

  @override

  /// The domain name of the instance.
  String get uri;
  @override

  /// The title of the website.
  String get title;
  @override

  /// A shorter description defined by the admin.
  String get shortDescription;
  @override

  /// An email that may be contacted for any inquiries.
  String get email;
  @override

  /// The version of Mastodon installed on the instance.
  String get version;
  @override

  /// Primary languages of the website and its staff.
  List<Language> get languages;
  @override

  /// Statistics about how much information the instance contains.
  @JsonKey(name: 'stats')
  InstanceStatistics get statistics;
  @override

  /// Banner image for the website.
  String? get thumbnail;
  @override

  /// Whether registrations are enabled.
  @JsonKey(name: 'registrations')
  bool get isRegistrationsEnabled;
  @override

  /// Whether registrations require moderator approval.
  @JsonKey(name: 'approval_required')
  bool get isApprovalRequired;
  @override

  /// Whether invites are enabled.
  @JsonKey(name: 'invites_enabled')
  bool get isInvitesEnabled;
  @override

  /// Configured values and limits for this website.
  InstanceConfiguration? get configuration;
  @override

  /// A user that can be contacted, as an alternative to email.
  Account? get contactAccount;
  @override

  /// An itemized list of rules for this website.
  List<Rule>? get rules;
  @override
  @JsonKey(ignore: true)
  _$$_InstanceCopyWith<_$_Instance> get copyWith =>
      throw _privateConstructorUsedError;
}
