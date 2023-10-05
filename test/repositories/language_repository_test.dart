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

  test("test get all languages", () {
    final languages = languageRepository.getAllLanguages();

    expect(languages, isA<List<LanguageData>>());
  });

  test("test add new listening language", () async {
    await languageRepository.add("ES");
    await languageRepository.add("FR");
    await languageRepository.add("EN");
    await languageRepository.add("IT");
    await languageRepository.add("AB");

    final addLanguagesCount = await languageRepository.getListeningLanguages();

    expect(5, addLanguagesCount.length);
  });

  test("test delete added languages", () async {
    await languageRepository.add("ES");
    await languageRepository.add("FR");

    final languagesList = await languageRepository.getListeningLanguages();

    await languageRepository.delete(languagesList.first.id);

    final languagesListAfterDelete =
        await languageRepository.getListeningLanguages();

    expect(2, languagesList.length);

    expect(1, languagesListAfterDelete.length);
  });
}
