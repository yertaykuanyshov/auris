import 'package:auris/blocs/language_bloc.dart';
import 'package:auris/blocs/states/language_state.dart';
import 'package:auris/repositories/interface/language_repository.dart';
import 'package:auris/services/database.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

class LanguageRepositoryMock implements LanguageRepository {
  @override
  Future<void> add(String langCode) async {
    await Future.delayed(const Duration(seconds: 3));
  }

  @override
  Future<int> delete(int languageId) async {
    await Future.delayed(const Duration(seconds: 3));

    return 10;
  }

  @override
  List<LanguageData> getAllLanguages() {
    return [];
  }

  @override
  Future<List<LanguageData>> getListeningLanguages() async {
    return [];
  }
}

void main() {
  group("test language bloc", () {
    late LanguageBloc languageBloc;
    late LanguageRepository languageRepository;

    setUp(() {
      languageRepository = LanguageRepositoryMock();
      languageBloc = LanguageBloc(languageRepository);
    });

    tearDown(() => languageBloc.close());

    blocTest<LanguageBloc, LanguageState>(
      "getListeningLanguages",
      build: () => languageBloc,
      act: (bloc) => bloc.getListeningLanguages(),
      expect: () => [
        Loading(),
        ListenLanguageLoaded(const []),
      ],
    );
  });
}
