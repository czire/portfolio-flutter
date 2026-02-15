import 'package:flutter/material.dart';
import 'package:haber_portfolio/core/helpers/logo.dart';

class WebNavbar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback toggleTheme;
  final int currentIndex;
  final Function(int) onNavigate;

  const WebNavbar({
    super.key,
    required this.toggleTheme,
    required this.currentIndex,
    required this.onNavigate,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          // Logo / Image
          buildLogo(context, size: 40),
          const SizedBox(width: 12),
          const Text("Czire's Portfolio"),
        ],
      ),
      actions: [
        _navItem("Home", 0),
        _navItem("About", 1),
        _navItem("Projects", 2),
        _navItem("Skills", 3),
        _navItem("Contact", 4),
        IconButton(
          icon: const Icon(Icons.brightness_6),
          onPressed: toggleTheme,
        ),
      ],
    );
  }

  Widget _navItem(String text, int index) {
    return TextButton(
      onPressed: () => onNavigate(index),
      child: Text(
        text,
        style: TextStyle(
          color: currentIndex == index ? Colors.amber : Colors.white,
          fontWeight: currentIndex == index
              ? FontWeight.bold
              : FontWeight.normal,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
