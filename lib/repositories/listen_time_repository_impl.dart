import 'package:auris/services/database.dart';

import 'impl/listen_time_repository.dart';

class ListenTimeRepositoryImpl extends ListenTimeRepository {
  ListenTimeRepositoryImpl(this._appDatabase);

  final AppDatabase _appDatabase;

  @override
  Future<void> add(ListenHistoryData listenTime) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<List<ListenHistoryData>> getListenTimes() async {
    return _appDatabase.select(_appDatabase.listenHistory).get();
  }
}
