import 'package:auris/services/database.dart';
import 'package:drift/drift.dart';

import 'interface/language_repository.dart';

class LanguageRepositoryImpl extends LanguageRepository {
  LanguageRepositoryImpl(this._appDatabase);

  final AppDatabase _appDatabase;

  @override
  List<LanguageData> getAllLanguages() {
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

  @override
  Future<void> add(String langCode) async {
    await _appDatabase
        .into(_appDatabase.language)
        .insert(LanguageCompanion.insert(langCode: langCode));
  }

  @override
  Future<void> delete(int languageId) async {
    _appDatabase
        .delete(_appDatabase.language)
        .where((tbl) => tbl.id.isValue(languageId));
  }

  String getLangName(String langCode) {
    return getAllLanguages()
            .firstWhere((lang) => lang.langCode == langCode)
            .name ??
        "";
  }
}
