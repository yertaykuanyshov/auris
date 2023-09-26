import 'package:auris/models/listen_time.dart';

abstract class ListenTimeRepository {
  Future<void> add(ListenTime listenTime);

  Future<List<ListenTime>> getListenTimes();
}
