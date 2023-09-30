import 'package:flutter/material.dart';

class NoLanguages extends StatelessWidget {
  const NoLanguages({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "No languages",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
