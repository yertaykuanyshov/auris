import 'package:drift/drift.dart';

import 'language.dart';

class ListenHistory extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get second => integer()();

  IntColumn get languageId => integer().references(Language, #id)();

  DateTimeColumn get date => dateTime().clientDefault(() => DateTime.now())();
}
