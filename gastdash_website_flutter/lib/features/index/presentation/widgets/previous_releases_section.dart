import 'dart:async';

import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:gastdash_website_flutter/core/core.dart';
import 'package:gastdash_website_flutter/features/index/index.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PreviousReleasesSection extends StatefulWidget {
  const PreviousReleasesSection({super.key});

  @override
  State<PreviousReleasesSection> createState() =>
      _PreviousReleasesSectionState();
}

class _PreviousReleasesSectionState extends State<PreviousReleasesSection>
    with TickerProviderStateMixin {
  static const Duration changePageInterval = Duration(seconds: 7);
  // TODO: Перенести в слой Data
  final List<Release> releases = [
    Release(
      name: 'A new orchestral soundtrack',
      videoUrl: 'https://www.youtube.com/watch?v=FCMxShOVb5Q',
    ),
    Release(
      name: 'Check out my Dubstep remix on Pony Girl!',
      videoUrl: 'https://www.youtube.com/watch?v=4WcRz62qxEY',
    ),
    Release(
      name: 'My new great midtempo tune',
      videoUrl: 'https://www.youtube.com/watch?v=5psoNBV_8W4',
    ),
    Release(
      name: 'Chiptune remix to Scootaloo!',
      videoUrl: 'https://www.youtube.com/watch?v=JT-2BjJj6Es',
    ),
    Release(
      name: 'Heavy dubstep track "Reborn"',
      videoUrl: 'https://www.youtube.com/watch?v=Wm9zvUXNOeY',
    ),
    Release(
      name: 'G-House collab',
      videoUrl: 'https://www.youtube.com/watch?v=DPJkiCcw4SE',
    ),
  ];

  late Timer timer;
  final pageController = PageController();

  int currentPage = 0;

  void initTimer() =>
      timer = Timer.periodic(changePageInterval, (_) => nextRelease());

  void nextRelease() => currentPage != 5
      ? pageController.nextPage(
          duration: Durations.medium4,
          curve: Curves.easeOutCirc,
        )
      : pageController.animateToPage(
          0,
          duration: Durations.medium4,
          curve: Curves.easeOutCirc,
        );

  void previousRelease() => pageController.previousPage(
    duration: Durations.medium4,
    curve: Curves.easeOutCirc,
  );

  @override
  void initState() {
    super.initState();

    initTimer();
  }

  @override
  void dispose() {
    timer.cancel();
    pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 800),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Text(
              'My previous releases',
              style: TextStyles.sectionTitle,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 32),
          Flexible(
            child: Row(
              spacing: 12,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: (currentPage != 0)
                      ? () {
                          previousRelease();
                          timer.cancel();
                          initTimer();
                        }
                      : null,
                  icon: Icon(Icons.chevron_left_rounded),
                ),
                Flexible(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 560),
                    child: NotificationListener<ScrollNotification>(
                      onNotification: (notification) => true,
                      child: ExpandablePageView.builder(
                        estimatedPageSize: 400,
                        physics: NeverScrollableScrollPhysics(),
                        controller: pageController,
                        onPageChanged: (value) =>
                            setState(() => currentPage = value),
                        itemCount: releases.length,
                        itemBuilder: (context, i) => ReleaseCard(
                          text: releases[i].name,
                          videoUrl: releases[i].videoUrl,
                          onPaused: () => initTimer(),
                          onPlaying: () => timer.cancel(),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    nextRelease();
                    timer.cancel();
                    initTimer();
                  },
                  icon: Icon(Icons.chevron_right_rounded),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          SmoothPageIndicator(
            controller: pageController,
            count: 6,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.white,
              dotColor: Colors.grey.shade600,
            ),
            onDotClicked: (index) {
              pageController.animateToPage(
                index,
                duration: Durations.medium4,
                curve: Curves.easeOutCirc,
              );
              timer.cancel();
              initTimer();
            },
          ),
          // SizedBox(height: 16),
          // SizedBox(
          //   width: 170,
          //   child: AnimatedBuilder(
          //     animation: animationController,
          //     builder: (BuildContext context, Widget? child) {
          //       return LinearProgressIndicator(
          //         value: animationController.value,
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
