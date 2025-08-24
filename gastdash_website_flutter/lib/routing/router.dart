import 'package:gastdash_website_flutter/pages/index_page.dart';
import 'package:gastdash_website_flutter/pages/translations_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => IndexPage(),
      routes: [
        GoRoute(
          path: 'translations',
          builder: (context, state) => TranslationsPage(),
        ),
      ],
    ),
  ],
);
