import 'dart:async';

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
  late final Timer timer;
  late final AnimationController animationController;
  final pageController = PageController();

  int currentPage = 0;
  final Duration changePageInterval = Duration(seconds: 7);

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: changePageInterval,
    )..repeat();
    timer = Timer.periodic(changePageInterval, (_) {
      nextRelease();
    });
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
            child: AspectRatio(
              aspectRatio: 4 / 2.4,
              child: Row(
                spacing: 24,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: (currentPage != 0)
                        ? () => pageController.previousPage(
                            duration: Durations.medium4,
                            curve: Curves.easeOutCirc,
                          )
                        : null,
                    icon: Icon(Icons.chevron_left_rounded),
                  ),
                  Flexible(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 560),
                      child: NotificationListener<ScrollNotification>(
                        onNotification: (notification) => true,
                        child: PageView(
                          // estimatedPageSize: 600,
                          physics: NeverScrollableScrollPhysics(),
                          controller: pageController,
                          onPageChanged: (value) =>
                              setState(() => currentPage = value),
                          children: [
                            ReleaseCard(
                              text: 'A new orchestral soundtrack',
                              videoUrl:
                                  'https://www.youtube.com/watch?v=FCMxShOVb5Q',
                            ),
                            ReleaseCard(
                              text: 'Check out my Dubstep remix on Pony Girl!',
                              videoUrl:
                                  'https://www.youtube.com/watch?v=4WcRz62qxEY',
                            ),
                            ReleaseCard(
                              text: 'My new great midtempo tune',
                              videoUrl:
                                  'https://www.youtube.com/watch?v=5psoNBV_8W4',
                            ),
                            ReleaseCard(
                              text: 'Chiptune remix to Scootaloo!',
                              videoUrl:
                                  'https://www.youtube.com/watch?v=JT-2BjJj6Es',
                            ),
                            ReleaseCard(
                              text: 'Heavy dubstep track "Reborn"',
                              videoUrl:
                                  'https://www.youtube.com/watch?v=Wm9zvUXNOeY',
                            ),
                            ReleaseCard(
                              text: 'G-House collab',
                              videoUrl:
                                  'https://www.youtube.com/watch?v=DPJkiCcw4SE',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: nextRelease,
                    icon: Icon(Icons.chevron_right_rounded),
                  ),
                ],
              ),
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
            onDotClicked: (index) => pageController.animateToPage(
              index,
              duration: Durations.medium4,
              curve: Curves.easeOutCirc,
            ),
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
}
