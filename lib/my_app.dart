import 'package:desafioimc/pages/calculadora_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.pinkAccent,
          foregroundColor: Colors.white,
        ),
        textTheme: GoogleFonts.robotoFlexTextTheme(),
      ),
      home: const CalculadoraPage(),
    );
  }
}