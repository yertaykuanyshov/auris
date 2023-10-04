import 'dart:math';

import 'package:auris/services/database.dart';

import 'interface/listen_time_repository.dart';

class ListenTimeRepositoryImpl extends ListenTimeRepository {
  ListenTimeRepositoryImpl(this._appDatabase);

  final AppDatabase _appDatabase;

  @override
  Future<void> add({
    required int secondCount,
    required int languageId,
  }) async {
    _appDatabase.into(_appDatabase.listenHistory).insert(
          ListenHistoryCompanion.insert(
            second: Random.secure().nextInt(1000),
            languageId: 1,
          ),
        );
  }

  @override
  Future<Map<DateTime, int>> getListenTimes(int languageId) async {
    final listenTimes =
        await _appDatabase.select(_appDatabase.listenHistory).get();

    return {
      for (var v in listenTimes)
        DateTime(v.date.year, v.date.month, v.date.day): v.second
    };
  }
}
