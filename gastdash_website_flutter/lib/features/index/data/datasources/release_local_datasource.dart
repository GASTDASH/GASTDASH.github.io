import 'package:gastdash_website_flutter/features/index/index.dart';

class ReleaseLocalDatasource {
  static const List<ReleaseModel> _releases = [
    ReleaseModel(
      name: 'A new orchestral soundtrack',
      videoUrl: 'https://www.youtube.com/watch?v=FCMxShOVb5Q',
    ),
    ReleaseModel(
      name: 'Check out my Dubstep remix on Pony Girl!',
      videoUrl: 'https://www.youtube.com/watch?v=4WcRz62qxEY',
    ),
    ReleaseModel(
      name: 'My new great midtempo tune',
      videoUrl: 'https://www.youtube.com/watch?v=5psoNBV_8W4',
    ),
    ReleaseModel(
      name: 'Chiptune remix to Scootaloo!',
      videoUrl: 'https://www.youtube.com/watch?v=JT-2BjJj6Es',
    ),
    ReleaseModel(
      name: 'Heavy dubstep track "Reborn"',
      videoUrl: 'https://www.youtube.com/watch?v=Wm9zvUXNOeY',
    ),
    ReleaseModel(
      name: 'G-House collab',
      videoUrl: 'https://www.youtube.com/watch?v=DPJkiCcw4SE',
    ),
  ];

  List<ReleaseModel> getReleases() => _releases;
}
