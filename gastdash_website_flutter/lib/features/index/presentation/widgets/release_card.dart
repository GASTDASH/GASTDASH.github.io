import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class ReleaseCard extends StatelessWidget {
  const ReleaseCard({super.key, required this.text, required this.videoUrl});

  final String text;
  final String videoUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 560,
      child: Column(
        spacing: 12,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          Divider(thickness: 1, color: Colors.white),
          Container(
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black, blurRadius: 50)],
            ),
            child: HtmlWidget("""
                <iframe width="560" height="315" src="$videoUrl" title="YouTube video player" frameborder="1" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen>
                          """),
          ),
        ],
      ),
    );
  }
}
