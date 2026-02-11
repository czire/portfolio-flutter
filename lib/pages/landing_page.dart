import 'package:flutter/material.dart';
import 'package:haber_portfolio/widgets/custom_drawer.dart';
import 'package:haber_portfolio/widgets/custom_app_bar.dart';
import 'package:haber_portfolio/widgets/landing_header_section.dart';
import 'package:haber_portfolio/widgets/landing_projects_section.dart';

class LandingPage extends StatelessWidget {
  static MaterialPageRoute<dynamic> route() =>
      MaterialPageRoute(builder: (context) => const LandingPage());

  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Portfolio'),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: [
              LandingHeaderSection(),
              const SizedBox(height: 64),
              const LandingProjectsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
