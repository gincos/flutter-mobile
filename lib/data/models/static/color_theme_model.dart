import 'package:flutter/material.dart';
import 'package:invoiceninja_flutter/constants.dart';

import 'package:invoiceninja_flutter/utils/colors.dart';

class ColorTheme {
  ColorTheme(
      {this.colorPrimary,
      this.colorSecondary,
      this.colorInfo,
      this.colorSuccess,
      this.colorWarning,
      this.colorDanger,
      this.colorLightGray,
      this.colorDarkGray});

  Color colorPrimary;
  Color colorSecondary;
  Color colorInfo;
  Color colorSuccess;
  Color colorWarning;
  Color colorDanger;
  Color colorLightGray;
  Color colorDarkGray;
}

Map<String, ColorTheme> colorThemesMap = {
  kColorThemeLight: ColorTheme(
    colorPrimary: convertHexStringToColor('#1266F1'),
    colorSecondary: convertHexStringToColor('#B23CFD'),
    colorInfo: convertHexStringToColor('#39C0ED'),
    colorSuccess: convertHexStringToColor('#00B74A'),
    colorWarning: convertHexStringToColor('#FFA900'),
    colorDanger: convertHexStringToColor('#F93154'),
    colorLightGray: convertHexStringToColor('#6C757D'),
    colorDarkGray: convertHexStringToColor('#262626'),
  ),
  kColorThemeDark: ColorTheme(
    colorPrimary: convertHexStringToColor('#1266F1'),
    colorSecondary: convertHexStringToColor('#B23CFD'),
    colorInfo: convertHexStringToColor('#505f73'),
    colorSuccess: convertHexStringToColor('#407535'),
    colorWarning: convertHexStringToColor('#dd5600'),
    colorDanger: convertHexStringToColor('#8b3d40'),
    colorLightGray: convertHexStringToColor('#6C757D'),
    colorDarkGray: convertHexStringToColor('#262626'),
  ),
  'cerulean': ColorTheme(
    colorPrimary: convertHexStringToColor('#2fa4e7'),
    colorSecondary: convertHexStringToColor('#e9ecef'),
    colorInfo: convertHexStringToColor('#033c73'),
    colorSuccess: convertHexStringToColor('#73a839'),
    colorWarning: convertHexStringToColor('#dd5600'),
    colorDanger: convertHexStringToColor('#c71c22'),
    colorLightGray: convertHexStringToColor('#f8f9fa'),
    colorDarkGray: convertHexStringToColor('#343a40'),
  ),
  'cosmo': ColorTheme(
    colorPrimary: convertHexStringToColor('#2780e3'),
    colorSecondary: convertHexStringToColor('#373a3c'),
    colorInfo: convertHexStringToColor('#9954bb'),
    colorSuccess: convertHexStringToColor('#3fb618'),
    colorWarning: convertHexStringToColor('#ff7518'),
    colorDanger: convertHexStringToColor('#ff0039'),
    colorLightGray: convertHexStringToColor('#f8f9fa'),
    colorDarkGray: convertHexStringToColor('#373a3c'),
  ),
  'cyborg': ColorTheme(
    colorPrimary: convertHexStringToColor('#2a9fd6'),
    colorSecondary: convertHexStringToColor('#555555'),
    colorInfo: convertHexStringToColor('#9933cc'),
    colorSuccess: convertHexStringToColor('#77b300'),
    colorWarning: convertHexStringToColor('#ff8800'),
    colorDanger: convertHexStringToColor('#cc0000'),
    colorLightGray: convertHexStringToColor('#222222'),
    colorDarkGray: convertHexStringToColor('#adafae'),
  ),
  'darkly': ColorTheme(
    colorPrimary: convertHexStringToColor('#375a7f'),
    colorSecondary: convertHexStringToColor('#444444'),
    colorInfo: convertHexStringToColor('#3498db'),
    colorSuccess: convertHexStringToColor('#00bc8c'),
    colorWarning: convertHexStringToColor('#f39c12'),
    colorDanger: convertHexStringToColor('#e74c3c'),
    colorLightGray: convertHexStringToColor('#adb5bd'),
    colorDarkGray: convertHexStringToColor('#303030'),
  ),
  'flatly': ColorTheme(
    colorPrimary: convertHexStringToColor('#2c3e50'),
    colorSecondary: convertHexStringToColor('#95a5a6'),
    colorInfo: convertHexStringToColor('#3498db'),
    colorSuccess: convertHexStringToColor('#18bc9c'),
    colorWarning: convertHexStringToColor('#f39c12'),
    colorDanger: convertHexStringToColor('#e74c3c'),
    colorLightGray: convertHexStringToColor('#ecf0f1'),
    colorDarkGray: convertHexStringToColor('#7b8a8b'),
  ),
  'journal': ColorTheme(
    colorPrimary: convertHexStringToColor('#eb6864'),
    colorSecondary: convertHexStringToColor('#aaaaaa'),
    colorInfo: convertHexStringToColor('#336699'),
    colorSuccess: convertHexStringToColor('#22b24c'),
    colorWarning: convertHexStringToColor('#f5e625'),
    colorDanger: convertHexStringToColor('#f57a00'),
    colorLightGray: convertHexStringToColor('#f8f9fa'),
    colorDarkGray: convertHexStringToColor('#222222'),
  ),
  'litera': ColorTheme(
    colorPrimary: convertHexStringToColor('#4582ec'),
    colorSecondary: convertHexStringToColor('#adb5bd'),
    colorInfo: convertHexStringToColor('#17a2b8'),
    colorSuccess: convertHexStringToColor('#02b875'),
    colorWarning: convertHexStringToColor('#f0ad4e'),
    colorDanger: convertHexStringToColor('#d9534f'),
    colorLightGray: convertHexStringToColor('#f8f9fa'),
    colorDarkGray: convertHexStringToColor('#343a40'),
  ),
  'lumen': ColorTheme(
    colorPrimary: convertHexStringToColor('#158cba'),
    colorSecondary: convertHexStringToColor('#f0f0f0'),
    colorInfo: convertHexStringToColor('#75caeb'),
    colorSuccess: convertHexStringToColor('#28b62c'),
    colorWarning: convertHexStringToColor('#ff851b'),
    colorDanger: convertHexStringToColor('#ff4136'),
    colorLightGray: convertHexStringToColor('#f6f6f6'),
    colorDarkGray: convertHexStringToColor('#555555'),
  ),
  'lux': ColorTheme(
    colorPrimary: convertHexStringToColor('#1a1a1a'),
    colorSecondary: convertHexStringToColor('#ffffff'),
    colorInfo: convertHexStringToColor('#1f9bcf'),
    colorSuccess: convertHexStringToColor('#4bbf73'),
    colorWarning: convertHexStringToColor('#f0ad4e'),
    colorDanger: convertHexStringToColor('#d9534f'),
    colorLightGray: convertHexStringToColor('#ffffff'),
    colorDarkGray: convertHexStringToColor('#343a40'),
  ),
  'materia': ColorTheme(
    colorPrimary: convertHexStringToColor('#2196f3'),
    colorSecondary: convertHexStringToColor('#ffffff'),
    colorInfo: convertHexStringToColor('#9c27b0'),
    colorSuccess: convertHexStringToColor('#4caf50'),
    colorWarning: convertHexStringToColor('#ff9800'),
    colorDanger: convertHexStringToColor('#e51c23'),
    colorLightGray: convertHexStringToColor('#ffffff'),
    colorDarkGray: convertHexStringToColor('#222222'),
  ),
  'minty': ColorTheme(
    colorPrimary: convertHexStringToColor('#78c2ad'),
    colorSecondary: convertHexStringToColor('#f3969a'),
    colorInfo: convertHexStringToColor('#6cc3d5'),
    colorSuccess: convertHexStringToColor('#56cc9d'),
    colorWarning: convertHexStringToColor('#ffce67'),
    colorDanger: convertHexStringToColor('#ff7851'),
    colorLightGray: convertHexStringToColor('#f8f9fa'),
    colorDarkGray: convertHexStringToColor('#343a40'),
  ),
  'pulse': ColorTheme(
    colorPrimary: convertHexStringToColor('#593196'),
    colorSecondary: convertHexStringToColor('#a991d4'),
    colorInfo: convertHexStringToColor('#009cdc'),
    colorSuccess: convertHexStringToColor('#13b955'),
    colorWarning: convertHexStringToColor('#efa31d'),
    colorDanger: convertHexStringToColor('#fc3939'),
    colorLightGray: convertHexStringToColor('#f9f8fc'),
    colorDarkGray: convertHexStringToColor('#17141f'),
  ),
  'sandstone': ColorTheme(
    colorPrimary: convertHexStringToColor('#325d88'),
    colorSecondary: convertHexStringToColor('#8e8c84'),
    colorInfo: convertHexStringToColor('#29abe0'),
    colorSuccess: convertHexStringToColor('#93c54b'),
    colorWarning: convertHexStringToColor('#f47c3c'),
    colorDanger: convertHexStringToColor('#d9534f'),
    colorLightGray: convertHexStringToColor('#f8f5f0'),
    colorDarkGray: convertHexStringToColor('#3e3f3a'),
  ),
  'simplex': ColorTheme(
    colorPrimary: convertHexStringToColor('#d9230f'),
    colorSecondary: convertHexStringToColor('#ffffff'),
    colorInfo: convertHexStringToColor('#029acf'),
    colorSuccess: convertHexStringToColor('#469408'),
    colorWarning: convertHexStringToColor('#d9831f'),
    colorDanger: convertHexStringToColor('#9b479f'),
    colorLightGray: convertHexStringToColor('#ffffff'),
    colorDarkGray: convertHexStringToColor('#373a3c'),
  ),
  'sketchy': ColorTheme(
    colorPrimary: convertHexStringToColor('#333333'),
    colorSecondary: convertHexStringToColor('#555555'),
    colorInfo: convertHexStringToColor('#17a2b8'),
    colorSuccess: convertHexStringToColor('#28a745'),
    colorWarning: convertHexStringToColor('#ffc107'),
    colorDanger: convertHexStringToColor('#dc3545'),
    colorLightGray: convertHexStringToColor('#ffffff'),
    colorDarkGray: convertHexStringToColor('#555555'),
  ),
  'slate': ColorTheme(
    colorPrimary: convertHexStringToColor('#3a3f44'),
    colorSecondary: convertHexStringToColor('#7a8288'),
    colorInfo: convertHexStringToColor('#5bc0de'),
    colorSuccess: convertHexStringToColor('#62c462'),
    colorWarning: convertHexStringToColor('#f89406'),
    colorDanger: convertHexStringToColor('#ee5f5b'),
    colorLightGray: convertHexStringToColor('#e9ecef'),
    colorDarkGray: convertHexStringToColor('#272b30'),
  ),
  'solar': ColorTheme(
    colorPrimary: convertHexStringToColor('#b58900'),
    colorSecondary: convertHexStringToColor('#839496'),
    colorInfo: convertHexStringToColor('#268bd2'),
    colorSuccess: convertHexStringToColor('#2aa198'),
    colorWarning: convertHexStringToColor('#cb4b16'),
    colorDanger: convertHexStringToColor('#d33682'),
    colorLightGray: convertHexStringToColor('#fdf6e3'),
    colorDarkGray: convertHexStringToColor('#073642'),
  ),
  'spacelab': ColorTheme(
    colorPrimary: convertHexStringToColor('#446e9b'),
    colorSecondary: convertHexStringToColor('#999999'),
    colorInfo: convertHexStringToColor('#3399f3'),
    colorSuccess: convertHexStringToColor('#3cb521'),
    colorWarning: convertHexStringToColor('#d47500'),
    colorDanger: convertHexStringToColor('#cd0200'),
    colorLightGray: convertHexStringToColor('#eeeeee'),
    colorDarkGray: convertHexStringToColor('#333333'),
  ),
  'superhero': ColorTheme(
    colorPrimary: convertHexStringToColor('#df691a'),
    colorSecondary: convertHexStringToColor('#4e5d6c'),
    colorInfo: convertHexStringToColor('#5bc0de'),
    colorSuccess: convertHexStringToColor('#5cb85c'),
    colorWarning: convertHexStringToColor('#f0ad4e'),
    colorDanger: convertHexStringToColor('#d9534f'),
    colorLightGray: convertHexStringToColor('#2b3e50'),
    colorDarkGray: convertHexStringToColor('#4e5d6c'),
  ),
  'united': ColorTheme(
    colorPrimary: convertHexStringToColor('#e95420'),
    colorSecondary: convertHexStringToColor('#aea79f'),
    colorInfo: convertHexStringToColor('#17a2b8'),
    colorSuccess: convertHexStringToColor('#38b44a'),
    colorWarning: convertHexStringToColor('#efb73e'),
    colorDanger: convertHexStringToColor('#df382c'),
    colorLightGray: convertHexStringToColor('#e9ecef'),
    colorDarkGray: convertHexStringToColor('#772953'),
  ),
  'yeti': ColorTheme(
    colorPrimary: convertHexStringToColor('#008cba'),
    colorSecondary: convertHexStringToColor('#eeeeee'),
    colorInfo: convertHexStringToColor('#5bc0de'),
    colorSuccess: convertHexStringToColor('#43ac6a'),
    colorWarning: convertHexStringToColor('#e99002'),
    colorDanger: convertHexStringToColor('#f04124'),
    colorLightGray: convertHexStringToColor('#eeeeee'),
    colorDarkGray: convertHexStringToColor('#222222'),
  ),
};