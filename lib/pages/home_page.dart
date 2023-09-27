import 'package:auris/extension.dart';
import 'package:auris/pages/statistics_page.dart';
import 'package:flutter/material.dart';

import 'add_language_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auris: Listen time tracker"),
      ),
      body: ListView.builder(
        itemBuilder: (_, idx) {
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
                  Image.network(
                    "https://www.countryflagicons.com/FLAT/64/DE.png",
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 20),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Listen English",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
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
