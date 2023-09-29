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

  void getListeningLanguages() async {
    final languageList = await _languageListRepository.getListeningLanguages();

    emit(ListenLanguageLoaded(languageList));
  }

  void addLanguage(String langCode) async {
    await _languageRepository.add(langCode);
  }
}
