import 'package:flutter/material.dart';
import 'package:haber_portfolio/presentation/pages/skills/data/models/skill.dart';
import 'package:haber_portfolio/presentation/pages/skills/data/skill_data.dart';
import 'package:haber_portfolio/presentation/pages/skills/widgets/skills_category_section.dart';
import 'package:haber_portfolio/presentation/pages/skills/widgets/skills_learning_section.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Page Header
                Text(
                  'Skills & Expertise',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Technologies and tools I use to build great applications',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context)
                            .colorScheme
                            .onSurface
                            .withValues(alpha: 0.7),
                      ),
                ),
                const SizedBox(height: 48),

                // Skill Categories
                ...SkillCategory.values.map((category) {
                  final categorySkills =
                      SkillData.getSkillsByCategory(category);
                  if (categorySkills.isEmpty) return const SizedBox.shrink();
                  return Column(
                    children: [
                      SkillsCategorySection(
                        category: category,
                        skills: categorySkills,
                      ),
                      const SizedBox(height: 48),
                    ],
                  );
                }),

                // Learning Section
                const SkillsLearningSection(),
                const SizedBox(height: 48),
              ],
            ),
          ),
        ),
      ),
    );
  }
}