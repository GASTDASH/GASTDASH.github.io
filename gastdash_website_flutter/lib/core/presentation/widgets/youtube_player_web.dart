import 'package:flutter/material.dart';
import 'package:pointer_interceptor_web/pointer_interceptor_web.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubePlayerWeb extends StatefulWidget {
  const YoutubePlayerWeb({super.key, required this.videoUrl});

  final String videoUrl;

  @override
  State<YoutubePlayerWeb> createState() => _YoutubePlayerWebState();
}

class _YoutubePlayerWebState extends State<YoutubePlayerWeb> {
  late final YoutubePlayerController controller;
  bool intercepting = true;

  @override
  void initState() {
    super.initState();

    final params = Uri.parse(widget.videoUrl).queryParameters;
    final videoId = params['v'];

    assert(videoId != null);

    controller = YoutubePlayerController(
      params: YoutubePlayerParams(
        showFullscreenButton: true,
        strictRelatedVideos: true,
      ),
    );
    controller.cueVideoById(videoId: videoId!);
    controller.listen((event) {
      if (event.playerState == PlayerState.paused) {
        setState(() => intercepting = true);
      } else if (event.playerState == PlayerState.playing) {
        setState(() => intercepting = false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        YoutubePlayer(controller: controller, gestureRecognizers: {}),
        PointerInterceptorWeb().buildWidget(
          intercepting: intercepting,
          child: SizedBox(
            width: 560,
            height: 315,
            child: GestureDetector(
              onTap: () {
                controller.playVideo();
              },
            ),
          ),
        ),
      ],
    );
  }
}
