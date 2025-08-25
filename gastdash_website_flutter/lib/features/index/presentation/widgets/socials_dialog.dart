import 'package:flutter/material.dart';
import 'package:gastdash_website_flutter/core/core.dart';
import 'package:gastdash_website_flutter/features/index/index.dart';

class SocialsDialog extends StatelessWidget {
  const SocialsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return DialogCustom(
      children: [
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            SocialButton(
              text: 'VKontakte',
              iconName: 'vk',
              url: 'https://vk.com/gastdash',
            ),
            SocialButton(
              text: 'VKontakte (group)',
              iconName: 'vk',
              url: 'https://vk.com/gastdashofficial',
            ),
          ],
        ),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            SocialButton(
              text: 'Telegram',
              iconName: 'telegram',
              url: 'https://t.me/gastdash',
            ),
            SocialButton(
              text: 'Telegram (group)',
              iconName: 'telegram',
              url: 'https://t.me/gastikdash',
            ),
          ],
        ),
        SocialButton(
          text: 'YouTube',
          iconName: 'youtube',
          url: 'https://youtube.com/gastdash',
        ),
        SocialButton(
          text: 'Twitter',
          iconName: 'twitter',
          url: 'https://twitter.com/gast1288',
        ),
        SocialButton(
          text: 'GitHub',
          iconName: 'github',
          url: 'https://github.com/gastdash',
        ),
        SocialButton(
          text: 'Twitch',
          iconName: 'twitch',
          url: 'https://www.twitch.tv/gast1288',
        ),
      ],
    );
  }
}
