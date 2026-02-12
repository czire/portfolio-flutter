import 'package:flutter/material.dart';
import 'package:haber_portfolio/presentation/pages/landing/widgets/landing_header_section.dart';
import 'package:haber_portfolio/presentation/pages/landing/widgets/landing_projects_section.dart';
import 'package:haber_portfolio/presentation/pages/landing/widgets/landing_skills_section.dart';
import 'package:haber_portfolio/presentation/pages/landing/widgets/landing_copyright_section.dart';

class LandingPage extends StatelessWidget {
  final ThemeMode? themeMode;

  const LandingPage({super.key, this.themeMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: [
              const LandingHeaderSection(),
              const SizedBox(height: 64),
              const LandingProjectsSection(),
              const LandingSkillsSection(),
              const LandingCopyrightSection(),
            ],
          ),
        ),
      ),
    );
  }
}
