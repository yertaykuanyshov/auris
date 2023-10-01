import 'package:auris/blocs/language_bloc.dart';
import 'package:auris/blocs/language_list_bloc.dart';
import 'package:auris/blocs/listen_time_bloc.dart';
import 'package:auris/repositories/language_list_repository_impl.dart';
import 'package:auris/repositories/language_repository_impl.dart';
import 'package:auris/repositories/listen_time_repository_impl.dart';
import 'package:auris/services/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';

void main() {
  final appDatabase = AppDatabase();
  final languageListRepository = LanguageListRepositoryImpl(appDatabase);
  final languageRepository = LanguageRepositoryImpl(appDatabase);
  final listenTimeRepository = ListenTimeRepositoryImpl(appDatabase);

  final languageBloc = LanguageBloc(
    languageRepository,
    languageListRepository,
  );

  final languageListBloc = LanguageListBloc(languageListRepository);
  final listenTimeBloc = ListenTimeBloc(listenTimeRepository);

  runApp(
    RepositoryProvider(
      create: (_) => languageListRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => languageBloc),
          BlocProvider(create: (_) => languageListBloc),
          BlocProvider(create: (_) => listenTimeBloc),
        ],
        child: const App(),
      ),
    ),
  );
}
