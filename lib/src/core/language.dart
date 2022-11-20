// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

/// Represents ISO 639 Part 1 two-letter language code.
enum Language {
  /// `aa`
  @JsonValue('aa')
  afar('aa', 'Afaraf'),

  /// `ab`
  @JsonValue('ab')
  abkhaz('ab', 'аҧсуа бызшәа'),

  /// `ae`
  @JsonValue('ae')
  avestan('ae', 'avesta'),

  /// `af`
  @JsonValue('af')
  afrikaans('af', 'Afrikaans'),

  /// `ak`
  @JsonValue('ak')
  akan('ak', 'Akan'),

  /// `am`
  @JsonValue('am')
  amharic('am', 'አማርኛ'),

  /// `an`
  @JsonValue('an')
  aragonese('an', 'aragonés'),

  /// `ar`
  @JsonValue('ar')
  arabic('ar', 'اللغة العربية'),

  /// `as`
  @JsonValue('as')
  assamese('as', 'অসমীয়া'),

  /// `av`
  @JsonValue('av')
  avaric('av', 'авар мацӀ'),

  /// `ay`
  @JsonValue('ay')
  aymara('ay', 'aymar aru'),

  /// `az`
  @JsonValue('az')
  azerbaijani('az', 'azərbaycan dili'),

  /// `ba`
  @JsonValue('ba')
  bashkir('ba', 'башҡорт теле'),

  /// `be`
  @JsonValue('be')
  belarusian('be', 'беларуская мова'),

  /// `bg`
  @JsonValue('bg')
  bulgarian('bg', 'български език'),

  /// `bh`
  @JsonValue('bh')
  bihari('bh', 'भोजपुरी'),

  /// `bi`
  @JsonValue('bi')
  bislama('bi', 'Bislama'),

  /// `bm`
  @JsonValue('bm')
  bambara('bm', 'bamanankan'),

  /// `bn`
  @JsonValue('bn')
  bengali('bn', 'বাংলা'),

  /// `bo`
  @JsonValue('bo')
  tibetan('bo', 'བོད་ཡིག'),

  /// `br`
  @JsonValue('br')
  breton('br', 'brezhoneg'),

  /// `bs`
  @JsonValue('bs')
  bosnian('bs', 'bosanski jezik'),

  /// `ca`
  @JsonValue('ca')
  catalan('ca', 'Català'),

  /// `ce`
  @JsonValue('ce')
  chechen('ce', 'нохчийн мотт'),

  /// `ch`
  @JsonValue('ch')
  chamorro('ch', 'Chamoru'),

  /// `co`
  @JsonValue('co')
  corsican('co', 'corsu'),

  /// `cr`
  @JsonValue('cr')
  cree('cr', 'ᓀᐦᐃᔭᐍᐏᐣ'),

  /// `cs`
  @JsonValue('cs')
  czech('cs', 'čeština'),

  /// `cu`
  @JsonValue('cu')
  oldChurchSlavonic('cu', 'ѩзыкъ словѣньскъ'),

  /// `cv`
  @JsonValue('cv')
  chuvash('cv', 'чӑваш чӗлхи'),

  /// `cy`
  @JsonValue('cy')
  welsh('cy', 'Cymraeg'),

  /// `da`
  @JsonValue('da')
  danish('da', 'dansk'),

  /// `de`
  @JsonValue('de')
  german('de', 'Deutsch'),

  /// `dv`
  @JsonValue('dv')
  divehi('dv', 'Dhivehi'),

  /// `dz`
  @JsonValue('dz')
  dzongkha('dz', 'རྫོང་ཁ'),

  /// `ee`
  @JsonValue('ee')
  ewe('ee', 'Eʋegbe'),

  /// `el`
  @JsonValue('el')
  greek('el', 'Ελληνικά'),

  /// `en`
  @JsonValue('en')
  english('en', 'English'),

  /// `eo`
  @JsonValue('eo')
  esperanto('eo', 'Esperanto'),

  /// `es`
  @JsonValue('es')
  spanish('es', 'Español'),

  /// `et`
  @JsonValue('et')
  estonian('et', 'eesti'),

  /// `eu`
  @JsonValue('eu')
  basque('eu', 'euskara'),

  /// `fa`
  @JsonValue('fa')
  persian('fa', 'فارسی'),

  /// `ff`
  @JsonValue('ff')
  fula('ff', 'Fulfulde'),

  /// `fi`
  @JsonValue('fi')
  finnish('fi', 'suomi'),

  /// `fj`
  @JsonValue('fj')
  fijian('fj', 'Vakaviti'),

  /// `fo`
  @JsonValue('fo')
  faroese('fo', 'føroyskt'),

