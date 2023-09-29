import 'package:auris/services/database.dart';

abstract class LanguageListRepository {
  List<LanguageData> getLanguages();

  Future<List<LanguageData>> getListeningLanguages();
}
