import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTimePage extends StatelessWidget {
  const AddTimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add time"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CupertinoTimerPicker(
              onTimerDurationChanged: (_) {},
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Select category",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 5),
            MaterialButton(
              onPressed: () {},
              color: Colors.black45,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Add",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
