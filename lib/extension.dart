import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  toPage(page) {
    Navigator.push(
      this,
      MaterialPageRoute(
        builder: (_) => page,
      ),
    );
  }
}
