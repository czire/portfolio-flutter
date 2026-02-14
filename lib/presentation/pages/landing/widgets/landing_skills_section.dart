import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:haber_portfolio/presentation/pages/landing/widgets/skill_item_animated.dart';

class LandingSkillsSection extends StatelessWidget {
  const LandingSkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Top 6 skills only
    final topSkills = [
      ('HTML', FontAwesomeIcons.html5, 0.95),
      ('CSS', FontAwesomeIcons.css3, 0.90),
      ('JavaScript', FontAwesomeIcons.js, 0.78),
      ('React/Next.js', FontAwesomeIcons.react, 0.93),
      ('Flutter', FontAwesomeIcons.flutter, 0.48),
      ('Git', FontAwesomeIcons.gitAlt, 0.37),
    ];

    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 64),
        // Section Header
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Top Skills',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/skills');
              },
              icon: const Icon(Icons.arrow_forward),
              label: const Text('View All'),
            ),
          ],
        )
            .animate()
            .fadeIn(duration: 600.ms)
            .slideX(begin: -0.2, end: 0, duration: 600.ms),
        const SizedBox(height: 24),
        // Skills List
        isMobile
            ? Column(
                children: topSkills
                    .asMap()
                    .entries
                    .map(
                      (entry) => SkillItemAnimated(
                        name: entry.value.$1,
                        icon: entry.value.$2,
                        proficiency: entry.value.$3,
                        index: entry.key,
                      ),
                    )
                    .toList(),
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: topSkills
                          .take(3)
                          .toList()
                          .asMap()
                          .entries
                          .map(
                            (entry) => SkillItemAnimated(
                              name: entry.value.$1,
                              icon: entry.value.$2,
                              proficiency: entry.value.$3,
                              index: entry.key,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const SizedBox(width: 32),
                  Expanded(
                    child: Column(
                      children: topSkills
                          .skip(3)
                          .toList()
                          .asMap()
                          .entries
                          .map(
                            (entry) => SkillItemAnimated(
                              name: entry.value.$1,
                              icon: entry.value.$2,
                              proficiency: entry.value.$3,
                              index: entry.key + 3,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}