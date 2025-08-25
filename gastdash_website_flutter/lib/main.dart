import 'package:flutter/material.dart';
import 'package:gastdash_website_flutter/routing/router.dart';

void main() {
  runApp(const WebSiteApp());
}

class WebSiteApp extends StatelessWidget {
  const WebSiteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(fontFamily: 'Poppins', brightness: Brightness.dark),
    );
  }
}
