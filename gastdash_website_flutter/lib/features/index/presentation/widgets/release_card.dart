import 'package:flutter/material.dart';
import 'package:gastdash_website_flutter/core/core.dart';

class ReleaseCard extends StatelessWidget {
  const ReleaseCard({
    super.key,
    required this.text,
    required this.videoUrl,
    this.onPaused,
    this.onPlaying,
  });

  final String text;
  final String videoUrl;
  final VoidCallback? onPaused;
  final VoidCallback? onPlaying;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 400),
      child: Column(
        spacing: 12,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 100),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Divider(thickness: 1, color: Colors.white),
          YoutubePlayerWeb(
            videoUrl: videoUrl,
            onPaused: onPaused,
            onPlaying: onPlaying,
          ),
        ],
      ),
    );
  }
}
