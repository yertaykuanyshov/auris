import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auris"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Track listen time",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 14),
            MaterialButton(
              onPressed: () {},
              color: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Sign in Apple",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Sign in Google",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
