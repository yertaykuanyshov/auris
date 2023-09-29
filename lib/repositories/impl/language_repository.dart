import 'package:auris/services/database.dart';

abstract class LanguageRepository {
  Future<void> add(String langCode);

  Future<void> delete(int id);
}
