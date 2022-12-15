// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

enum Country {
  /// `AF`
  @JsonValue('AF')
  afghanistan('AF'),

  /// `AX`
  @JsonValue('AX')
  alandIslands('AX'),

  /// `AL`
  @JsonValue('AL')
  albania('AL'),

  /// `DZ`
  @JsonValue('DZ')
  algeria('DZ'),

  /// `AS`
  @JsonValue('AS')
  americanSamoa('AS'),

  /// `AD`
  @JsonValue('AD')
  andorra('AD'),

  /// `AO`
  @JsonValue('AO')
  angola('AO'),

  /// `AI`
  @JsonValue('AI')
  anguilla('AI'),

  /// `AQ`
  @JsonValue('AQ')
  antarctica('AQ'),

  /// `AG`
  @JsonValue('AG')
  antiguaAndBarbuda('AG'),

  /// `AR`
  @JsonValue('AR')
  argentina('AR'),

  /// `AM`
  @JsonValue('AM')
  armenia('AM'),

  /// `AW`
  @JsonValue('AW')
  aruba('AW'),

  /// `AU`
  @JsonValue('AU')
  australia('AU'),

  /// `AT`
  @JsonValue('AT')
  austria('AT'),

  /// `AZ`
  @JsonValue('AZ')
  azerbaijan('AZ'),

  /// `BS`
  @JsonValue('BS')
  bahamas('BS'),

  /// `BH`
  @JsonValue('BH')
  bahrain('BH'),

  /// `BD`
  @JsonValue('BD')
  bangladesh('BD'),

  /// `BB`
  @JsonValue('BB')
  barbados('BB'),

  /// `BY`
  @JsonValue('BY')
  belarus('BY'),

  /// `BE`
  @JsonValue('BE')
  belgium('BE'),

  /// `BZ`
  @JsonValue('BZ')
  belize('BZ'),

  /// `BJ`
  @JsonValue('BJ')
  benin('BJ'),

  /// `BM`
  @JsonValue('BM')
  bermuda('BM'),

  /// `BT`
  @JsonValue('BT')
  bhutan('BT'),

  /// `BO`
  @JsonValue('BO')
  bolivia('BO'),

  /// `BQ`
  @JsonValue('BQ')
  bonaire('BQ'),

  /// `BA`
  @JsonValue('BA')
  bosniaAndHerzegovina('BA'),

  /// `BW`
  @JsonValue('BW')
  botswana('BW'),

  /// `BV`
  @JsonValue('BV')
  bouvetIsland('BV'),

  /// `BR`
  @JsonValue('BR')
  brazil('BR'),

  /// `IO`
  @JsonValue('IO')
  britishIndianOceanTerritory('IO'),

  /// `BN`
  @JsonValue('BN')
  bruneiDarussalam('BN'),

  /// `BG`
  @JsonValue('BG')
  bulgaria('BG'),

  /// `BF`
  @JsonValue('BF')
  burkinaFaso('BF'),

  /// `BI`
  @JsonValue('BI')
  burundi('BI'),

  /// `KH`
  @JsonValue('KH')
  cambodia('KH'),

  /// `CM`
  @JsonValue('CM')
  cameroon('CM'),

  /// `CA`
  @JsonValue('CA')
  canada('CA'),

  /// `CV`
  @JsonValue('CV')
  capeVerde('CV'),

  /// `KY`
  @JsonValue('KY')
  caymanIslands('KY'),

  /// `CF`
  @JsonValue('CF')
  centralAfricanRepublic('CF'),

  /// `TD`
  @JsonValue('TD')
  chad('TD'),

  /// `CL`
  @JsonValue('CL')
  chile('CL'),

  /// `CN`
  @JsonValue('CN')
  china('CN'),

  /// `CX`
  @JsonValue('CX')
  christmasIsland('CX'),

  /// `CC`
  @JsonValue('CC')
  cocosIslands('CC'),

  /// `CO`
  @JsonValue('CO')
  colombia('CO'),

  /// `KM`
  @JsonValue('KM')
  comoros('KM'),

