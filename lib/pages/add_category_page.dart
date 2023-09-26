import 'package:flutter/material.dart';

class AddCategoryPage extends StatelessWidget {
  const AddCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add category"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Listen english...",
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.black12.withOpacity(0.03),
                label: const Text(
                  "Category name",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Add",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
