import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gastdash_website_flutter/core/core.dart';
import 'package:loading_indicator/loading_indicator.dart';

class TranslationsPage extends StatelessWidget {
  const TranslationsPage({super.key});

  // TODO: Перенести в другой слой
  Future<List<String>> _getTranslations() async {
    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);

    final imagePaths = manifestMap.keys
        .where((String key) => key.contains('translations/'))
        .toList();

    imagePaths.sort((a, b) {
      int numA = int.parse(a.split('/')[1].split('.')[0]);
      int numB = int.parse(b.split('/')[1].split('.')[0]);

      return numA.compareTo(numB);
    });

    return imagePaths;
  }

  @override
  Widget build(BuildContext context) {
    return Title(
      color: Colors.white,
      title: 'GASTDASH\'s Translations',
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 100,
              title: Text(
                'Translations by GASTDASH',
                style: TextStyle(fontFamily: 'Righteous', fontSize: 32),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              centerTitle: true,
            ),
            SliverToBoxAdapter(child: SizedBox(height: 32)),
            FutureBuilder(
              future: _getTranslations(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return SliverToBoxAdapter(
                    child: Center(
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: LoadingIndicator(
                          indicatorType: Indicator.audioEqualizer,
                          colors: [
                            Colors.purple.shade200,
                            Colors.deepPurple.shade200,
                            Colors.teal.shade200,
                          ],
                        ),
                      ),
                    ),
                  );
                }
                if (!snapshot.hasData) {
                  return SliverToBoxAdapter(child: Text('No translations'));
                }
                return SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      final String imagePath = snapshot.data![index];

                      return BlurredContainer(
                        onTap: () => showDialog(
                          context: context,
                          builder: (context) =>
                              Dialog(child: Image.asset(imagePath)),
                        ),
                        width: 400,
                        height: 400,
                        child: Image.asset(imagePath, cacheWidth: 400),
                      );
                    }, childCount: snapshot.data!.length),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 250,
                      // crossAxisCount: 4,
                      crossAxisSpacing: 32,
                      mainAxisSpacing: 32,
                    ),
                  ),
                );
              },
            ),
            SliverToBoxAdapter(child: SizedBox(height: 64)),
          ],
        ),
      ),
    );
  }
}