  /// `CD`
  @JsonValue('CD')
  congo('CD'),

  /// `CK`
  @JsonValue('CK')
  cookIslands('CK'),

  /// `CR`
  @JsonValue('CR')
  costaRica('CR'),

  /// `CI`
  @JsonValue('CI')
  ivoryCoast('CI'),

  /// `HR`
  @JsonValue('HR')
  croatia('HR'),

  /// `CU`
  @JsonValue('CU')
  cuba('CU'),

  /// `CW`
  @JsonValue('CW')
  curacao('CW'),

  /// `CY`
  @JsonValue('CY')
  cyprus('CY'),

  /// `CZ`
  @JsonValue('CZ')
  czechRepublic('CZ'),

  /// `DK`
  @JsonValue('DK')
  denmark('DK'),

  /// `DJ`
  @JsonValue('DJ')
  djibouti('DJ'),

  /// `DM`
  @JsonValue('DM')
  dominica('DM'),

  /// `DO`
  @JsonValue('DO')
  dominicanRepublic('DO'),

  /// `EC`
  @JsonValue('EC')
  ecuador('EC'),

  /// `EG`
  @JsonValue('EG')
  egypt('EG'),

  /// `SV`
  @JsonValue('SV')
  elSalvador('SV'),

  /// `GQ`
  @JsonValue('GQ')
  equatorialGuinea('GQ'),

  /// `ER`
  @JsonValue('ER')
  eritrea('ER'),

  /// `EE`
  @JsonValue('EE')
  estonia('EE'),

  /// `ET`
  @JsonValue('ET')
  ethiopia('ET'),

  /// `FK`
  @JsonValue('FK')
  falklandIslands('FK'),

  /// `FO`
  @JsonValue('FO')
  faroeIslands('FO'),

  /// `FJ`
  @JsonValue('FJ')
  fiji('FJ'),

  /// `FI`
  @JsonValue('FI')
  finland('FI'),

  /// `FR`
  @JsonValue('FR')
  france('FR'),

  /// `GF`
  @JsonValue('GF')
  frenchGuiana('GF'),

  /// `PF`
  @JsonValue('PF')
  frenchPolynesia('PF'),

  /// `TF`
  @JsonValue('TF')
  frenchSouthernTerritories('TF'),

  /// `GA`
  @JsonValue('GA')
  gabon('GA'),

  /// `GM`
  @JsonValue('GM')
  gambia('GM'),

  /// `GE`
  @JsonValue('GE')
  georgia('GE'),

  /// `DE`
  @JsonValue('DE')
  germany('DE'),

  /// `GH`
  @JsonValue('GH')
  ghana('GH'),

  /// `GI`
  @JsonValue('GI')
  gibraltar('GI'),

  /// `GR`
  @JsonValue('GR')
  greece('GR'),

  /// `GL`
  @JsonValue('GL')
  greenland('GL'),

  /// `GD`
  @JsonValue('GD')
  grenada('GD'),

  /// `GP`
  @JsonValue('GP')
  guadeloupe('GP'),

  /// `GU`
  @JsonValue('GU')
  guam('GU'),

  /// `GT`
  @JsonValue('GT')
  guatemala('GT'),

  /// `GG`
  @JsonValue('GG')
  guernsey('GG'),

  /// `GN`
  @JsonValue('GN')
  guinea('GN'),

  /// `GW`
  @JsonValue('GW')
  guineaBissau('GW'),

  /// `GY`
  @JsonValue('GY')
  guyana('GY'),

  /// `HT`
  @JsonValue('HT')
  haiti('HT'),

  /// `HM`
  @JsonValue('HM')
  heardIslandAndMcDonaldIslands('HM'),

  /// `VA`
  @JsonValue('VA')
  holySee('VA'),

  /// `HN`
  @JsonValue('HN')
  honduras('HN'),

  /// `HK`
  @JsonValue('HK')
  hongKong('HK'),

  /// `HU`
  @JsonValue('HU')
  hungary('HU'),

  /// `IS`
  @JsonValue('IS')
  iceland('IS'),

