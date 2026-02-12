import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:haber_portfolio/presentation/pages/landing/widgets/skill_item.dart';

class LandingSkillsSection extends StatelessWidget {
  const LandingSkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      ('HTML', FontAwesomeIcons.html5, 0.95),
      ('CSS', FontAwesomeIcons.css3, 0.90),
      ('JavaScript', FontAwesomeIcons.js, 0.78),
      ('React/Next.js', FontAwesomeIcons.react, 0.93),
      ('Flutter', FontAwesomeIcons.flutter, 0.48),
      ('Prisma', FontAwesomeIcons.server, 0.47),
      ('SQL', FontAwesomeIcons.database, 0.40),
      ('Git', FontAwesomeIcons.gitAlt, 0.37),
      ('Vercel', FontAwesomeIcons.cloud, 0.90),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 64),
        // Section Title
        Text(
          'Skills',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 24),
        // Skills List
        ...skills.map(
          (skill) => SkillItem(
            name: skill.$1,
            icon: skill.$2,
            proficiency: skill.$3,
          ),
        ),
      ],
    );
  }
}
