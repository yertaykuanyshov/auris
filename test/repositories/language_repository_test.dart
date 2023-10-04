import 'package:auris/main.dart';
import 'package:auris/repositories/interface/language_repository.dart';
import 'package:auris/repositories/language_repository_impl.dart';
import 'package:auris/services/database.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late AppDatabase appDatabase;
  late LanguageRepository languageRepository;

  setUp(() {
    appDatabase = AppDatabase.forTesting(NativeDatabase.memory());
    languageRepository = LanguageRepositoryImpl(appDatabase);
  });

  tearDown(() async => await appDatabase.close());

  test("test add new listening language", () async {
    await languageRepository.add("ES");
    await languageRepository.add("FR");
    await languageRepository.add("EN");
    await languageRepository.add("PN");

    final addLanguagesCount = await languageRepository.getListeningLanguages();

    expect(4, addLanguagesCount.length);
  });

  test("test delete add languages", () async {
    await languageRepository.add("ES");
    await languageRepository.add("FR");

    final languagesList = await languageRepository.getListeningLanguages();

    expect(2, languagesList.length);

    final result = await languageRepository.delete(languagesList.first.id);

    final languagesListAfterDelete = await languageRepository.getListeningLanguages();

    expect(1, languagesListAfterDelete.length);
  });
}
