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
    final screenWidth = MediaQuery.of(context).size.width;
    
    // Responsive padding
    final horizontalPadding = screenWidth < 600 ? 20.0 : 40.0;

    return SingleChildScrollView(
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: 48,
            ),
            child: const Column(
              children: [
                LandingHeaderSection(),
                SizedBox(height: 80),
                LandingProjectsSection(),
                LandingSkillsSection(),
                LandingCopyrightSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}