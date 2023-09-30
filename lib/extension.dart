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

  toPageRemoveUntil(page) {
    Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(
        builder: (_) => page,
      ),
      (_) => false,
    );
  }
}
