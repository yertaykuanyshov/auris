import 'package:auris/models/language.dart';
import 'package:auris/repositories/impl/language_list_repository.dart';

class LanguageListRepositoryImpl extends LanguageListRepository {
  @override
  List<Language> getLanguages() {
    return [
      Language(name: "italiana", langCode: 'it'),
      Language(name: "español", langCode: 'es'),
      Language(name: "English", langCode: 'en'),
      Language(name: "China", langCode: 'ch'),
      Language(name: "Japan", langCode: 'jp'),
      Language(name: "Русский", langCode: 'ru'),
    ];
  }
}
