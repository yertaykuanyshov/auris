import 'package:equatable/equatable.dart';

import '../../services/database.dart';

abstract class LanguageState extends Equatable {}

class Loading extends LanguageState {
  @override
  List<Object?> get props => [];
}

class ListenLanguageLoaded extends LanguageState {
  ListenLanguageLoaded(this.languages);

  final List<LanguageData> languages;

  @override
  List<Object?> get props => [languages];
}
