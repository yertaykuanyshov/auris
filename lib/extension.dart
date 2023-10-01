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

  getFlagUrl(String langCode) {
    return "https://www.countryflagicons.com/FLAT/64/$langCode.png";
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
