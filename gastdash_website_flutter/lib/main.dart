import 'package:flutter/material.dart';
import 'package:gastdash_website_flutter/features/index/index.dart';
import 'package:gastdash_website_flutter/routing/router.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

void main() async {
  GetIt.I.registerLazySingleton<ReleaseLocalDatasource>(
    () => ReleaseLocalDatasource(),
  );
  GetIt.I.registerLazySingleton<ReleaseRepository>(
    () => ReleaseRepositoryImpl(
      localDatasource: GetIt.I<ReleaseLocalDatasource>(),
    ),
  );

  runApp(const WebSiteApp());
}

class WebSiteApp extends StatelessWidget {
  const WebSiteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ReleaseProvider>(
      create: (context) =>
          ReleaseProvider(releaseRepository: GetIt.I<ReleaseRepository>()),
      child: MaterialApp.router(
        routerConfig: router,
        theme: ThemeData(fontFamily: 'Poppins', brightness: Brightness.dark),
      ),
    );
  }
}
