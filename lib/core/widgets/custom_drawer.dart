import 'package:flutter/material.dart';
import 'package:haber_portfolio/core/helpers/download_cv.dart';
import 'package:haber_portfolio/core/helpers/logo.dart';

class CustomDrawer extends StatelessWidget {
  final void Function(int, BuildContext)? onTap;
  final int currentIndex;

  const CustomDrawer({super.key, this.onTap, this.currentIndex = 0});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Row(
              children: [
                buildLogo(context),
                const SizedBox(width: 16.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Czire Haber',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // const SizedBox(height: 8.0),
                    Text(
                      'Flutter Developer',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Landing page
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            selected: currentIndex == 0,
            selectedTileColor: Theme.of(context).colorScheme.secondaryContainer,
            onTap: () {
              onTap?.call(0, context);
            },
          ),

          // About Me page
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('About Me'),
            selected: currentIndex == 1,
            selectedTileColor: Theme.of(context).colorScheme.secondaryContainer,
            onTap: () {
              onTap?.call(1, context);
            },
          ),

          // Projects page
          ListTile(
            leading: const Icon(Icons.work),
            title: const Text('Projects'),
            selected: currentIndex == 2,
            selectedTileColor: Theme.of(context).colorScheme.secondaryContainer,
            onTap: () => onTap?.call(2, context),
          ),

          // Skills page
          ListTile(
            leading: const Icon(Icons.psychology),
            title: const Text('Skills'),
            selected: currentIndex == 3,
            selectedTileColor: Theme.of(context).colorScheme.secondaryContainer,
            onTap: () => onTap?.call(3, context),
          ),

          // Contact page
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('Contact'),
            selected: currentIndex == 4,
            selectedTileColor: Theme.of(context).colorScheme.secondaryContainer,
            onTap: () => onTap?.call(4, context),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.download),
            title: const Text('Download CV'),
            onTap: () {
              DownloadCV.downloadCV()
                  .then(
                    (_) => ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('CV downloaded successfully!'),
                      ),
                    ),
                  )
                  .catchError(
                    (error) => ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Failed to download CV. Please try again later.',
                        ),
                      ),
                    ),
                  );
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