  /// `fr`
  @JsonValue('fr')
  french('fr', 'Français'),

  /// `fy`
  @JsonValue('fy')
  westernFrisian('fy', 'Frysk'),

  /// `ga`
  @JsonValue('ga')
  irish('ga', 'Gaeilge'),

  /// `gd`
  @JsonValue('gd')
  scottishGaelic('gd', 'Gàidhlig'),

  /// `gl`
  @JsonValue('gl')
  galician('gl', 'galego'),

  /// `gu`
  @JsonValue('gu')
  gujarati('gu', 'ગુજરાતી'),

  /// `gv`
  @JsonValue('gv')
  manx('gv', 'Gaelg'),

  /// `ha`
  @JsonValue('ha')
  hausa('ha', 'هَوُسَ'),

  /// `he`
  @JsonValue('he')
  hebrew('he', 'עברית'),

  /// `hi`
  @JsonValue('hi')
  hindi('hi', 'हिन्दी'),

  /// `ho`
  @JsonValue('ho')
  hiriMotu('ho', 'Hiri Motu'),

  /// `hr`
  @JsonValue('hr')
  croatian('hr', 'Hrvatski'),

  /// `ht`
  @JsonValue('ht')
  haitian('ht', 'Kreyòl ayisyen'),

  /// `hu`
  @JsonValue('hu')
  hungarian('hu', 'magyar'),

  /// `hy`
  @JsonValue('hy')
  armenian('hy', 'Հայերեն'),

  /// `hz`
  @JsonValue('hz')
  herero('hz', 'Otjiherero'),

  /// `ia`
  @JsonValue('ia')
  interlingua('ia', 'Interlingua'),

  /// `id`
  @JsonValue('id')
  indonesian('id', 'Bahasa Indonesia'),

  /// `ie`
  @JsonValue('ie')
  interlingue('ie', 'Interlingue'),

  /// `ig`
  @JsonValue('ig')
  igbo('ig', 'Asụsụ Igbo'),

  /// `ii`
  @JsonValue('ii')
  nuosu('ii', 'ꆈꌠ꒿ Nuosuhxop'),

  /// `ik`
  @JsonValue('ik')
  inupiaq('ik', 'Iñupiaq'),

  /// `io`
  @JsonValue('io')
  ido('io', 'Ido'),

  /// `is_`
  @JsonValue('is_')
  icelandic('is_', 'Íslenska'),

  /// `it`
  @JsonValue('it')
  italian('it', 'Italiano'),

  /// `iu`
  @JsonValue('iu')
  inuktitut('iu', 'ᐃᓄᒃᑎᑐᑦ'),

  /// `ja`
  @JsonValue('ja')
  japanese('ja', '日本語'),

  /// `jv`
  @JsonValue('jv')
  javanese('jv', 'basa Jawa'),

  /// `ka`
  @JsonValue('ka')
  georgian('ka', 'ქართული'),

  /// `kg`
  @JsonValue('kg')
  kongo('kg', 'Kikongo'),

  /// `ki`
  @JsonValue('ki')
  kikuyu('ki', 'Gĩkũyũ'),

  /// `kj`
  @JsonValue('kj')
  kwanyama('kj', 'Kuanyama'),

  /// `kk`
  @JsonValue('kk')
  kazakh('kk', 'қазақ тілі'),

  /// `kl`
  @JsonValue('kl')
  kalaallisut('kl', 'kalaallisut'),

  /// `km`
  @JsonValue('km')
  khmer('km', 'ខេមរភាសា'),

  /// `kn`
  @JsonValue('kn')
  kannada('kn', 'ಕನ್ನಡ'),

  /// `ko`
  @JsonValue('ko')
  korean('ko', '한국어'),

  /// `kr`
  @JsonValue('kr')
  kanuri('kr', 'Kanuri'),

  /// `ks`
  @JsonValue('ks')
  kashmiri('ks', 'कश्मीरी'),

  /// `ku`
  @JsonValue('ku')
  kurmanji('ku', 'Kurmancî'),

  /// `kv`
  @JsonValue('kv')
  komi('kv', 'коми кыв'),

  /// `kw`
  @JsonValue('kw')
  cornish('kw', 'Kernewek'),

  /// `ky`
  @JsonValue('ky')
  kyrgyz('ky', 'Кыргызча'),

  /// `la`
  @JsonValue('la')
  latin('la', 'latine'),

  /// `lb`
  @JsonValue('lb')
  luxembourgish('lb', 'Lëtzebuergesch'),

  /// `lg`
  @JsonValue('lg')
  ganda('lg', 'Luganda'),

