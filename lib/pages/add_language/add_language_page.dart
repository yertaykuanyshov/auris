import 'package:auris/pages/add_language/widgets/lang_item.dart';
import 'package:auris/repositories/language_list_repository_impl.dart';
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
          return LangItem(language: languages[idx]);
        },
      ),
    );
  }
}
