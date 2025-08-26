import 'package:flutter/material.dart';
import 'package:gastdash_website_flutter/features/index/index.dart';

class PreviousReleasesSection extends StatelessWidget {
  const PreviousReleasesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'My previous releases',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 32),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 64,
          runSpacing: 64,
          children: [
            ReleaseCard(
              text: 'A new orchestral soundtrack',
              videoUrl: 'https://www.youtube.com/embed/FCMxShOVb5Q',
            ),
            ReleaseCard(
              text: 'Check out my Dubstep remix on Pony Girl!',
              videoUrl: 'https://www.youtube.com/embed/4WcRz62qxEY',
            ),
            ReleaseCard(
              text: 'My new great midtempo tune',
              videoUrl: 'https://www.youtube.com/embed/5psoNBV_8W4',
            ),
            ReleaseCard(
              text: 'Chiptune remix to Scootaloo!',
              videoUrl: 'https://www.youtube.com/embed/JT-2BjJj6Es',
            ),
            ReleaseCard(
              text: 'Heavy dubstep track "Reborn"',
              videoUrl: 'https://www.youtube.com/embed/Wm9zvUXNOeY',
            ),
          ],
        ),
      ],
    );
  }
}
