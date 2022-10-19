import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

//languages code
const String LANGUAGE_CODE = 'languageCode';

const String ENGLISH = 'en';
const String ARABIC = 'ar';
const String TURKSH = 'tr';

Future<Locale> setLocale(String languageCode) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(LANGUAGE_CODE, languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String languageCode = prefs.getString(LANGUAGE_CODE) ?? 'ar';
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  Locale temp;
  switch(languageCode){
    case ENGLISH:
       temp = Locale(languageCode,'US');
      break;

    case ARABIC:
      temp = Locale(languageCode,'AE');
      break;
    case TURKSH:
      temp = Locale(languageCode,'TR');
      break;
    default:
      temp = Locale(languageCode,'AE');
  }
  return temp;
}



