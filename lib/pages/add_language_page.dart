import 'package:auris/blocs/language_bloc.dart';
import 'package:auris/repositories/impl/language_list_repository.dart';
import 'package:auris/repositories/language_list_repository_impl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddLanguagePage extends StatelessWidget {
  const AddLanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final languages = context.read<LanguageListRepositoryImpl>().getLanguages();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Language"),
      ),
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (_, idx) {
          final language = languages[idx];

          return ListTile(
            leading: Image.network(
              "https://www.countryflagicons.com/FLAT/64/${language.langCode}.png",
            ),
            title: Text(
              language.name ?? "",
              style: const TextStyle(fontSize: 23),
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (_) {
                  return CupertinoAlertDialog(
                    content: const Text(
                      "Add Kazakh language?",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    actions: [
                      TextButton(
                        child: const Text("YES"),
                        onPressed: () {
                          context
                              .read<LanguageBloc>()
                              .addLanguage(language.langCode);
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text("NO"),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
