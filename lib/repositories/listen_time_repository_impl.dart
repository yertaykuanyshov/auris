import 'dart:math';

import 'package:auris/services/database.dart';
import 'package:drift/drift.dart';

import 'interface/listen_time_repository.dart';

class ListenTimeRepositoryImpl extends ListenTimeRepository {
  ListenTimeRepositoryImpl(this._appDatabase);

  final AppDatabase _appDatabase;

  @override
  Future<void> add({
    required int secondCount,
    required int languageId,
    DateTime? date,
  }) async {
    await _appDatabase.into(_appDatabase.listenHistory).insert(
          ListenHistoryCompanion.insert(
            second: secondCount,
            languageId: languageId,
            date: date == null ? Value(DateTime.now()) : Value(date),
          ),
        );
  }

  @override
  Future<Map<DateTime, int>> getListenTimes(int languageId) async {

    final listenTimes = await (_appDatabase.select(_appDatabase.listenHistory)
          ..where((tbl) => tbl.languageId.equals(languageId)))
        .get();

    final Map<DateTime, int> data = {};

    for (var time in listenTimes) {
      final date = time.date;

      if (data.containsKey(date)) {
        data[date] = (data[date]! + time.second);
      } else {
        data[date] = time.second;
      }
    }

    return data;
  }
}
