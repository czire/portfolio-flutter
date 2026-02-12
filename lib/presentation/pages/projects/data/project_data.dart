import 'package:haber_portfolio/presentation/pages/projects/data/models/project.dart';

class ProjectData {
  static const List<Project> projects = [
    // A. LutongBahayPlanner
    Project(
      id: 'lutongbahayplanner',
      title: 'LutongBahayPlanner',
      description:
          'A web application designed to help Filipino people decide their daily meals and manage their food budget effectively. Features meal planning, budget tracking, and Filipino recipe suggestions.',
      technologies: [
        'Next.js',
        'Tailwind CSS',
        'Node.js',
        'Prisma',
        'OAuth',
        'Vercel',
        'Git',
      ],
      liveUrl: 'https://lutongbahayplanner.vercel.app/',
      githubUrl: 'https://github.com/czire/lutongbahayplanner',
      date: '2025',
    ),
    // C. Web Portfolio
    Project(
      id: 'web-portfolio',
      title: 'Web Portfolio',
      description:
          'A personal portfolio website showcasing my projects, skills, and professional journey as a developer. Built with modern web technologies for optimal performance and user experience.',
      technologies: ['Next.js', 'Tailwind CSS', 'Vercel', 'Git'],
      liveUrl: 'https://czire-haber-portfolio.vercel.app/',
      githubUrl: 'https://github.com/czire/portfolio',
      date: '2025',
    ),
    // B. PresyoBuddy
    Project(
      id: 'presyobuddy',
      title: 'PresyoBuddy',
      description:
          'A web application that helps business owners, especially those running sari-sari stores, set reasonable prices for their products. Integrated AI using Hugging Face to provide intelligent pricing recommendations based on market data.',
      technologies: [
        'Hugging Face AI',
        'Next.js',
        'Tailwind CSS',
        'Prisma',
        'OAuth',
        'Vercel',
        'Git',
      ],
      liveUrl: 'https://presyobuddy.vercel.app/',
      githubUrl: 'https://github.com/czire/presyobuddy',
      date: '2025',
    ),
  ];
}
