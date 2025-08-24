import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TranslationsPage extends StatelessWidget {
  const TranslationsPage({super.key});

  Future<List<String>> _getTranslations() async {
    // >> To get paths you need these 2 lines
    final manifestContent = await rootBundle.loadString('AssetManifest.json');

    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    // >> To get paths you need these 2 lines

    final imagePaths = manifestMap.keys
        .where((String key) => key.contains('translations/'))
        // .where((String key) => key.contains('.svg'))
        .toList();

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
              builder: (context, asyncSnapshot) {
                return Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 32,
                  runSpacing: 32,
                  children: [
                    ...List.generate(
                      19,
                      (index) => Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(color: Colors.amber),
                      ),
                    ),
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
