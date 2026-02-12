import 'package:flutter/material.dart';
import 'package:haber_portfolio/core/widgets/app_theme.dart';
import 'package:haber_portfolio/core/widgets/custom_app_bar.dart';
import 'package:haber_portfolio/core/widgets/custom_drawer.dart';
import 'package:haber_portfolio/presentation/pages/contact/contact_page.dart';
import 'package:haber_portfolio/presentation/pages/landing/landing_page.dart';
import 'package:haber_portfolio/presentation/pages/about/about_page.dart';
import 'package:haber_portfolio/presentation/pages/projects/projects_page.dart';
import 'package:haber_portfolio/presentation/skills/skills_page.dart';

// TODO: Add a theme switcher to toggle between light and dark themes.
// TODO: Implement all pages and sections of the portfolio with real content.

void main() {
  runApp(const SimplePortfolioApp());
}

class SimplePortfolioApp extends StatefulWidget {
  const SimplePortfolioApp({super.key});

  @override
  State<SimplePortfolioApp> createState() => _SimplePortfolioAppState();
}

class _SimplePortfolioAppState extends State<SimplePortfolioApp> {
  ThemeMode _themeMode = ThemeMode.system;
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    LandingPage(),
    AboutPage(),
    ProjectsPage(),
    SkillsPage(),
    ContactPage(),
  ];

  void _toggleTheme() {
    setState(() {
      if (_themeMode == ThemeMode.light) {
        _themeMode = ThemeMode.dark;
      } else if (_themeMode == ThemeMode.dark) {
        _themeMode = ThemeMode.light;
      } else {
        _themeMode = ThemeMode.dark;
      }
    });
  }

  void _onSelectPage(int index, BuildContext context) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.of(context).pop(); // Close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Czire\'s Portfolio',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: _themeMode,
      home: Scaffold(
        appBar: CustomAppBar(
          title: 'Czire\'s Portfolio',
          onToggleTheme: _toggleTheme,
        ),
        drawer: CustomDrawer(onTap: _onSelectPage),
        body: IndexedStack(index: _selectedIndex, children: _pages),
      ),
      // LandingPage(onToggleTheme: _toggleTheme, themeMode: _themeMode),
      // routes: {
      //   '/about': (context) => AboutPage(onToggleTheme: _toggleTheme),
      //   '/skills': (context) => SkillsPage(onToggleTheme: _toggleTheme),
      //   '/contact': (context) => ContactPage(onToggleTheme: _toggleTheme),
      // },
      debugShowCheckedModeBanner: false,
    );
  }
}
