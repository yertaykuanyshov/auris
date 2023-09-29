import 'package:auris/services/database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/language_bloc.dart';

class LangItem extends StatelessWidget {
  const LangItem({super.key, required this.language});

  final LanguageData language;

  @override
  Widget build(BuildContext context) {
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
                    context.read<LanguageBloc>().addLanguage(language.langCode);
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
  }
}
