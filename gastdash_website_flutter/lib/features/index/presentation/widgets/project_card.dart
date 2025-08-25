import 'package:flutter/material.dart';
import 'package:gastdash_website_flutter/core/core.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.text, this.url, this.imagePath});

  final String text;
  final String? imagePath;
  final String? url;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 300,
      child: Column(
        spacing: 8,
        children: [
          BlurredContainer(
            onTap: url != null
                ? () async {
                    final Uri uri = Uri.parse(url!);
                    if (!await launchUrl(uri)) {
                      throw Exception('Could not launch $uri');
                    }
                  }
                : null,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20),
              child: SizedBox(
                height: 150,
                width: 150,
                child: imagePath != null
                    ? Image.asset(imagePath!, fit: BoxFit.cover)
                    : SizedBox.shrink(),
              ),
            ),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
