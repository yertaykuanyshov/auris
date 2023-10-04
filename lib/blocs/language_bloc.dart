import 'package:auris/blocs/states/language_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../repositories/interface/language_repository.dart';

class LanguageBloc extends Cubit<ListenLanguageState> {
  LanguageBloc(this._languageRepository) : super(Loading());

  final LanguageRepository _languageRepository;

  void addLanguage(String langCode) async {
    await _languageRepository.add(langCode);
    getListeningLanguages();
  }

  void getListeningLanguages() async {
    final languageList = await _languageRepository.getListeningLanguages();

    emit(ListenLanguageLoaded(languageList));
  }
}
