import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddLanguagePage extends StatelessWidget {
  const AddLanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Language"),
      ),
      body: ListView.builder(
        itemBuilder: (_, idx) {
          return ListTile(
            leading: const Text(
              "🇰🇿",
              style: TextStyle(
                fontSize: 45,
              ),
            ),
            title: const Text(
              "Kazakh",
              style: TextStyle(
                fontSize: 23,
              ),
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
                        onPressed: () {},
                        child: const Text("YES"),
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
