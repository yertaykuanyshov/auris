import 'package:auris/repositories/impl/language_list_repository.dart';
import 'package:auris/services/database.dart';

class LanguageListRepositoryImpl extends LanguageListRepository {
  LanguageListRepositoryImpl(this._appDatabase);

  final AppDatabase _appDatabase;

  @override
  List<LanguageData> getLanguages() {
    return [
      const LanguageData(id: 1, name: "español", langCode: "ES"),
      const LanguageData(id: 2, name: "English", langCode: "US"),
      const LanguageData(id: 3, name: "Arabic", langCode: "SA"),
      const LanguageData(id: 4, name: "French", langCode: "FR"),
    ];
  }

  @override
  Future<List<LanguageData>> getListeningLanguages() async {
    return await _appDatabase.select(_appDatabase.language).get();
  }
}
