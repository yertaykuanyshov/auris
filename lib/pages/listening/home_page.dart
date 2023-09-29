import 'package:auris/blocs/language_bloc.dart';
import 'package:auris/blocs/language_list_bloc.dart';
import 'package:auris/blocs/language_state.dart';
import 'package:auris/extension.dart';
import 'package:auris/pages/statistics_page.dart';
import 'package:auris/services/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../add_language_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auris: Listen time tracker"),
      ),
      body: BlocBuilder(
        bloc: context.read<LanguageBloc>()..getListeningLanguages(),
        builder: (BuildContext context, state) {
          if (state is ListenLanguageLoaded) {
            final languages = state.languages;

            if (languages.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "No languages",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Add languages"),
                    ),
                  ],
                ),
              );
            }

            return ListView.builder(
              itemCount: languages.length,
              itemBuilder: (_, idx) {
                final language = languages[idx];

                return GestureDetector(
                  onTap: () => context.toPage(const StatisticsPage()),
                  child: Container(
                    padding: const EdgeInsets.all(18),
                    color: Colors.black12.withAlpha(7),
                    margin: const EdgeInsets.only(
                      left: 5,
                      right: 5,
                      bottom: 5,
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              language.name ?? "",
                              style: const TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              "Listen time: 1d 14h 15m",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }

          return const LinearProgressIndicator();
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.toPage(const AddLanguagePage()),
        label: const Text(
          "Add Languages",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}