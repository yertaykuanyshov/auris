import 'package:auris/blocs/language_state.dart';
import 'package:auris/repositories/impl/language_list_repository.dart';
import 'package:auris/repositories/impl/language_repository.dart';
import 'package:auris/services/database.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageBloc extends Cubit<ListenLanguageState> {
  LanguageBloc(
    this._languageRepository,
    this._languageListRepository,
  ) : super(Loading());

  final LanguageRepository _languageRepository;
  final LanguageListRepository _languageListRepository;

  void getListeningLanguages() {
    _languageListRepository.getListeningLanguages();
  }

  void addLanguage(LanguageData language) async {
    await _languageRepository.add(language);
  }
}
