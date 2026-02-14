import 'package:flutter/material.dart';
import 'package:haber_portfolio/presentation/pages/contact/widgets/contacts_form_section.dart';
import 'package:haber_portfolio/presentation/pages/contact/widgets/contacts_info_section.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final horizontalPadding = screenWidth < 600 ? 20.0 : 40.0;

    return SingleChildScrollView(
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: 48,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Page Header
                Text(
                  'Get In Touch',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Have a question or want to work together? I\'d love to hear from you!',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context)
                            .colorScheme
                            .onSurface
                            .withOpacity(0.7),
                      ),
                ),
                const SizedBox(height: 48),
                
                // Contact Info Section
                const ContactInfoSection(),
                
                const SizedBox(height: 48),
                
                // Contact Form Section
                const ContactFormSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}