  /// `IN`
  @JsonValue('IN')
  india('IN'),

  /// `ID`
  @JsonValue('ID')
  indonesia('ID'),

  /// `IR`
  @JsonValue('IR')
  iran('IR'),

  /// `IQ`
  @JsonValue('IQ')
  iraq('IQ'),

  /// `IE`
  @JsonValue('IE')
  ireland('IE'),

  /// `IM`
  @JsonValue('IM')
  isleOfMan('IM'),

  /// `IL`
  @JsonValue('IL')
  israel('IL'),

  /// `IT`
  @JsonValue('IT')
  italy('IT'),

  /// `JM`
  @JsonValue('JM')
  jamaica('JM'),

  /// `JP`
  @JsonValue('JP')
  japan('JP'),

  /// `JE`
  @JsonValue('JE')
  jersey('JE'),

  /// `JO`
  @JsonValue('JO')
  jordan('JO'),

  /// `KZ`
  @JsonValue('KZ')
  kazakhstan('KZ'),

  /// `KE`
  @JsonValue('KE')
  kenya('KE'),

  /// `KI`
  @JsonValue('KI')
  kiribati('KI'),

  /// `KR`
  @JsonValue('KP')
  northKorea('KP'),

  /// `KR`
  @JsonValue('KR')
  korea('KR'),

  /// `KW`
  @JsonValue('KW')
  kuwait('KW'),

  /// `KG`
  @JsonValue('KG')
  kyrgyzstan('KG'),

  /// `LA`
  @JsonValue('LA')
  laoPeoplesDemocraticRepublic('LA'),

  /// `LV`
  @JsonValue('LV')
  latvia('LV'),

  /// `LB`
  @JsonValue('LB')
  lebanon('LB'),

  /// `LS`
  @JsonValue('LS')
  lesotho('LS'),

  /// `LR`
  @JsonValue('LR')
  liberia('LR'),

  /// `LY`
  @JsonValue('LY')
  libya('LY'),

  /// `LI`
  @JsonValue('LI')
  liechtenstein('LI'),

  /// `LT`
  @JsonValue('LT')
  lithuania('LT'),

  /// `LU`
  @JsonValue('LU')
  luxembourg('LU'),

  /// `MO`
  @JsonValue('MO')
  macao('MO'),

  /// `MK`
  @JsonValue('MK')
  macedonia('MK'),

  /// `MG`
  @JsonValue('MG')
  madagascar('MG'),

  /// `MW`
  @JsonValue('MW')
  malawi('MW'),

  /// `MY`
  @JsonValue('MY')
  malaysia('MY'),

  /// `MV`
  @JsonValue('MV')
  maldives('MV'),

  /// `ML`
  @JsonValue('ML')
  mali('ML'),

  /// `MT`
  @JsonValue('MT')
  malta('MT'),

  /// `MH`
  @JsonValue('MH')
  marshallIslands('MH'),

  /// `MQ`
  @JsonValue('MQ')
  martinique('MQ'),

  /// `MR`
  @JsonValue('MR')
  mauritania('MR'),

  /// `MU`
  @JsonValue('MU')
  mauritius('MU'),

  /// `YT`
  @JsonValue('YT')
  mayotte('YT'),

  /// `MX`
  @JsonValue('MX')
  mexico('MX'),

  /// `FM`
  @JsonValue('FM')
  micronesia('FM'),

  /// `MD`
  @JsonValue('MD')
  moldova('MD'),

  /// `MC`
  @JsonValue('MC')
  monaco('MC'),

  /// `MN`
  @JsonValue('MN')
  mongolia('MN'),

  /// `ME`
  @JsonValue('ME')
  montenegro('ME'),

  /// `MS`
  @JsonValue('MS')
  montserrat('MS'),

  /// `MA`
  @JsonValue('MA')
  morocco('MA'),

  /// `MZ`
  @JsonValue('MZ')
  mozambique('MZ'),

  /// `MM`
  @JsonValue('MM')
  myanmar('MM'),

  /// `NA`
  @JsonValue('NA')
  namibia('NA'),

