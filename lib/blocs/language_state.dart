import '../services/database.dart';

abstract class ListenLanguageState {}

class LanguageAdded extends ListenLanguageState {}

class Loading extends ListenLanguageState {}

class ListenLanguageLoaded extends ListenLanguageState {
  ListenLanguageLoaded(this.languages);

  final List<LanguageData> languages;
}
