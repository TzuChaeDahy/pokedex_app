import "package:flutter/material.dart";
import 'package:pokedex_app/src/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        textTheme: GoogleFonts.lexendTextTheme(textTheme),
        primarySwatch: Colors.deepPurple,
      ),
    );
  }
}
