import 'package:auris/blocs/language_bloc.dart';
import 'package:auris/blocs/listen_time_bloc.dart';
import 'package:auris/repositories/language_repository_impl.dart';
import 'package:auris/repositories/listen_time_repository_impl.dart';
import 'package:auris/services/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import 'app.dart';

final logger = Logger();

void main() {
  final appDatabase = AppDatabase();
  final languageRepository = LanguageRepositoryImpl(appDatabase);
  final listenTimeRepository = ListenTimeRepositoryImpl(appDatabase);
  final languageBloc = LanguageBloc(languageRepository);
  final listenTimeBloc = ListenTimeBloc(listenTimeRepository);

  runApp(
    RepositoryProvider(
      create: (_) => languageRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => languageBloc),
          BlocProvider(create: (_) => listenTimeBloc),
        ],
        child: const App(),
      ),
    ),
  );
}
