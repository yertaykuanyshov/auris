import 'package:auris/extension.dart';
import 'package:auris/pages/add_time_time.dart';
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
          return Container(
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
                  "Listen english",
                  style: TextStyle(fontSize: 20),
                ),
                Expanded(child: SizedBox()),
                Text(
                  "1450 m",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.toPage(const AddTimePage()),
        child: const Icon(Icons.add),
      ),
    );
  }
}