  /// `NR`
  @JsonValue('NR')
  nauru('NR'),

  /// `NP`
  @JsonValue('NP')
  nepal('NP'),

  /// `NL`
  @JsonValue('NL')
  netherlands('NL'),

  /// `NC`
  @JsonValue('NC')
  newCaledonia('NC'),

  /// `NZ`
  @JsonValue('NZ')
  newZealand('NZ'),

  /// `NI`
  @JsonValue('NI')
  nicaragua('NI'),

  /// `NE`
  @JsonValue('NE')
  niger('NE'),

  /// `NG`
  @JsonValue('NG')
  nigeria('NG'),

  /// `NU`
  @JsonValue('NU')
  niue('NU'),

  /// `NF`
  @JsonValue('NF')
  norfolkIsland('NF'),

  /// `MP`
  @JsonValue('MP')
  northernMarianaIslands('MP'),

  /// `NO`
  @JsonValue('NO')
  norway('NO'),

  /// `OM`
  @JsonValue('OM')
  oman('OM'),

  /// `PK`
  @JsonValue('PK')
  pakistan('PK'),

  /// `PW`
  @JsonValue('PW')
  palau('PW'),

  /// `PS`
  @JsonValue('PS')
  palestine('PS'),

  /// `PA`
  @JsonValue('PA')
  panama('PA'),

  /// `PG`
  @JsonValue('PG')
  papuaNewGuinea('PG'),

  /// `PY`
  @JsonValue('PY')
  paraguay('PY'),

  /// `PE`
  @JsonValue('PE')
  peru('PE'),

  /// `PH`
  @JsonValue('PH')
  philippines('PH'),

  /// `PN`
  @JsonValue('PN')
  pitcairn('PN'),

  /// `PL`
  @JsonValue('PL')
  poland('PL'),

  /// `PT`
  @JsonValue('PT')
  portugal('PT'),

  /// `PR`
  @JsonValue('PR')
  puertoRico('PR'),

  /// `QA`
  @JsonValue('QA')
  qatar('QA'),

  /// `RE`
  @JsonValue('RE')
  reunion('RE'),

  /// `RO`
  @JsonValue('RO')
  romania('RO'),

  /// `RU`
  @JsonValue('RU')
  russianFederation('RU'),

  /// `RW`
  @JsonValue('RW')
  rwanda('RW'),

  /// `BL`
  @JsonValue('BL')
  saintBarthelemy('BL'),

  /// `SH`
  @JsonValue('SH')
  saintHelena('SH'),

  /// `KN`
  @JsonValue('KN')
  saintKittsAndNevis('KN'),

  /// `LC`
  @JsonValue('LC')
  saintLucia('LC'),

  /// `MF`
  @JsonValue('MF')
  saintMartin('MF'),

  /// `PM`
  @JsonValue('PM')
  saintPierreAndMiquelon('PM'),

  /// `VC`
  @JsonValue('VC')
  saintVincentAndTheGrenadines('VC'),

  /// `WS`
  @JsonValue('WS')
  samoa('WS'),

  /// `SM`
  @JsonValue('SM')
  sanMarino('SM'),

  /// `ST`
  @JsonValue('ST')
  saoTomeAndPrincipe('ST'),

  /// `SA`
  @JsonValue('SA')
  saudiArabia('SA'),

  /// `SN`
  @JsonValue('SN')
  senegal('SN'),

  /// `RS`
  @JsonValue('RS')
  serbia('RS'),

  /// `SC`
  @JsonValue('SC')
  seychelles('SC'),

  /// `SL`
  @JsonValue('SL')
  sierraLeone('SL'),

  /// `SG`
  @JsonValue('SG')
  singapore('SG'),

  /// `SX`
  @JsonValue('SX')
  sintMaarten('SX'),

  /// `SK`
  @JsonValue('SK')
  slovakia('SK'),

  /// `SI`
  @JsonValue('SI')
  slovenia('SI'),

  /// `SB`
  @JsonValue('SB')
  solomonIslands('SB'),

  /// `SO`
  @JsonValue('SO')
  somalia('SO'),

