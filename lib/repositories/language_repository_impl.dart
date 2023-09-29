import 'package:auris/repositories/impl/language_repository.dart';

import '../services/database.dart';

class LanguageRepositoryImpl extends LanguageRepository {
  final AppDatabase _appDatabase;

  LanguageRepositoryImpl(this._appDatabase);

  @override
  Future<void> add(String langCode) async {
    await _appDatabase.into(_appDatabase.language).insert(
          LanguageCompanion.insert(langCode: langCode),
        );
  }

  @override
  Future<void> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
