import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'About me',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16),
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.w300,
            ),
            children: [
              TextSpan(
                text:
                    'I am a beginning musician who has been trying to reach high in music for more than ',
              ),
              TextSpan(
                text: '6 years',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              TextSpan(
                text:
                    ' and always try to learn something new. I write music in a variety of styles, from ',
              ),
              TextSpan(
                text: 'heavy bass music',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              TextSpan(text: ' to '),
              TextSpan(
                text: 'epic orchestra',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              TextSpan(text: '.'),
            ],
          ),
        ),
      ],
    );
  }
}
