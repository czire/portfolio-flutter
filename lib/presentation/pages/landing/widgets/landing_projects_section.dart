import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:haber_portfolio/presentation/pages/projects/data/project_data.dart';

class LandingProjectsSection extends StatelessWidget {
  const LandingProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Responsive grid columns
    int crossAxisCount = 3;
    if (screenWidth < 600) {
      crossAxisCount = 1;
    } else if (screenWidth < 900) {
      crossAxisCount = 2;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Featured Projects',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/projects');
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
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 0.85,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: ProjectData.projects.length,
          itemBuilder: (context, index) {
            final project = ProjectData.projects[index];
            return _ProjectCard(
              title: project.title,
              description: project.description,
              technologies: project.technologies.take(3).toList(),
              index: index,
              onTap: () {
                Navigator.pushNamed(context, '/projects');
              },
            );
          },
        ),
      ],
    );
  }
}

class _ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> technologies;
  final int index;
  final VoidCallback? onTap;

  const _ProjectCard({
    required this.title,
    required this.description,
    required this.technologies,
    required this.index,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: Theme.of(
                context,
              ).colorScheme.outline.withValues(alpha: 0.2),
            ),
          ),
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Project Icon/Placeholder
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Theme.of(
                        context,
                      ).colorScheme.primaryContainer.withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.web_rounded,
                      size: 40,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Title
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  // Description
                  Expanded(
                    child: Text(
                      description,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withValues(alpha: 0.7),
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Tech Tags
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: technologies.map((tech) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context)
                              .colorScheme
                              .secondaryContainer
                              .withValues(alpha: 0.5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          tech,
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall?.copyWith(fontSize: 11),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        )
        .animate()
        .fadeIn(
          duration: 600.ms,
          delay: Duration(milliseconds: 150 * index),
        )
        .slideY(
          begin: 0.3,
          end: 0,
          duration: 600.ms,
          delay: Duration(milliseconds: 150 * index),
        );
  }
}