  /// `ZA`
  @JsonValue('ZA')
  southAfrica('ZA'),

  /// `GS`
  @JsonValue('GS')
  southGeorgiaAndTheSouthSandwichIslands('GS'),

  /// `SS`
  @JsonValue('SS')
  southSudan('SS'),

  /// `ES`
  @JsonValue('ES')
  spain('ES'),

  /// `LK`
  @JsonValue('LK')
  sriLanka('LK'),

  /// `SD`
  @JsonValue('SD')
  sudan('SD'),

  /// `SR`
  @JsonValue('SR')
  suriname('SR'),

  /// `SJ`
  @JsonValue('SJ')
  svalbardAndJanMayen('SJ'),

  /// `SZ`
  @JsonValue('SZ')
  swaziland('SZ'),

  /// `SE`
  @JsonValue('SE')
  sweden('SE'),

  /// `CH`
  @JsonValue('CH')
  switzerland('CH'),

  /// `SY`
  @JsonValue('SY')
  syrianArabRepublic('SY'),

  /// `TW`
  @JsonValue('TW')
  taiwan('TW'),

  /// `TJ`
  @JsonValue('TJ')
  tajikistan('TJ'),

  /// `TZ`
  @JsonValue('TZ')
  tanzania('TZ'),

  /// `TH`
  @JsonValue('TH')
  thailand('TH'),

  /// `TL`
  @JsonValue('TL')
  timorLeste('TL'),

  /// `TG`
  @JsonValue('TG')
  togo('TG'),

  /// `TK`
  @JsonValue('TK')
  tokelau('TK'),

  /// `TO`
  @JsonValue('TO')
  tonga('TO'),

  /// `TT`
  @JsonValue('TT')
  trinidadAndTobago('TT'),

  /// `TN`
  @JsonValue('TN')
  tunisia('TN'),

  /// `TR`
  @JsonValue('TR')
  turkey('TR'),

  /// `TM`
  @JsonValue('TM')
  turkmenistan('TM'),

  /// `TC`
  @JsonValue('TC')
  turksAndCaicosIslands('TC'),

  /// `TV`
  @JsonValue('TV')
  tuvalu('TV'),

  /// `UG`
  @JsonValue('UG')
  uganda('UG'),

  /// `UA`
  @JsonValue('UA')
  ukraine('UA'),

  /// `AE`
  @JsonValue('AE')
  unitedArabEmirates('AE'),

  /// `GB`
  @JsonValue('GB')
  unitedKingdom('GB'),

  /// `US`
  @JsonValue('US')
  unitedStates('US'),

  /// `UM`
  @JsonValue('UM')
  unitedStatesMinorOutlyingIslands('UM'),

  /// `UY`
  @JsonValue('UY')
  uruguay('UY'),

  /// `UZ`
  @JsonValue('UZ')
  uzbekistan('UZ'),

  /// `VU`
  @JsonValue('VU')
  vanuatu('VU'),

  /// `VE`
  @JsonValue('VE')
  venezuela('VE'),

  /// `VN`
  @JsonValue('VN')
  vietnam('VN'),

  /// `VG`
  @JsonValue('VG')
  virginIslandsBritish('VG'),

  /// `VI`
  @JsonValue('VI')
  virginIslandsUS('VI'),

  /// `WF`
  @JsonValue('WF')
  wallisAndFutuna('WF'),

  /// `EH`
  @JsonValue('EH')
  westernSahara('EH'),

  /// `YE`
  @JsonValue('YE')
  yemen('YE'),

  /// `ZM`
  @JsonValue('ZM')
  zambia('ZM'),

  /// `ZW`
  @JsonValue('ZW')
  zimbabwe('ZW');

  /// The code
  final String code;

  const Country(this.code);

  /// Returns the [Country] associated with [code].
  static Country valueOf(final String code) {
    final $code = code.toUpperCase();

    for (final country in values) {
      if (country.code == $code) {
        return country;
      }
    }

    throw UnsupportedError(
      'The code [$code] is not supported.',
    );
  }
}
