import 'dart:ui';

enum LanguageType { ARABIC,ENGLISH,TURKSH}
const String ARABIC ='ar';
  const String ENGLISH ='en';
  const String TURKSH ='tr';

  const String ASSET_PATH_LOCALSATIONS ='assets/lang';

  const Locale ARABIC_LOCAL =Locale('ar','SA');
  const Locale ENGLISH_LOCAL =Locale('en','US');
  const Locale TURKSH_LOCAL =Locale('tr','TR');


  extension  LanguageTypeExtension on LanguageType{
    String getValue(){
      switch(this){
        case LanguageType.ARABIC:
          return ARABIC;
        case LanguageType.ENGLISH:
          return ENGLISH;
        case LanguageType.TURKSH:
          return TURKSH;
      }
    }
}

