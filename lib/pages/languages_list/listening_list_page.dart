import 'package:auris/blocs/language_bloc.dart';
import 'package:auris/blocs/states/language_state.dart';
import 'package:auris/extensions/context.dart';
import 'package:auris/pages/languages_list/widgets/no_languages.dart';
import 'package:auris/pages/listen_history/statistics_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../add_language/add_language_page.dart';

class ListenLanguagesPage extends StatelessWidget {
  const ListenLanguagesPage({super.key});

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
              return const NoLanguages();
            }

            return ListView.builder(
              itemCount: languages.length,
              itemBuilder: (_, idx) {
                final language = languages[idx];

                return GestureDetector(
                  onTap: () => context.toPage(const StatisticsPage()),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.black12.withAlpha(7),
                    margin: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Image.network(
                            "https://www.countryflagicons.com/FLAT/64/${language.langCode}.png",
                            filterQuality: FilterQuality.high,
                            width: 60,
                            height: 60,
                          ),
                        ),
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
