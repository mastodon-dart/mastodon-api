// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'v2_instance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

V2Instance _$V2InstanceFromJson(Map<String, dynamic> json) {
  return _V2Instance.fromJson(json);
}

/// @nodoc
mixin _$V2Instance {
  /// The domain name of the instance.
  String get domain => throw _privateConstructorUsedError;

  /// The title of the website.
  String get title => throw _privateConstructorUsedError;

  /// Admin-defined description of the Mastodon site.
  String get description => throw _privateConstructorUsedError;

  /// Usage data for this instance.
  InstanceUsage get usage => throw _privateConstructorUsedError;

  /// The URL for the source code of the software running on this instance,
  /// in keeping with AGPL license requirements.
  String get sourceUrl => throw _privateConstructorUsedError;

  /// The version of Mastodon installed on the instance.
  String get version => throw _privateConstructorUsedError;

  /// Primary languages of the website and its staff.
  List<Language> get languages => throw _privateConstructorUsedError;

  /// Links to scaled resolution images, for high DPI screens.
  Thumbnail? get thumbnail => throw _privateConstructorUsedError;

  /// Configured values and limits for this website.
  V2InstanceConfiguration? get configuration =>
      throw _privateConstructorUsedError;

  /// Information about registering for this website.
  InstanceRegistrations get registrations => throw _privateConstructorUsedError;

  /// Hints related to contacting a representative of the website.
  InstanceContact get contact => throw _privateConstructorUsedError;

  /// An itemized list of rules for this website.
  List<Rule>? get rules => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $V2InstanceCopyWith<V2Instance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V2InstanceCopyWith<$Res> {
  factory $V2InstanceCopyWith(
          V2Instance value, $Res Function(V2Instance) then) =
      _$V2InstanceCopyWithImpl<$Res, V2Instance>;
  @useResult
  $Res call(
      {String domain,
      String title,
      String description,
      InstanceUsage usage,
      String sourceUrl,
      String version,
      List<Language> languages,
      Thumbnail? thumbnail,
      V2InstanceConfiguration? configuration,
      InstanceRegistrations registrations,
      InstanceContact contact,
      List<Rule>? rules});

  $InstanceUsageCopyWith<$Res> get usage;
  $ThumbnailCopyWith<$Res>? get thumbnail;
  $V2InstanceConfigurationCopyWith<$Res>? get configuration;
  $InstanceRegistrationsCopyWith<$Res> get registrations;
  $InstanceContactCopyWith<$Res> get contact;
}

/// @nodoc
class _$V2InstanceCopyWithImpl<$Res, $Val extends V2Instance>
    implements $V2InstanceCopyWith<$Res> {
  _$V2InstanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? domain = null,
    Object? title = null,
    Object? description = null,
    Object? usage = null,
    Object? sourceUrl = null,
    Object? version = null,
    Object? languages = null,
    Object? thumbnail = freezed,
    Object? configuration = freezed,
    Object? registrations = null,
    Object? contact = null,
    Object? rules = freezed,
  }) {
    return _then(_value.copyWith(
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as InstanceUsage,
      sourceUrl: null == sourceUrl
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Thumbnail?,
      configuration: freezed == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as V2InstanceConfiguration?,
      registrations: null == registrations
          ? _value.registrations
          : registrations // ignore: cast_nullable_to_non_nullable
              as InstanceRegistrations,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as InstanceContact,
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<Rule>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InstanceUsageCopyWith<$Res> get usage {
    return $InstanceUsageCopyWith<$Res>(_value.usage, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ThumbnailCopyWith<$Res>? get thumbnail {
    if (_value.thumbnail == null) {
      return null;
    }

    return $ThumbnailCopyWith<$Res>(_value.thumbnail!, (value) {
      return _then(_value.copyWith(thumbnail: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $V2InstanceConfigurationCopyWith<$Res>? get configuration {
    if (_value.configuration == null) {
      return null;
    }

    return $V2InstanceConfigurationCopyWith<$Res>(_value.configuration!,
        (value) {
      return _then(_value.copyWith(configuration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InstanceRegistrationsCopyWith<$Res> get registrations {
    return $InstanceRegistrationsCopyWith<$Res>(_value.registrations, (value) {
      return _then(_value.copyWith(registrations: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InstanceContactCopyWith<$Res> get contact {
    return $InstanceContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_V2InstanceCopyWith<$Res>
    implements $V2InstanceCopyWith<$Res> {
  factory _$$_V2InstanceCopyWith(
          _$_V2Instance value, $Res Function(_$_V2Instance) then) =
      __$$_V2InstanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String domain,
      String title,
      String description,
      InstanceUsage usage,
      String sourceUrl,
      String version,
      List<Language> languages,
      Thumbnail? thumbnail,
      V2InstanceConfiguration? configuration,
      InstanceRegistrations registrations,
      InstanceContact contact,
      List<Rule>? rules});

  @override
  $InstanceUsageCopyWith<$Res> get usage;
  @override
  $ThumbnailCopyWith<$Res>? get thumbnail;
  @override
  $V2InstanceConfigurationCopyWith<$Res>? get configuration;
  @override
  $InstanceRegistrationsCopyWith<$Res> get registrations;
  @override
  $InstanceContactCopyWith<$Res> get contact;
}

/// @nodoc
class __$$_V2InstanceCopyWithImpl<$Res>
    extends _$V2InstanceCopyWithImpl<$Res, _$_V2Instance>
    implements _$$_V2InstanceCopyWith<$Res> {
  __$$_V2InstanceCopyWithImpl(
      _$_V2Instance _value, $Res Function(_$_V2Instance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? domain = null,
    Object? title = null,
    Object? description = null,
    Object? usage = null,
    Object? sourceUrl = null,
    Object? version = null,
    Object? languages = null,
    Object? thumbnail = freezed,
    Object? configuration = freezed,
    Object? registrations = null,
    Object? contact = null,
    Object? rules = freezed,
  }) {
    return _then(_$_V2Instance(
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as InstanceUsage,
      sourceUrl: null == sourceUrl
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Thumbnail?,
      configuration: freezed == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as V2InstanceConfiguration?,
      registrations: null == registrations
          ? _value.registrations
          : registrations // ignore: cast_nullable_to_non_nullable
              as InstanceRegistrations,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as InstanceContact,
      rules: freezed == rules
          ? _value._rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<Rule>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_V2Instance implements _V2Instance {
  const _$_V2Instance(
      {required this.domain,
      required this.title,
      required this.description,
      required this.usage,
      required this.sourceUrl,
      required this.version,
      required final List<Language> languages,
      this.thumbnail,
      this.configuration,
      required this.registrations,
      required this.contact,
      final List<Rule>? rules})
      : _languages = languages,
        _rules = rules;

  factory _$_V2Instance.fromJson(Map<String, dynamic> json) =>
      _$$_V2InstanceFromJson(json);

  /// The domain name of the instance.
  @override
  final String domain;

  /// The title of the website.
  @override
  final String title;

  /// Admin-defined description of the Mastodon site.
  @override
  final String description;

  /// Usage data for this instance.
  @override
  final InstanceUsage usage;

  /// The URL for the source code of the software running on this instance,
  /// in keeping with AGPL license requirements.
  @override
  final String sourceUrl;

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

  /// Links to scaled resolution images, for high DPI screens.
  @override
  final Thumbnail? thumbnail;

  /// Configured values and limits for this website.
  @override
  final V2InstanceConfiguration? configuration;

  /// Information about registering for this website.
  @override
  final InstanceRegistrations registrations;

  /// Hints related to contacting a representative of the website.
  @override
  final InstanceContact contact;

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
    return 'V2Instance(domain: $domain, title: $title, description: $description, usage: $usage, sourceUrl: $sourceUrl, version: $version, languages: $languages, thumbnail: $thumbnail, configuration: $configuration, registrations: $registrations, contact: $contact, rules: $rules)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_V2Instance &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            (identical(other.sourceUrl, sourceUrl) ||
                other.sourceUrl == sourceUrl) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.configuration, configuration) ||
                other.configuration == configuration) &&
            (identical(other.registrations, registrations) ||
                other.registrations == registrations) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            const DeepCollectionEquality().equals(other._rules, _rules));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      domain,
      title,
      description,
      usage,
      sourceUrl,
      version,
      const DeepCollectionEquality().hash(_languages),
      thumbnail,
      configuration,
      registrations,
      contact,
      const DeepCollectionEquality().hash(_rules));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_V2InstanceCopyWith<_$_V2Instance> get copyWith =>
      __$$_V2InstanceCopyWithImpl<_$_V2Instance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_V2InstanceToJson(
      this,
    );
  }
}

abstract class _V2Instance implements V2Instance {
  const factory _V2Instance(
      {required final String domain,
      required final String title,
      required final String description,
      required final InstanceUsage usage,
      required final String sourceUrl,
      required final String version,
      required final List<Language> languages,
      final Thumbnail? thumbnail,
      final V2InstanceConfiguration? configuration,
      required final InstanceRegistrations registrations,
      required final InstanceContact contact,
      final List<Rule>? rules}) = _$_V2Instance;

  factory _V2Instance.fromJson(Map<String, dynamic> json) =
      _$_V2Instance.fromJson;

  @override

  /// The domain name of the instance.
  String get domain;
  @override

  /// The title of the website.
  String get title;
  @override

  /// Admin-defined description of the Mastodon site.
  String get description;
  @override

  /// Usage data for this instance.
  InstanceUsage get usage;
  @override

  /// The URL for the source code of the software running on this instance,
  /// in keeping with AGPL license requirements.
  String get sourceUrl;
  @override

  /// The version of Mastodon installed on the instance.
  String get version;
  @override

  /// Primary languages of the website and its staff.
  List<Language> get languages;
  @override

  /// Links to scaled resolution images, for high DPI screens.
  Thumbnail? get thumbnail;
  @override

  /// Configured values and limits for this website.
  V2InstanceConfiguration? get configuration;
  @override

  /// Information about registering for this website.
  InstanceRegistrations get registrations;
  @override

  /// Hints related to contacting a representative of the website.
  InstanceContact get contact;
  @override

  /// An itemized list of rules for this website.
  List<Rule>? get rules;
  @override
  @JsonKey(ignore: true)
  _$$_V2InstanceCopyWith<_$_V2Instance> get copyWith =>
      throw _privateConstructorUsedError;
}
