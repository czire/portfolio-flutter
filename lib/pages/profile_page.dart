import 'package:flutter/material.dart';
import 'package:haber_portfolio/widgets/custom_drawer.dart';
import 'package:haber_portfolio/widgets/custom_app_bar.dart';

class ProfilePage extends StatelessWidget {
  static MaterialPageRoute<dynamic> route() =>
      MaterialPageRoute(builder: (context) => const ProfilePage());
      
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Profile'),
      drawer: const CustomDrawer(),
      body: const Center(child: Text('This is the profile page.')),
    );
  }
}
