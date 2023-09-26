import 'package:auris/models/language.dart';
import 'package:auris/repositories/impl/language_repository.dart';

class LanguageListRepositoryImpl extends LanguageListRepository {
  @override
  List<Language> getLanguages() {
    return [
      Language(name: "Italiano", langCode: 'it'),
      Language(name: "Esponol", langCode: 'es'),
      Language(name: "Қазақша", langCode: 'kk'),
      Language(name: "English", langCode: 'en'),
      Language(name: "China", langCode: 'jp'),
      Language(name: "Japan", langCode: 'kk'),
      Language(name: "Русский", langCode: 'ru'),
    ];
  }
}
