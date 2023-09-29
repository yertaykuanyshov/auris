import 'package:drift/drift.dart';

class Language extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text().nullable()();

  TextColumn get langCode => text()();
}