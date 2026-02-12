import 'package:flutter/material.dart';
import 'package:haber_portfolio/presentation/pages/about/widgets/about_bio_section.dart';
import 'package:haber_portfolio/presentation/pages/about/widgets/about_experience_section.dart';
import 'package:haber_portfolio/presentation/pages/about/widgets/about_hobbies_section.dart';
import 'package:haber_portfolio/presentation/pages/about/widgets/about_profile_section.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AboutProfileSection(),
                SizedBox(height: 48),
                AboutBioSection(),
                SizedBox(height: 48),
                AboutExperienceSection(),
                SizedBox(height: 48),
                AboutHobbiesSection(),
                SizedBox(height: 48),
              ],
            ),
          ),
        ),
      ),
    );
  }
}