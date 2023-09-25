import 'package:auris/extension.dart';
import 'package:auris/pages/add_time_time.dart';
import 'package:auris/pages/category_view_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auris"),
      ),
      body: ListView.builder(
        itemBuilder: (_, idx) {
          return GestureDetector(
            onTap: () => context.toPage(const CategoryViewPage()),
            child: Container(
              padding: const EdgeInsets.all(18),
              color: Colors.black.withOpacity(0.01),
              margin: const EdgeInsets.only(
                left: 5,
                right: 5,
                bottom: 5,
              ),
              child: const Row(
                children: [
                  Text(
                    "Listen English",
                    style: TextStyle(fontSize: 20),
                  ),
                  Expanded(child: SizedBox()),
                  Text(
                    "1d 14h 15m",
                    style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.toPage(const AddTimePage()),
        label: const Text(
          "Add category",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
