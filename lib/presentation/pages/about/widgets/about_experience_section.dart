import 'package:flutter/material.dart';

class AboutExperienceSection extends StatelessWidget {
  const AboutExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section Title
        Center(
          child: Text(
            'Experience',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const SizedBox(height: 24),
        // Experience Cards
        _ExperienceCard(
          icon: Icons.restaurant_menu,
          title: 'LutongBahayPlanner',
          description:
              'A web application designed to help Filipino people decide their daily meals and manage their food budget effectively.',
        ),
        const SizedBox(height: 16),
        _ExperienceCard(
          icon: Icons.store,
          title: 'PresyoBuddy',
          description:
              'A web application that helps business owners, especially those running sari-sari stores, set reasonable prices for their products. Integrated AI using Hugging Face to provide intelligent pricing recommendations.',
        ),
        const SizedBox(height: 16),
        _ExperienceCard(
          icon: Icons.web,
          title: 'Web Portfolio',
          description:
              'A personal portfolio website showcasing my projects, skills, and professional journey as a developer.',
        ),
      ],
    );
  }
}

class _ExperienceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _ExperienceCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                color: Theme.of(context).colorScheme.primary,
                size: 28,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          height: 1.5,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}