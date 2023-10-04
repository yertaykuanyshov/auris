import 'package:auris/services/database.dart';

abstract class ListenTimeState {}

class Loading extends ListenTimeState {}

class Loaded extends ListenTimeState {
  Loaded(this.listenTimes);

  final Map<DateTime, int> listenTimes;
}