  /// `li`
  @JsonValue('li')
  limburgish('li', 'Limburgs'),

  /// `ln`
  @JsonValue('ln')
  lingala('ln', 'Lingála'),

  /// `lo`
  @JsonValue('lo')
  lao('lo', 'ລາວ'),

  /// `lt`
  @JsonValue('lt')
  lithuanian('lt', 'lietuvių kalba'),

  /// `lu`
  @JsonValue('lu')
  lubaKatanga('lu', 'Tshiluba'),

  /// `lv`
  @JsonValue('lv')
  latvian('lv', 'latviešu valoda'),

  /// `mg`
  @JsonValue('mg')
  malagasy('mg', 'fiteny malagasy'),

  /// `mh`
  @JsonValue('mh')
  marshallese('mh', 'Kajin M̧ajeļ'),

  /// `mi`
  @JsonValue('mi')
  maori('mi', 'te reo Māori'),

  /// `mk`
  @JsonValue('mk')
  macedonian('mk', 'македонски јазик'),

  /// `ml`
  @JsonValue('ml')
  malayalam('ml', 'മലയാളം'),

  /// `mn`
  @JsonValue('mn')
  mongolian('mn', 'Монгол хэл'),

  /// `mr`
  @JsonValue('mr')
  marathi('mr', 'मराठी'),

  /// `ms`
  @JsonValue('ms')
  malay('ms', 'Bahasa Melayu'),

  /// `mt`
  @JsonValue('mt')
  maltese('mt', 'Malti'),

  /// `my`
  @JsonValue('my')
  burmese('my', 'ဗမာစာ'),

  /// `na`
  @JsonValue('na')
  nauru('na', 'Ekakairũ Naoero'),

  /// `nb`
  @JsonValue('nb')
  norwegianBokmal('nb', 'Norsk bokmål'),

  /// `nd`
  @JsonValue('nd')
  northernNdebele('nd', 'isiNdebele'),

  /// `ne`
  @JsonValue('ne')
  nepali('ne', 'नेपाली'),

  /// `ng`
  @JsonValue('ng')
  ndonga('ng', 'Owambo'),

  /// `nl`
  @JsonValue('nl')
  dutch('nl', 'Nederlands'),

  /// `nn`
  @JsonValue('nn')
  norwegianNynorsk('nn', 'Norsk Nynorsk'),

  /// `no`
  @JsonValue('no')
  norwegian('no', 'Norsk'),

  /// `nr`
  @JsonValue('nr')
  southernNdebele('nr', 'isiNdebele'),

  /// `nv`
  @JsonValue('nv')
  navajo('nv', 'Diné bizaad'),

  /// `ny`
  @JsonValue('ny')
  chichewa('ny', 'chiCheŵa'),

  /// `oc`
  @JsonValue('oc')
  occitan('oc', 'occitan'),

  /// `oj`
  @JsonValue('oj')
  ojibwe('oj', 'ᐊᓂᔑᓈᐯᒧᐎᓐ'),

  /// `om`
  @JsonValue('om')
  oromo('om', 'Afaan Oromoo'),

  /// `or`
  @JsonValue('or')
  oriya('or', 'ଓଡ଼ିଆ'),

  /// `os`
  @JsonValue('os')
  ossetian('os', 'ирон æвзаг'),

  /// `pa`
  @JsonValue('pa')
  panjabi('pa', 'ਪੰਜਾਬੀ'),

  /// `pi`
  @JsonValue('pi')
  pali('pi', 'पाऴि'),

  /// `pl`
  @JsonValue('pl')
  polish('pl', 'Polski'),

  /// `ps`
  @JsonValue('ps')
  pashto('ps', 'پښتو'),

  /// `pt`
  @JsonValue('pt')
  portuguese('pt', 'Português'),

  /// `qu`
  @JsonValue('qu')
  quechua('qu', 'Runa Simi'),

  /// `rm`
  @JsonValue('rm')
  romansh('rm', 'rumantsch grischun'),

  /// `rn`
  @JsonValue('rn')
  kirundi('rn', 'Ikirundi'),

  /// `ro`
  @JsonValue('ro')
  romanian('ro', 'Română'),

  /// `ru`
  @JsonValue('ru')
  russian('ru', 'Русский'),

  /// `rw`
  @JsonValue('rw')
  kinyarwanda('rw', 'Ikinyarwanda'),

  /// `sa`
  @JsonValue('sa')
  sanskrit('sa', 'संस्कृतम्'),

  /// `sc`
  @JsonValue('sc')
  sardinian('sc', 'sardu'),

  /// `sd`
  @JsonValue('sd')
  sindhi('sd', 'सिन्धी'),

