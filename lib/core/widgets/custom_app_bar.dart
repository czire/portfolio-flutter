import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onMenuPressed;
  final VoidCallback? onToggleTheme;

  const CustomAppBar({
    super.key,
    required this.title,
    this.onMenuPressed,
    this.onToggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),

      elevation: 0,
      leading: Builder(
        builder: (context) => IconButton(
          onPressed:
              onMenuPressed ??
              () {
                Scaffold.of(context).openDrawer();
              },
          icon: const Icon(Icons.menu), 
          tooltip: 'Menu',
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.brightness_6), // ✅ theme toggle icon
          onPressed: onToggleTheme,
          tooltip: 'Toggle Theme',
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
