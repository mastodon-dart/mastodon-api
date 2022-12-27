// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Status _$$_StatusFromJson(Map json) => $checkedCreate(
      r'_$_Status',
      json,
      ($checkedConvert) {
        final val = _$_Status(
          id: $checkedConvert('id', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String?),
          uri: $checkedConvert('uri', (v) => v as String),
          content: $checkedConvert('content', (v) => v as String),
          spoilerText: $checkedConvert('spoiler_text', (v) => v as String),
          visibility: $checkedConvert(
              'visibility', (v) => $enumDecode(_$VisibilityEnumMap, v)),
          favouritesCount: $checkedConvert('favourites_count', (v) => v as int),
          repliesCount: $checkedConvert('replies_count', (v) => v as int),
          reblogsCount: $checkedConvert('reblogs_count', (v) => v as int),
          language: $checkedConvert(
              'language', (v) => $enumDecodeNullable(_$LanguageEnumMap, v)),
          inReplyToId: $checkedConvert('in_reply_to_id', (v) => v as String?),
          inReplyToAccountId:
              $checkedConvert('in_reply_to_account_id', (v) => v as String?),
          isFavourited: $checkedConvert('favourited', (v) => v as bool?),
          isReblogged: $checkedConvert('reblogged', (v) => v as bool?),
          isMuted: $checkedConvert('muted', (v) => v as bool?),
          isBookmarked: $checkedConvert('bookmarked', (v) => v as bool?),
          isSensitive: $checkedConvert('sensitive', (v) => v as bool?),
          isPinned: $checkedConvert('pinned', (v) => v as bool?),
          lastStatusAt: $checkedConvert('last_status_at',
              (v) => v == null ? null : DateTime.parse(v as String)),
          account: $checkedConvert('account',
              (v) => Account.fromJson(Map<String, Object?>.from(v as Map))),
          application: $checkedConvert(
              'application',
              (v) => v == null
                  ? null
                  : Application.fromJson(Map<String, Object?>.from(v as Map))),
          poll: $checkedConvert(
              'poll',
              (v) => v == null
                  ? null
                  : Poll.fromJson(Map<String, Object?>.from(v as Map))),
          reblog: $checkedConvert(
              'reblog',
              (v) => v == null
                  ? null
                  : Status.fromJson(Map<String, Object?>.from(v as Map))),
          mediaAttachments: $checkedConvert(
              'media_attachments',
              (v) => (v as List<dynamic>)
                  .map((e) => MediaAttachment.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
          emojis: $checkedConvert(
              'emojis',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Emoji.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
          tags: $checkedConvert(
              'tags',
              (v) => (v as List<dynamic>)
                  .map((e) => Tag.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'spoilerText': 'spoiler_text',
        'favouritesCount': 'favourites_count',
        'repliesCount': 'replies_count',
        'reblogsCount': 'reblogs_count',
        'inReplyToId': 'in_reply_to_id',
        'inReplyToAccountId': 'in_reply_to_account_id',
        'isFavourited': 'favourited',
        'isReblogged': 'reblogged',
        'isMuted': 'muted',
        'isBookmarked': 'bookmarked',
        'isSensitive': 'sensitive',
        'isPinned': 'pinned',
        'lastStatusAt': 'last_status_at',
        'mediaAttachments': 'media_attachments',
        'createdAt': 'created_at'
      },
    );

Map<String, dynamic> _$$_StatusToJson(_$_Status instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url', instance.url);
  val['uri'] = instance.uri;
  val['content'] = instance.content;
  val['spoiler_text'] = instance.spoilerText;
  val['visibility'] = _$VisibilityEnumMap[instance.visibility]!;
  val['favourites_count'] = instance.favouritesCount;
  val['replies_count'] = instance.repliesCount;
  val['reblogs_count'] = instance.reblogsCount;
  writeNotNull('language', _$LanguageEnumMap[instance.language]);
  writeNotNull('in_reply_to_id', instance.inReplyToId);
  writeNotNull('in_reply_to_account_id', instance.inReplyToAccountId);
  writeNotNull('favourited', instance.isFavourited);
  writeNotNull('reblogged', instance.isReblogged);
  writeNotNull('muted', instance.isMuted);
  writeNotNull('bookmarked', instance.isBookmarked);
  writeNotNull('sensitive', instance.isSensitive);
  writeNotNull('pinned', instance.isPinned);
  writeNotNull('last_status_at', instance.lastStatusAt?.toIso8601String());
  val['account'] = instance.account.toJson();
  writeNotNull('application', instance.application?.toJson());
  writeNotNull('poll', instance.poll?.toJson());
  writeNotNull('reblog', instance.reblog?.toJson());
  val['media_attachments'] =
      instance.mediaAttachments.map((e) => e.toJson()).toList();
  val['emojis'] = instance.emojis.map((e) => e.toJson()).toList();
  val['tags'] = instance.tags.map((e) => e.toJson()).toList();
  val['created_at'] = instance.createdAt.toIso8601String();
  return val;
}

const _$VisibilityEnumMap = {
  Visibility.public: 'public',
  Visibility.unlisted: 'unlisted',
  Visibility.private: 'private',
  Visibility.direct: 'direct',
};

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
