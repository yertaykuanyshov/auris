import 'package:auris/services/database.dart';

abstract class LanguageRepository {
  List<LanguageData> getAllLanguages();

  Future<List<LanguageData>> getListeningLanguages();

  Future<void> add(String langCode);

  Future<int> delete(int languageId);
}