  /// `se`
  @JsonValue('se')
  northernSami('se', 'Davvisámegiella'),

  /// `sg`
  @JsonValue('sg')
  sango('sg', 'yângâ tî sängö'),

  /// `si`
  @JsonValue('si')
  sinhala('si', 'සිංහල'),

  /// `sk`
  @JsonValue('sk')
  slovak('sk', 'slovenčina'),

  /// `sl`
  @JsonValue('sl')
  slovenian('sl', 'slovenščina'),

  /// `sn`
  @JsonValue('sn')
  shona('sn', 'chiShona'),

  /// `so`
  @JsonValue('so')
  somali('so', 'Soomaaliga'),

  /// `sq`
  @JsonValue('sq')
  albanian('sq', 'Shqip'),

  /// `sr`
  @JsonValue('sr')
  serbian('sr', 'српски језик'),

  /// `ss`
  @JsonValue('ss')
  swati('ss', 'SiSwati'),

  /// `st`
  @JsonValue('st')
  southernSotho('st', 'Sesotho'),

  /// `su`
  @JsonValue('su')
  sundanese('su', 'Basa Sunda'),

  /// `sv`
  @JsonValue('sv')
  swedish('sv', 'Svenska'),

  /// `sw`
  @JsonValue('sw')
  swahili('sw', 'Kiswahili'),

  /// `ta`
  @JsonValue('ta')
  tamil('ta', 'தமிழ்'),

  /// `te`
  @JsonValue('te')
  telugu('te', 'తెలుగు'),

  /// `tg`
  @JsonValue('tg')
  tajik('tg', 'тоҷикӣ'),

  /// `th`
  @JsonValue('th')
  thai('th', 'ไทย'),

  /// `ti`
  @JsonValue('ti')
  tigrinya('ti', 'ትግርኛ'),

  /// `tk`
  @JsonValue('tk')
  turkmen('tk', 'Türkmen'),

  /// `tl`
  @JsonValue('tl')
  tagalog('tl', 'Wikang Tagalog'),

  /// `tn`
  @JsonValue('tn')
  tswana('tn', 'Setswana'),

  /// `to`
  @JsonValue('to')
  tonga('to', 'faka Tonga'),

  /// `tr`
  @JsonValue('tr')
  turkish('tr', 'Türkçe'),

  /// `ts`
  @JsonValue('ts')
  tsonga('ts', 'Xitsonga'),

  /// `tt`
  @JsonValue('tt')
  tatar('tt', 'татар теле'),

  /// `tw`
  @JsonValue('tw')
  twi('tw', 'Twi'),

  /// `ty`
  @JsonValue('ty')
  tahitian('ty', 'Reo Tahiti'),

  /// `ug`
  @JsonValue('ug')
  uyghur('ug', 'ئۇيغۇرچە‎'),

  /// `uk`
  @JsonValue('uk')
  ukrainian('uk', 'Українська'),

  /// `ur`
  @JsonValue('ur')
  urdu('ur', 'اردو'),

  /// `uz`
  @JsonValue('uz')
  uzbek('uz', 'Ўзбек'),

  /// `ve`
  @JsonValue('ve')
  venda('ve', 'Tshivenḓa'),

  /// `vi`
  @JsonValue('vi')
  vietnamese('vi', 'Tiếng Việt'),

  /// `vo`
  @JsonValue('vo')
  volapuk('vo', 'Volapük'),

  /// `wa`
  @JsonValue('wa')
  walloon('wa', 'walon'),

  /// `wo`
  @JsonValue('wo')
  wolof('wo', 'Wollof'),

  /// `xh`
  @JsonValue('xh')
  xhosa('xh', 'isiXhosa'),

  /// `yi`
  @JsonValue('yi')
  yiddish('yi', 'ייִדיש'),

  /// `yo`
  @JsonValue('yo')
  yoruba('yo', 'Yorùbá'),

  /// `za`
  @JsonValue('za')
  zhuang('za', 'Saɯ cueŋƅ'),

  /// `zh`
  @JsonValue('zh')
  chinese('zh', '中文'),

  /// `zu`
  @JsonValue('zu')
  zulu('zu', 'isiZulu');

  /// The language code
  final String code;

  /// The localized name of this language code.
  final String localizedName;

  const Language(this.code, this.localizedName);

  /// Returns the [Language] associated with [code].
  static Language valueOf(final String code) {
    final $code = code.toLowerCase();

    for (final language in values) {
      if (language.code == $code) {
        return language;
      }
    }

    throw UnsupportedError(
      'The code [$code] is not supported.',
    );
  }
}
