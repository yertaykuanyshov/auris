import 'package:auris/main.dart';
import 'package:auris/repositories/interface/language_repository.dart';
import 'package:auris/repositories/interface/listen_time_repository.dart';
import 'package:auris/repositories/language_repository_impl.dart';
import 'package:auris/repositories/listen_time_repository_impl.dart';
import 'package:auris/services/database.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late AppDatabase appDatabase;
  late ListenTimeRepository listenTimeRepository;
  late LanguageRepository languageRepository;

  setUp(() {
    appDatabase = AppDatabase.forTesting(NativeDatabase.memory());
    listenTimeRepository = ListenTimeRepositoryImpl(appDatabase);
    languageRepository = LanguageRepositoryImpl(appDatabase);
  });

  tearDown(() => appDatabase.close());

  test("test add listen time", () async {
    const langId = 1;

    await listenTimeRepository.add(
      secondCount: 1,
      languageId: langId,
      date: DateTime(2022, 1, 10),
    );

    await listenTimeRepository.add(
      secondCount: 2,
      languageId: langId,
      date: DateTime(2022, 1, 11),
    );

    await listenTimeRepository.add(
      secondCount: 10,
      languageId: langId,
      date: DateTime(2022, 1, 12),
    );

    await listenTimeRepository.add(
      secondCount: 10,
      languageId: langId,
      date: DateTime(2022, 1, 12),
    );

    final listenTimes = await listenTimeRepository.getListenTimes(langId);

    expect(listenTimes.length, 3);
    expect(listenTimes.entries.last.value, 20);
  });
}
