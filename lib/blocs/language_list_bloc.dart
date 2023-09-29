import 'package:auris/repositories/impl/language_list_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../services/database.dart';

abstract class LanguageListState {}

class LanguageListLoaded extends LanguageListState {
  LanguageListLoaded(this.languages);

  final List<LanguageData> languages;
}

class Loading extends LanguageListState {}

class LanguageListBloc extends Cubit<LanguageListState> {
  LanguageListBloc(this._languageListRepository) : super(Loading());

  final LanguageListRepository _languageListRepository;
}
