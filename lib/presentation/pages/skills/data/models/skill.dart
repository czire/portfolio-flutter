import 'package:flutter/material.dart';

enum SkillCategory {
  frontend('Frontend Development', Icons.web),
  backend('Backend Development', Icons.storage),
  mobile('Mobile Development', Icons.phone_android),
  tools('Version Control & Collaboration', Icons.code);

  final String label;
  final IconData icon;
  const SkillCategory(this.label, this.icon);
}

enum SkillLevel {
  beginner('Beginner', 0.25),
  intermediate('Intermediate', 0.50),
  advanced('Advanced', 0.75),
  expert('Expert', 1.0);

  final String label;
  final double value;
  const SkillLevel(this.label, this.value);
}

class Skill {
  final String name;
  final IconData icon;
  final SkillLevel level;
  final SkillCategory category;

  const Skill({
    required this.name,
    required this.icon,
    required this.level,
    required this.category,
  });
}