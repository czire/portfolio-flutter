import 'package:flutter/material.dart';

class LandingCopyrightSection extends StatelessWidget {
  const LandingCopyrightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 64),
        Divider(
          color: Theme.of(context).dividerColor,
          thickness: 1,
        ),
        const SizedBox(height: 32),
        // Social Media Icons
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Facebook
            IconButton(
              icon: const Icon(Icons.facebook),
              onPressed: () {
                // TODO: Add Facebook link
              },
              tooltip: 'Facebook',
            ),
            const SizedBox(width: 24),
            // Instagram
            IconButton(
              icon: const Icon(Icons.camera_alt),
              onPressed: () {
                // TODO: Add Instagram link
              },
              tooltip: 'Instagram',
            ),
            const SizedBox(width: 24),
            // Email
            IconButton(
              icon: const Icon(Icons.email),
              onPressed: () {
                // TODO: Add Email link
              },
              tooltip: 'Email',
            ),
          ],
        ),
        const SizedBox(height: 32),
        // Copyright Text
        Text(
          '© 2026 Czire Haber. All rights reserved.',
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}
