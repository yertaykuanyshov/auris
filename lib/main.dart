import 'package:auris/repositories/language_list_repository_impl.dart';
import 'package:auris/repositories/language_repository_impl.dart';
import 'package:auris/repositories/listen_time_repository_impl.dart';
import 'package:auris/services/database.dart';
import 'package:flutter/material.dart';

import 'app.dart';

void main() {
  final appDatabase = AppDatabase();
  final languageListRepository = LanguageListRepositoryImpl(appDatabase);
  final languageRepository = LanguageRepositoryImpl(appDatabase);
  final listenTimeRepository = ListenTimeRepositoryImpl();

  runApp(const App());
}
