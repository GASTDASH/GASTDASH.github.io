import 'package:flutter/material.dart';
import 'package:gastdash_website_flutter/features/index/index.dart';
import 'package:provider/provider.dart';

class IndexBackground extends StatelessWidget {
  const IndexBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BackgroundProvider>(
      builder: (context, provider, child) {
        return Stack(
          children: [
            Positioned(
              top: provider.topOffset / 20,
              width: MediaQuery.of(context).size.width,
              height: 1400,
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  'assets/images/GASTDASH_BG.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Positioned(
              top: provider.topOffset / 4,
              width: MediaQuery.of(context).size.width,
              child: BackgroundLayer1(color: Colors.white),
            ),
            Positioned(
              top: provider.topOffset / 2,
              width: MediaQuery.of(context).size.width,
              child: BackgroundLayer2(color: Colors.cyan.shade100),
            ),
          ],
        );
      },
    );
  }
}
