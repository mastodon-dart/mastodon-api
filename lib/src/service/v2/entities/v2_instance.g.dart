// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'v2_instance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_V2Instance _$$_V2InstanceFromJson(Map json) => $checkedCreate(
      r'_$_V2Instance',
      json,
      ($checkedConvert) {
        final val = _$_V2Instance(
          domain: $checkedConvert('domain', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          usage: $checkedConvert(
              'usage',
              (v) =>
                  InstanceUsage.fromJson(Map<String, Object?>.from(v as Map))),
          sourceUrl: $checkedConvert('source_url', (v) => v as String),
          version: $checkedConvert('version', (v) => v as String),
          languages: $checkedConvert(
              'languages',
              (v) => (v as List<dynamic>)
                  .map((e) => $enumDecode(_$LanguageEnumMap, e))
                  .toList()),
          thumbnail: $checkedConvert(
              'thumbnail',
              (v) => v == null
                  ? null
                  : Thumbnail.fromJson(Map<String, Object?>.from(v as Map))),
          configuration: $checkedConvert(
              'configuration',
              (v) => v == null
                  ? null
                  : V2InstanceConfiguration.fromJson(
                      Map<String, Object?>.from(v as Map))),
          registrations: $checkedConvert(
              'registrations',
              (v) => InstanceRegistrations.fromJson(
                  Map<String, Object?>.from(v as Map))),
          contact: $checkedConvert(
              'contact',
              (v) => InstanceContact.fromJson(
                  Map<String, Object?>.from(v as Map))),
          rules: $checkedConvert(
              'rules',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => Rule.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'sourceUrl': 'source_url'},
    );

Map<String, dynamic> _$$_V2InstanceToJson(_$_V2Instance instance) {
  final val = <String, dynamic>{
    'domain': instance.domain,
    'title': instance.title,
    'description': instance.description,
    'usage': instance.usage.toJson(),
    'source_url': instance.sourceUrl,
    'version': instance.version,
    'languages': instance.languages.map((e) => _$LanguageEnumMap[e]!).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('thumbnail', instance.thumbnail?.toJson());
  writeNotNull('configuration', instance.configuration?.toJson());
  val['registrations'] = instance.registrations.toJson();
  val['contact'] = instance.contact.toJson();
  writeNotNull('rules', instance.rules?.map((e) => e.toJson()).toList());
  return val;
}

const _$LanguageEnumMap = {
  Language.afar: 'aa',
  Language.abkhaz: 'ab',
  Language.avestan: 'ae',
  Language.afrikaans: 'af',
  Language.akan: 'ak',
  Language.amharic: 'am',
  Language.aragonese: 'an',
  Language.arabic: 'ar',
  Language.assamese: 'as',
  Language.avaric: 'av',
  Language.aymara: 'ay',
  Language.azerbaijani: 'az',
  Language.bashkir: 'ba',
  Language.belarusian: 'be',
  Language.bulgarian: 'bg',
  Language.bihari: 'bh',
  Language.bislama: 'bi',
  Language.bambara: 'bm',
  Language.bengali: 'bn',
  Language.tibetan: 'bo',
  Language.breton: 'br',
  Language.bosnian: 'bs',
  Language.catalan: 'ca',
  Language.chechen: 'ce',
  Language.chamorro: 'ch',
  Language.corsican: 'co',
  Language.cree: 'cr',
  Language.czech: 'cs',
  Language.oldChurchSlavonic: 'cu',
  Language.chuvash: 'cv',
  Language.welsh: 'cy',
  Language.danish: 'da',
  Language.german: 'de',
  Language.divehi: 'dv',
  Language.dzongkha: 'dz',
  Language.ewe: 'ee',
  Language.greek: 'el',
  Language.english: 'en',
  Language.americanEnglish: 'en-us',
  Language.esperanto: 'eo',
  Language.spanish: 'es',
  Language.estonian: 'et',
  Language.basque: 'eu',
  Language.persian: 'fa',
  Language.fula: 'ff',
  Language.finnish: 'fi',
  Language.fijian: 'fj',
  Language.faroese: 'fo',
  Language.french: 'fr',
  Language.westernFrisian: 'fy',
  Language.irish: 'ga',
  Language.scottishGaelic: 'gd',
  Language.galician: 'gl',
  Language.gujarati: 'gu',
  Language.manx: 'gv',
  Language.hausa: 'ha',
  Language.hebrew: 'he',
  Language.hindi: 'hi',
  Language.hiriMotu: 'ho',
  Language.croatian: 'hr',
  Language.haitian: 'ht',
  Language.hungarian: 'hu',
  Language.armenian: 'hy',
  Language.herero: 'hz',
  Language.interlingua: 'ia',
  Language.indonesian: 'id',
  Language.interlingue: 'ie',
  Language.igbo: 'ig',
  Language.nuosu: 'ii',
  Language.inupiaq: 'ik',
  Language.ido: 'io',
  Language.icelandic: 'is_',
  Language.italian: 'it',
  Language.inuktitut: 'iu',
  Language.japanese: 'ja',
  Language.javanese: 'jv',
  Language.georgian: 'ka',
  Language.kongo: 'kg',
  Language.kikuyu: 'ki',
  Language.kwanyama: 'kj',
  Language.kazakh: 'kk',
  Language.kalaallisut: 'kl',
  Language.khmer: 'km',
  Language.kannada: 'kn',
  Language.korean: 'ko',
  Language.kanuri: 'kr',
  Language.kashmiri: 'ks',
  Language.kurmanji: 'ku',
  Language.komi: 'kv',
  Language.cornish: 'kw',
  Language.kyrgyz: 'ky',
  Language.latin: 'la',
  Language.luxembourgish: 'lb',
  Language.ganda: 'lg',
  Language.limburgish: 'li',
  Language.lingala: 'ln',
  Language.lao: 'lo',
  Language.lithuanian: 'lt',
  Language.lubaKatanga: 'lu',
  Language.latvian: 'lv',
  Language.malagasy: 'mg',
  Language.marshallese: 'mh',
  Language.maori: 'mi',
  Language.macedonian: 'mk',
  Language.malayalam: 'ml',
  Language.mongolian: 'mn',
  Language.marathi: 'mr',
  Language.malay: 'ms',
  Language.maltese: 'mt',
  Language.burmese: 'my',
  Language.nauru: 'na',
  Language.norwegianBokmal: 'nb',
  Language.northernNdebele: 'nd',
  Language.nepali: 'ne',
  Language.ndonga: 'ng',
  Language.dutch: 'nl',
  Language.norwegianNynorsk: 'nn',
  Language.norwegian: 'no',
  Language.southernNdebele: 'nr',
  Language.navajo: 'nv',
  Language.chichewa: 'ny',
  Language.occitan: 'oc',
  Language.ojibwe: 'oj',
  Language.oromo: 'om',
  Language.oriya: 'or',
  Language.ossetian: 'os',
  Language.panjabi: 'pa',
  Language.pali: 'pi',
  Language.polish: 'pl',
  Language.pashto: 'ps',
  Language.portuguese: 'pt',
  Language.quechua: 'qu',
  Language.romansh: 'rm',
  Language.kirundi: 'rn',
  Language.romanian: 'ro',
  Language.russian: 'ru',
  Language.kinyarwanda: 'rw',
  Language.sanskrit: 'sa',
  Language.sardinian: 'sc',
  Language.sindhi: 'sd',
  Language.northernSami: 'se',
  Language.sango: 'sg',
  Language.sinhala: 'si',
  Language.slovak: 'sk',
  Language.slovenian: 'sl',
  Language.shona: 'sn',
  Language.somali: 'so',
  Language.albanian: 'sq',
  Language.serbian: 'sr',
  Language.swati: 'ss',
  Language.southernSotho: 'st',
  Language.sundanese: 'su',
  Language.swedish: 'sv',
  Language.swahili: 'sw',
  Language.tamil: 'ta',
  Language.telugu: 'te',
  Language.tajik: 'tg',
  Language.thai: 'th',
  Language.tigrinya: 'ti',
  Language.turkmen: 'tk',
  Language.tagalog: 'tl',
  Language.tswana: 'tn',
  Language.tonga: 'to',
  Language.turkish: 'tr',
  Language.tsonga: 'ts',
  Language.tatar: 'tt',
  Language.twi: 'tw',
  Language.tahitian: 'ty',
  Language.uyghur: 'ug',
  Language.ukrainian: 'uk',
  Language.urdu: 'ur',
  Language.uzbek: 'uz',
  Language.venda: 've',
  Language.vietnamese: 'vi',
  Language.volapuk: 'vo',
  Language.walloon: 'wa',
  Language.wolof: 'wo',
  Language.xhosa: 'xh',
  Language.yiddish: 'yi',
  Language.yoruba: 'yo',
  Language.zhuang: 'za',
  Language.chinese: 'zh',
  Language.zulu: 'zu',
};
