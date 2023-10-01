import 'package:auris/services/database.dart';

abstract class ListenTimeRepository {
  Future<void> add(ListenHistoryData listenTime);

  Future<List<ListenHistoryData>> getListenTimes();
}
