import 'package:flutter/material.dart';

class AboutHobbiesSection extends StatelessWidget {
  const AboutHobbiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section Title
        Center(
          child: Text(
            'Hobbies & Interests',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const SizedBox(height: 24),
        // Hobbies Grid
        Wrap(
          spacing: 16,
          runSpacing: 16,
          alignment: WrapAlignment.center,
          children: const [
            _HobbyChip(
              icon: Icons.music_note,
              label: 'Making Music',
            ),
            _HobbyChip(
              icon: Icons.code,
              label: 'Coding',
            ),
            _HobbyChip(
              icon: Icons.headphones,
              label: 'Listening to Music',
            ),
            _HobbyChip(
              icon: Icons.local_cafe,
              label: 'Matcha Lover',
            ),
          ],
        ),
      ],
    );
  }
}

class _HobbyChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _HobbyChip({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.5),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 20,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      ),
    );
  }
}