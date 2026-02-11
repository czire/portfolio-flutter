import 'package:flutter/material.dart';
import 'package:haber_portfolio/widgets/custom_drawer.dart';
import 'package:haber_portfolio/widgets/custom_app_bar.dart';

class ProjectsPage extends StatelessWidget {
  static MaterialPageRoute<dynamic> route() =>
      MaterialPageRoute(builder: (context) => const ProjectsPage());
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Projects'),
      drawer: const CustomDrawer(),
      body: const Center(child: Text('This is the projects page.')),
    );
  }
}
