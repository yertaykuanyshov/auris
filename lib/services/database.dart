import 'package:drift/drift.dart';

part 'database.g.dart';

class Category extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text()();
}

@DriftDatabase(tables: [Category])
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;
}
