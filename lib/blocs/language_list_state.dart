import '../services/database.dart';

abstract class LanguageListState {}

class LanguageListLoaded extends LanguageListState {
  LanguageListLoaded(this.languages);

  final List<LanguageData> languages;
}

class Loading extends LanguageListState {}
