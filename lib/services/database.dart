import 'package:drift/drift.dart';

part 'database.g.dart';

class Language extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get langCode => text()();

  TextColumn get description => text()();
}

class ListenHistory extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get secondCount => integer()();

  DateTimeColumn get date => dateTime()();
}

@DriftDatabase(tables: [Language, ListenHistory])
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;
}
