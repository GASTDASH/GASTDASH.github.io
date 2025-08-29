import 'package:flutter/material.dart';
import 'package:gastdash_website_flutter/core/core.dart';

class HelpSection extends StatelessWidget {
  const HelpSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'How can I help?',
          style: TextStyles.sectionTitle,
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
              TextSpan(text: 'I can help you write a '),
              TextSpan(
                text: 'soundtrack for a game',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
              TextSpan(text: ' or perhaps another creative work, such as an '),
              TextSpan(
                text: 'audiobook',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
              TextSpan(text: ' or a '),
              TextSpan(
                text: 'movie',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
              TextSpan(
                text:
                    '. I want to try myself everywhere and I will be glad if you accept me into your team.\nI\'m willing to work for the ',
              ),
              TextSpan(
                text: 'minimum wage',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              TextSpan(
                text:
                    ' if the job doesn\'t consume much of my resources.\nIf you have a job for me, you can always ',
              ),
              TextSpan(
                text: 'contact me',
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
