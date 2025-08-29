import 'package:flutter/material.dart';
import 'package:gastdash_website_flutter/core/core.dart';

class ReleaseCard extends StatelessWidget {
  const ReleaseCard({super.key, required this.text, required this.videoUrl});

  final String text;
  final String videoUrl;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 560),
      child: Column(
        spacing: 12,
        mainAxisSize: MainAxisSize.min,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: 80),
            child: Center(
              child: Text(
                text,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Divider(thickness: 1, color: Colors.white),
          Flexible(child: YoutubePlayerWeb(videoUrl: videoUrl)),
        ],
      ),
    );
  }
}
