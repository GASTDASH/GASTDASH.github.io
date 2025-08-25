import 'package:gastdash_website_flutter/features/index/index.dart';
import 'package:gastdash_website_flutter/features/translations/translations.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => IndexPage()),
    GoRoute(
      path: '/translations',
      builder: (context, state) => TranslationsPage(),
    ),
  ],
);
