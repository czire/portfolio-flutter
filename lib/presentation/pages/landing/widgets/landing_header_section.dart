import 'package:flutter/material.dart';

class LandingHeaderSection extends StatelessWidget {
  const LandingHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "I'm Czire Haber",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text(
                  'A passionate Flutter developer.',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    Flexible(
                      child: ElevatedButton(
                        onPressed: () {
                          // TODO: Implement more about me functionality
                        },
                        child: const Text('About Me'),
                      ),
                    ),
                    const SizedBox(width: 16),
                    OutlinedButton(
                      onPressed: () {
                        // TODO: Implement email copy functionality
                      },
                      child: const Text('Copy Email'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 32),
          ClipOval(
            child: Image.asset(
              'assets/images/profile.jpg',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
