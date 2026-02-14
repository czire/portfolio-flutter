import 'package:flutter/material.dart';
import 'package:haber_portfolio/core/widgets/app_theme.dart';
import 'package:haber_portfolio/core/widgets/custom_app_bar.dart';
import 'package:haber_portfolio/core/widgets/custom_drawer.dart';
import 'package:haber_portfolio/core/widgets/web_navbar.dart';
import 'package:haber_portfolio/presentation/pages/contact/contact_page.dart';
import 'package:haber_portfolio/presentation/pages/landing/landing_page.dart';
import 'package:haber_portfolio/presentation/pages/about/about_page.dart';
import 'package:haber_portfolio/presentation/pages/projects/projects_page.dart';
import 'package:haber_portfolio/presentation/pages/skills/skills_page.dart';

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

  void _toggleTheme() {
    setState(() {
      if (_themeMode == ThemeMode.light) {
        _themeMode = ThemeMode.dark;
      } else {
        _themeMode = ThemeMode.light;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Czire\'s Portfolio',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: _themeMode,
      initialRoute: '/',
      routes: {
        '/': (context) => BasePage(
          page: const LandingPage(),
          currentIndex: 0,
          toggleTheme: _toggleTheme,
        ),
        '/about': (context) => BasePage(
          page: const AboutPage(),
          currentIndex: 1,
          toggleTheme: _toggleTheme,
        ),
        '/projects': (context) => BasePage(
          page: const ProjectsPage(),
          currentIndex: 2,
          toggleTheme: _toggleTheme,
        ),
        '/skills': (context) => BasePage(
          page: const SkillsPage(),
          currentIndex: 3,
          toggleTheme: _toggleTheme,
        ),
        '/contact': (context) => BasePage(
          page: const ContactPage(),
          currentIndex: 4,
          toggleTheme: _toggleTheme,
        ),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class BasePage extends StatelessWidget {
  final Widget page;
  final int currentIndex;
  final VoidCallback toggleTheme;

  const BasePage({
    super.key,
    required this.page,
    required this.currentIndex,
    required this.toggleTheme,
  });

  void _navigateTo(BuildContext context, String routeName) {
    if (ModalRoute.of(context)?.settings.name != routeName) {
      Navigator.pushReplacementNamed(context, routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 800;

    return Scaffold(
      appBar: isDesktop
          ? WebNavbar(
              currentIndex: currentIndex,
              toggleTheme: toggleTheme,
              onNavigate: (index) {
                switch (index) {
                  case 0:
                    _navigateTo(context, '/');
                    break;
                  case 1:
                    _navigateTo(context, '/about');
                    break;
                  case 2:
                    _navigateTo(context, '/projects');
                    break;
                  case 3:
                    _navigateTo(context, '/skills');
                    break;
                  case 4:
                    _navigateTo(context, '/contact');
                    break;
                }
              },
            )
          : CustomAppBar(
              title: 'Czire\'s Portfolio',
              onToggleTheme: toggleTheme,
            ),
      drawer: isDesktop
          ? null
          : CustomDrawer(
              currentIndex: currentIndex,
              onTap: (index, context) {
                Navigator.pop(context); // close drawer
                switch (index) {
                  case 0:
                    _navigateTo(context, '/');
                    break;
                  case 1:
                    _navigateTo(context, '/about');
                    break;
                  case 2:
                    _navigateTo(context, '/projects');
                    break;
                  case 3:
                    _navigateTo(context, '/skills');
                    break;
                  case 4:
                    _navigateTo(context, '/contact');
                    break;
                }
              },
            ),
      body: page,
    );
  }
}
