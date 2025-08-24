import 'package:flutter/material.dart';
import 'package:gastdash_website_flutter/features/index/index.dart';

class SocialsDialog extends StatelessWidget {
  const SocialsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              spacing: 8,
              mainAxisSize: MainAxisSize.min,
              children: [
                SocialButton(text: 'VKontakte', iconName: 'vk'),
                SocialButton(text: 'VKontakte (group)', iconName: 'vk'),
              ],
            ),
            Row(
              spacing: 8,
              mainAxisSize: MainAxisSize.min,
              children: [
                SocialButton(text: 'Telegram', iconName: 'telegram'),
                SocialButton(text: 'Telegram (group)', iconName: 'telegram'),
              ],
            ),
            SocialButton(text: 'YouTube', iconName: 'youtube'),
            SocialButton(text: 'Twitter', iconName: 'twitter'),
            SocialButton(text: 'GitHub', iconName: 'github'),
            SocialButton(text: 'Twitch', iconName: 'twitch'),
          ],
        ),
      ),
    );
  }
}
