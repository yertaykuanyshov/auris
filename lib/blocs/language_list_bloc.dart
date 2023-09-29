import 'package:auris/repositories/impl/language_list_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'language_list_state.dart';

class LanguageListBloc extends Cubit<LanguageListState> {
  LanguageListBloc(this._languageListRepository) : super(Loading());

  final LanguageListRepository _languageListRepository;
}
