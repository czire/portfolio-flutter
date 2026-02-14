import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SkillItemAnimated extends StatelessWidget {
  final String name;
  final IconData icon;
  final double proficiency; // 0.0 to 1.0
  final int index;

  const SkillItemAnimated({
    super.key,
    required this.name,
    required this.icon,
    required this.proficiency,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Skill name with icon
          Row(
            children: [
              FaIcon(
                icon,
                size: 24,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 12),
              Text(name, style: Theme.of(context).textTheme.titleMedium),
              const Spacer(),
              Text(
                ' ${(proficiency * 100).toInt()}%',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ],
          )
              .animate()
              .fadeIn(duration: 600.ms, delay: Duration(milliseconds: 100 * index))
              .slideX(
                begin: -0.2,
                end: 0,
                duration: 600.ms,
                delay: Duration(milliseconds: 100 * index),
              ),
          const SizedBox(height: 8),
          // Progress bar with animation
          LinearPercentIndicator(
            percent: proficiency,
            lineHeight: 8.0,
            backgroundColor: Theme.of(
              context,
            ).colorScheme.surfaceContainerHighest,
            progressColor: Theme.of(context).colorScheme.primary,
            barRadius: const Radius.circular(4),
            isRTL: false,
            animation: true,
            animationDuration: 1500,
            animateFromLastPercent: true,
          )
              .animate()
              .fadeIn(
                duration: 600.ms,
                delay: Duration(milliseconds: 100 * index + 200),
              )
              .slideX(
                begin: -0.3,
                end: 0,
                duration: 600.ms,
                delay: Duration(milliseconds: 100 * index + 200),
              ),
        ],
      ),
    );
  }
}