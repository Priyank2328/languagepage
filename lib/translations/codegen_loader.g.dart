// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> fr = {
    "hi_text": "Salut, je suis Yazeed!",
    "this_should_be_translated": "Cela devrait être traduit en arabe!"
  };
  static const Map<String, dynamic> gu = {
    "hi_text": "હાય, હું યઝીદ છું!",
    "this_should_be_translated": "આનો અરબીમાં અનુવાદ થવો જોઈએ!"
  };
  static const Map<String, dynamic> ru = {
    "hi_text": "Привет, я Язид!",
    "this_should_be_translated": "Это надо перевести на арабский!"
  };
  static const Map<String, dynamic> en = {
    "hi_text": "Hi, I am Yazeed!",
    "this_should_be_translated": "This should be translated to Arabic!"
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {
    "fr": fr,
    "en": en,
    "gu" : gu,
    "ru" : ru,
  };
}
