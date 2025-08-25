import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.text,
    required this.iconName,
    this.url,
  });

  final String text;
  final String iconName;
  final String? url;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: url != null
          ? () async {
              final Uri uri = Uri.parse(url!);
              if (!await launchUrl(uri)) {
                throw Exception('Could not launch $uri');
              }
            }
          : null,
      style: TextButton.styleFrom(
        backgroundColor: Color(0xFF2b2930),
        padding: EdgeInsets.all(16),
        elevation: 6,
        shadowColor: Colors.black,
      ),
      label: Text(text, style: TextStyle(fontSize: 18)),
      icon: SvgPicture.asset('assets/icons/$iconName.svg', height: 28),
    );
  }
}
