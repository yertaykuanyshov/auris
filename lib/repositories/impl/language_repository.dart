import 'package:auris/services/database.dart';

abstract class LanguageRepository {
  Future<void> add(LanguageData language);

  Future<void> delete(int id);
}
