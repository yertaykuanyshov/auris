import 'package:auris/services/database.dart';

abstract class ListenTimeState {}

class Loading extends ListenTimeState {}

class Loaded extends ListenTimeState {
  Loaded(this.listenTimes);

  final List<ListenHistoryData> listenTimes;
}
