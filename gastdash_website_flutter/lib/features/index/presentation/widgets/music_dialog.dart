import 'package:flutter/material.dart';
import 'package:gastdash_website_flutter/core/core.dart';
import 'package:gastdash_website_flutter/features/index/index.dart';

class MusicDialog extends StatelessWidget {
  const MusicDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return DialogCustom(
      children: [
        SocialButton(
          text: 'YouTube',
          iconName: 'youtube',
          url: 'https://youtube.com/gastdash',
        ),
        SocialButton(
          text: 'Soundcloud',
          iconName: 'soundcloud',
          url: 'https://soundcloud.com/gast-1288',
        ),
        SocialButton(
          text: 'VK Music',
          iconName: 'vk',
          url: 'https://vk.com/artist/gastdash',
        ),
        SocialButton(
          text: 'Spotify',
          iconName: 'spotify',
          url: 'https://spoti.fi/3ocYvy5',
        ),
        SocialButton(
          text: 'Yandex.Music',
          iconName: 'yandex',
          url: 'https://music.yandex.ru/artist/9324977',
        ),
        SocialButton(
          text: 'Newgrounds',
          iconName: 'newgrounds',
          url: 'https://gast1288.newgrounds.com',
        ),
      ],
    );
  }
}
