import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:haber_portfolio/presentation/pages/skills/data/models/skill.dart';

class SkillData {
  static const List<Skill> skills = [
    // Frontend Development
    Skill(
      name: 'HTML',
      icon: FontAwesomeIcons.html5,
      level: SkillLevel.expert,
      category: SkillCategory.frontend,
    ),
    Skill(
      name: 'CSS',
      icon: FontAwesomeIcons.css3,
      level: SkillLevel.expert,
      category: SkillCategory.frontend,
    ),
    Skill(
      name: 'JavaScript',
      icon: FontAwesomeIcons.js,
      level: SkillLevel.advanced,
      category: SkillCategory.frontend,
    ),
    Skill(
      name: 'TypeScript',
      icon: FontAwesomeIcons.js,
      level: SkillLevel.advanced,
      category: SkillCategory.frontend,
    ),
    Skill(
      name: 'React/Next.js',
      icon: FontAwesomeIcons.react,
      level: SkillLevel.expert,
      category: SkillCategory.frontend,
    ),
    Skill(
      name: 'Tailwind CSS',
      icon: FontAwesomeIcons.css3Alt,
      level: SkillLevel.expert,
      category: SkillCategory.frontend,
    ),

    // Mobile Development
    Skill(
      name: 'Flutter',
      icon: FontAwesomeIcons.flutter,
      level: SkillLevel.intermediate,
      category: SkillCategory.mobile,
    ),

    // Backend Development
    Skill(
      name: 'Node.js',
      icon: FontAwesomeIcons.nodeJs,
      level: SkillLevel.advanced,
      category: SkillCategory.backend,
    ),
    Skill(
      name: 'Prisma',
      icon: FontAwesomeIcons.server,
      level: SkillLevel.intermediate,
      category: SkillCategory.backend,
    ),
    Skill(
      name: 'SQL',
      icon: FontAwesomeIcons.database,
      level: SkillLevel.intermediate,
      category: SkillCategory.backend,
    ),
    Skill(
      name: 'OAuth/Authentication',
      icon: FontAwesomeIcons.lock,
      level: SkillLevel.intermediate,
      category: SkillCategory.backend,
    ),
    Skill(
      name: 'Supabase/Firebase',
      icon: FontAwesomeIcons.fire,
      level: SkillLevel.intermediate,
      category: SkillCategory.backend,
    ),

    // Version Control & Collaboration
    Skill(
      name: 'Git',
      icon: FontAwesomeIcons.gitAlt,
      level: SkillLevel.intermediate,
      category: SkillCategory.tools,
    ),
    Skill(
      name: 'Vercel',
      icon: FontAwesomeIcons.cloud,
      level: SkillLevel.expert,
      category: SkillCategory.tools,
    ),
  ];

  static const List<String> learningSkills = [
    'Advanced Flutter Features',
    'State Management (Provider, Bloc, Riverpod)',
    'Testing (Unit & Widget Tests)',
    'Performance Optimization',
  ];

  static List<Skill> getSkillsByCategory(SkillCategory category) {
    return skills.where((skill) => skill.category == category).toList();
  }
}