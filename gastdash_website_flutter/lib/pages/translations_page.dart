import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gastdash_website_flutter/widgets/blurred_container.dart';
import 'package:loading_indicator/loading_indicator.dart';

class TranslationsPage extends StatelessWidget {
  const TranslationsPage({super.key});

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
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Text(
              'Translations by GASTDASH',
              style: TextStyle(fontFamily: 'Righteous', fontSize: 32),
            ),
            centerTitle: true,
          ),
          SliverToBoxAdapter(child: SizedBox(height: 32)),
          SliverToBoxAdapter(
            child: FutureBuilder(
              future: _getTranslations(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
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
                  );
                }
                if (!snapshot.hasData) {
                  return Text('No translations');
                }
                return Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 32,
                  runSpacing: 32,
                  children: [
                    ...List.generate(snapshot.data!.length, (index) {
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
                    }),
                  ],
                );
              },
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 64)),
        ],
      ),
    );
  }
}
