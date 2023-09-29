import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

class Language extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get langCode => text()();
}

class ListenHistory extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get second => integer()();

  IntColumn get languageId => integer()();

  DateTimeColumn get date => dateTime()();
}

@DriftDatabase(tables: [Language, ListenHistory])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
