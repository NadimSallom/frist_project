import 'dart:ui';
import 'package:shared_preferences/shared_preferences.dart';

import 'language_manager.dart';

class AppPreferences  {

  final SharedPreferences sharedPreferences;

  AppPreferences(this.sharedPreferences);

  Future<String> getAppLanguage() async {
    String? language = sharedPreferences.getString('Prefs_key_Lang');
    if (language != null && language.isEmpty) {
      return language;
    } else {
      return LanguageType.ARABIC.getValue();
    }
  }

  Future<void> changeAppLanguage() async {
    String currentLang = await getAppLanguage();

    if (currentLang == LanguageType.ARABIC.getValue()) {
      sharedPreferences.setString(
          'Prefs_key_Lang', LanguageType.ARABIC.getValue());
    } else if (currentLang == LanguageType.ENGLISH.getValue()) {
      sharedPreferences.setString(
          'Prefs_key_Lang', LanguageType.ENGLISH.getValue());
    } else if (currentLang == LanguageType.TURKSH.getValue()) {
      sharedPreferences.setString(
          'Prefs_key_Lang', LanguageType.TURKSH.getValue());
    }
  }

  Future<Locale?> getLocal() async {
    String currentLang = await getAppLanguage();

    if (currentLang == LanguageType.ARABIC.getValue()) {
      return ARABIC_LOCAL;
    } else if (currentLang == LanguageType.ENGLISH.getValue()) {
      return ARABIC_LOCAL;
    } else if (currentLang == LanguageType.TURKSH.getValue()) {
      return ARABIC_LOCAL;
    }
    return null;
  }

}