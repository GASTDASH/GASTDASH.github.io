import 'package:flutter/material.dart';
import 'package:gastdash_website_flutter/core/core.dart';
import 'package:url_launcher/url_launcher.dart';

class NewReleaseSection extends StatelessWidget {
  const NewReleaseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      // mainAxisSize: MainAxisSize.min,
      // mainAxisAlignment: MainAxisAlignment.center,
      direction: MediaQuery.of(context).size.width > 900
          ? Axis.horizontal
          : Axis.vertical,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 12,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: Column(
              spacing: 12,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: MediaQuery.of(context).size.width > 900
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.center,
              children: [
                Text(
                  'New album: Diamond Tiara\'s Records',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Collection of audio book soundtracks.\nSoundtracks for recordings of Diamond Tiara\'s character gradually going crazy. The music is filled with sadness and anxiety that gradually increases with each track.',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 32),
                Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    BlurredContainer(
                      onTap: () async {
                        final Uri uri = Uri.parse(
                          'https://band.link/gastdash_DTR',
                        );
                        if (!await launchUrl(uri)) {
                          throw Exception('Could not launch $uri');
                        }
                      },
                      child: Row(
                        spacing: 8,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Listen now', style: TextStyle(fontSize: 21)),
                          Icon(Icons.music_note),
                        ],
                      ),
                    ),
                    BlurredContainer(
                      onTap: () async {
                        final Uri uri = Uri.parse(
                          'https://youtube.com/playlist?list=PLAC6EhwV55yOqK_5qZ3OixXJVzT2tjJn9&si=f8IodeV3wmQH0803',
                        );
                        if (!await launchUrl(uri)) {
                          throw Exception('Could not launch $uri');
                        }
                      },
                      child: Row(
                        spacing: 8,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Watch on YouTube',
                            style: TextStyle(fontSize: 21),
                          ),
                          Icon(Icons.play_circle),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 100),
        BlurredContainer(
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/DTR_cover.jpg'),
              SizedBox(height: 16),
              Text(
                'GASTDASH',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                overflow: TextOverflow.fade,
              ),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Album (EP) - 6 Tracks'), Text('11 min')],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
