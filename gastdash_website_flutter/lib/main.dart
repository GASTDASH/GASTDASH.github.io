import 'package:flutter/material.dart';
import 'package:gastdash_website_flutter/index_page.dart';

void main() {
  runApp(const WebSiteApp());
}

class WebSiteApp extends StatelessWidget {
  const WebSiteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins', brightness: Brightness.dark),
      home: IndexPage(),
    );
  }
}
