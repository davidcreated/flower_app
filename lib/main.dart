import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app/Screen/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.latoTextTheme()),
      home: const HomeScreen(),
    );
  }
}
