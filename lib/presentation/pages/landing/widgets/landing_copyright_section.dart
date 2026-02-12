import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingCopyrightSection extends StatelessWidget {
  const LandingCopyrightSection({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentYear = DateTime.now().year;

    return Column(
      children: [
        const SizedBox(height: 64),
        const Divider(),
        const SizedBox(height: 32),
        // Social Links
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _SocialIconButton(
              icon: FontAwesomeIcons.facebook,
              label: 'Facebook',
              onPressed: () => _launchUrl('https://facebook.com/czir333'),
              // TODO: Replace with your actual Facebook profile URL
            ),
            const SizedBox(width: 16),
            _SocialIconButton(
              icon: FontAwesomeIcons.instagram,
              label: 'Instagram',
              onPressed: () => _launchUrl('https://instagram.com/czireee'),
              // TODO: Replace with your actual Instagram profile URL
            ),
            const SizedBox(width: 16),
            _SocialIconButton(
              icon: FontAwesomeIcons.github,
              label: 'GitHub',
              onPressed: () => _launchUrl('https://github.com/czire'),
            ),
            const SizedBox(width: 16),
            _SocialIconButton(
              icon: FontAwesomeIcons.envelope,
              label: 'Email',
              onPressed: () =>
                  _launchUrl('mailto:emanuelczire@gmail.com'),
            ),
          ],
        ),
        const SizedBox(height: 24),
        // Copyright Text
        Text(
          '© $currentYear Czire Haber. All rights reserved.',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
              ),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}

class _SocialIconButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const _SocialIconButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: FaIcon(icon),
      tooltip: label,
      iconSize: 24,
      style: IconButton.styleFrom(
        backgroundColor:
            Theme.of(context).colorScheme.primaryContainer.withOpacity(0.5),
        foregroundColor: Theme.of(context).colorScheme.primary,
        padding: const EdgeInsets.all(12),
      ),
    );
  }
}