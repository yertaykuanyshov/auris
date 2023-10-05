import 'package:auris/extensions/context.dart';
import 'package:auris/services/database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/language_bloc.dart';
import '../../languages_list/listening_list_page.dart';

class LangItem extends StatelessWidget {
  const LangItem({super.key, required this.language});

  final LanguageData language;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        context.getFlagUrl(language.langCode),
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
              content: Text(
                "Add ${language.name}",
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              actions: [
                TextButton(
                  child: const Text("Yes"),
                  onPressed: () {
                    context.read<LanguageBloc>().addLanguage(language.langCode);
                    context.toPageRemoveUntil(const ListenLanguagesPage());
                  },
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("No"),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
