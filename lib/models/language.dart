class Language {
  Language({
    required this.name,
    required this.langCode,
    this.listenTime = 0,
  });

  final String name;
  final String langCode;
  final int listenTime;
}
