import 'package:auris/models/language.dart';

abstract class LanguageRepository {
  Future<void> add(Language language);

  Future<void> delete(int id);
}
