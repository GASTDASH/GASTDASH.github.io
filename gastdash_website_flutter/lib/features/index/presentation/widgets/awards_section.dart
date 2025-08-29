import 'package:flutter/material.dart';
import 'package:gastdash_website_flutter/core/core.dart';
import 'package:url_launcher/url_launcher.dart';

class AwardsSection extends StatelessWidget {
  const AwardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('My awards', style: TextStyles.sectionTitle),
        SizedBox(height: 16),
        BlurredContainer(
          width: 600,
          onTap: () async {
            final Uri uri = Uri.parse(
              'https://docs.google.com/spreadsheets/d/1s7YCveqDEsbqTpwVoUiTMIUu5WuW-kI63JrMObPHDCc',
            );

            if (!await launchUrl(uri)) {
              throw Exception('Could not launch $uri');
            }
          },
          child: Image.asset('assets/images/olymp.png'),
        ),
        SizedBox(height: 8),
        Text(
          'Winner of the International Certified Olympiad',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
