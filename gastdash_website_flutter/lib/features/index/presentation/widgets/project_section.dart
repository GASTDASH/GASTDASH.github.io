import 'package:flutter/material.dart';
import 'package:gastdash_website_flutter/features/index/index.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Participation in projects',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 16,
          runSpacing: 16,
          children: [
            ProjectCard(
              text: 'The soundtrack to the Fallout: Equestria audiobook',
              url: 'https://vk.com/wall-197272590_63',
              imagePath: 'assets/images/foe.jpg',
            ),
            ProjectCard(
              text: 'Help with recording songs in cartoon translations',
              url: 'https://vk.com/wall-214697695_4543',
              imagePath: 'assets/images/jem.jpg',
            ),
            ProjectCard(
              text: 'The soundtrack for a small indie game',
              url: 'https://manetalk.com/ru/about_us',
              imagePath: 'assets/images/ponyland.jpg',
            ),
          ],
        ),
      ],
    );
  }
}
