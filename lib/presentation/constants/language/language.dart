class Language {
  final int id;
  final String flag;

  final String languageCode;

  Language(this.id, this.flag, this.languageCode);

  static List<Language> languageList() {
    return <Language>[
      Language(1, 'العربيه' ,'ar'),
      Language(2, 'English' ,'en'),
      Language(3, 'Turkish' ,'tr'),
    ];
  }
}