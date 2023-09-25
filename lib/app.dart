import 'package:auris/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.ubuntuTextTheme(),
        colorScheme: const ColorScheme.light(
          primary: Colors.redAccent,
        ),
      ),
      home: const HomePage(),
    );
  }
}