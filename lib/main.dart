import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haber_portfolio/pages/landing_page.dart';
import 'package:haber_portfolio/pages/profile_page.dart';
import 'package:haber_portfolio/pages/projects_page.dart';

// TODO: Add a theme switcher to toggle between light and dark themes.
// TODO: Implement all pages and sections of the portfolio with real content.

void main() {
  runApp(const SimplePortfolioApp());
}

class SimplePortfolioApp extends StatelessWidget {
  const SimplePortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Czire\'s Portfolio',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
        textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
      ),
      home: const LandingPage(),
      routes: {
        '/profile': (context) => const ProfilePage(),
        '/projects': (context) => const ProjectsPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
