import 'package:auris/repositories/impl/language_list_repository.dart';
import 'package:auris/services/database.dart';
import 'package:drift/drift.dart';

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
    final savedLanguages =
        await _appDatabase.select(_appDatabase.language).get();

    return savedLanguages
        .map((e) => e.copyWith(name: Value(getLangName(e.langCode))))
        .toList()
      ..sort((a, b) => b.id.compareTo(a.id));
  }

  String getLangName(String langCode) {
    return getLanguages()
            .firstWhere((lang) => lang.langCode == langCode)
            .name ??
        "";
  }
}
