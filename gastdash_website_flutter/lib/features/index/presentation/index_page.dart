import 'package:flutter/material.dart';
import 'package:gastdash_website_flutter/core/core.dart';
import 'package:gastdash_website_flutter/features/index/index.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  void gotoTranslations(BuildContext context) {
    GoRouter.of(context).push('/translations');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(right: 300, top: 120),
            child: Align(
              alignment: AlignmentGeometry.topRight,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 252, 102, 255),
                      blurRadius: 100,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(right: 30, top: 450),
            child: Align(
              alignment: AlignmentGeometry.topRight,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(color: Color(0xFF18B2DE), blurRadius: 100),
                  ],
                ),
              ),
            ),
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                surfaceTintColor: Colors.transparent,
                backgroundColor: Colors.black26,
                toolbarHeight: 80,
                pinned: true,
                title: Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: Text(
                    'GASTDASH Official Website',
                    style: TextStyle(
                      fontFamily: 'Righteous',
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      shadows: [
                        Shadow(
                          color: Colors.black54,
                          blurRadius: 12,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    overflow: TextOverflow.fade,
                  ),
                ),
                actionsPadding: EdgeInsets.only(right: 32),
                actions: MediaQuery.of(context).size.width > 480
                    ? [
                        TextButton.icon(
                          onPressed: () => showSocialsDialog(context),
                          label: Text('Socials'),
                          icon: Icon(Icons.person_search),
                        ),

                        TextButton.icon(
                          onPressed: () => showMusicLinksDialog(context),
                          label: Text('Music'),
                          icon: Icon(Icons.music_note),
                        ),
                        TextButton.icon(
                          onPressed: () => gotoTranslations(context),
                          label: Text('Translations'),
                          icon: Icon(Icons.translate),
                        ),
                        TextButton.icon(
                          onPressed: () async => await openArts(),
                          label: Text('Arts'),
                          icon: Icon(Icons.image),
                        ),
                      ]
                    : [
                        PopupMenuButton(
                          icon: Icon(Icons.menu),
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Text('Socials'),
                              onTap: () => showSocialsDialog(context),
                            ),
                            PopupMenuItem(
                              child: Text('Music'),
                              onTap: () => showMusicLinksDialog(context),
                            ),
                            PopupMenuItem(
                              child: Text('Translations'),
                              onTap: () => gotoTranslations(context),
                            ),
                            PopupMenuItem(
                              child: Text('Arts'),
                              onTap: () async => await openArts(),
                            ),
                          ],
                        ),
                      ],
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 64,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 800),
                    child: Flex(
                      // mainAxisSize: MainAxisSize.min,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      direction: MediaQuery.of(context).size.width > 900
                          ? Axis.horizontal
                          : Axis.vertical,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 12,
                      children: [
                        Flexible(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: 700),
                            child: Column(
                              spacing: 12,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:
                                  MediaQuery.of(context).size.width > 900
                                  ? CrossAxisAlignment.start
                                  : CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'New album: Diamond Tiara\'s Records',
                                  style: TextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Collection of audio book soundtracks.\nSoundtracks for recordings of Diamond Tiara\'s character gradually going crazy. The music is filled with sadness and anxiety that gradually increases with each track.',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                SizedBox(height: 32),
                                Wrap(
                                  spacing: 16,
                                  runSpacing: 16,
                                  children: [
                                    BlurredContainer(
                                      onTap: () async {
                                        final Uri uri = Uri.parse(
                                          'https://band.link/gastdash_DTR',
                                        );
                                        if (!await launchUrl(uri)) {
                                          throw Exception(
                                            'Could not launch $uri',
                                          );
                                        }
                                      },
                                      child: Row(
                                        spacing: 8,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            'Listen now',
                                            style: TextStyle(fontSize: 21),
                                          ),
                                          Icon(Icons.music_note),
                                        ],
                                      ),
                                    ),
                                    BlurredContainer(
                                      onTap: () async {
                                        final Uri uri = Uri.parse(
                                          'https://youtube.com/playlist?list=PLAC6EhwV55yOqK_5qZ3OixXJVzT2tjJn9&si=f8IodeV3wmQH0803',
                                        );
                                        if (!await launchUrl(uri)) {
                                          throw Exception(
                                            'Could not launch $uri',
                                          );
                                        }
                                      },
                                      child: Row(
                                        spacing: 8,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            'Watch on YouTube',
                                            style: TextStyle(fontSize: 21),
                                          ),
                                          Icon(Icons.play_circle),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 100),
                        BlurredContainer(
                          width: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset('assets/images/DTR_cover.jpg'),
                              SizedBox(height: 16),
                              Text(
                                'GASTDASH',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                                overflow: TextOverflow.fade,
                              ),
                              SizedBox(height: 6),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Album (EP) - 6 Tracks'),
                                  Text('11 min'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 128)),
              SliverToBoxAdapter(
                child: Center(
                  child: Text(
                    'My previous releases',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 32)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 64),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 1300),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 64,
                        runSpacing: 64,
                        children: [
                          ReleaseCard(
                            text: 'A new orchestral soundtrack',
                            videoUrl:
                                'https://www.youtube.com/embed/FCMxShOVb5Q',
                          ),
                          ReleaseCard(
                            text: 'Check out my Dubstep remix on Pony Girl!',
                            videoUrl:
                                'https://www.youtube.com/embed/4WcRz62qxEY',
                          ),
                          ReleaseCard(
                            text: 'My new great midtempo tune',
                            videoUrl:
                                'https://www.youtube.com/embed/5psoNBV_8W4',
                          ),
                          ReleaseCard(
                            text: 'Chiptune remix to Scootaloo!',
                            videoUrl:
                                'https://www.youtube.com/embed/JT-2BjJj6Es',
                          ),
                          ReleaseCard(
                            text: 'Heavy dubstep track "Reborn"',
                            videoUrl:
                                'https://www.youtube.com/embed/Wm9zvUXNOeY',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 128)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 800),
                      child: Column(
                        children: [
                          Text(
                            'About me',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 16),
                          RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium
                                  ?.copyWith(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w300,
                                  ),
                              children: [
                                TextSpan(
                                  text:
                                      'I am a beginning musician who has been trying to reach high in music for more than ',
                                ),
                                TextSpan(
                                  text: '6 years',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                TextSpan(
                                  text:
                                      ' and always try to learn something new. I write music in a variety of styles, from ',
                                ),
                                TextSpan(
                                  text: 'heavy bass music',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                TextSpan(text: ' to '),
                                TextSpan(
                                  text: 'epic orchestra',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                TextSpan(text: '.'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 128)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 800),
                      child: Column(
                        children: [
                          Text(
                            'How can I help?',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 16),
                          RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium
                                  ?.copyWith(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w300,
                                  ),
                              children: [
                                TextSpan(text: 'I can help you write a '),
                                TextSpan(
                                  text: 'soundtrack for a game',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ' or perhaps another creative work, such as an ',
                                ),
                                TextSpan(
                                  text: 'audiobook',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                TextSpan(text: ' or a '),
                                TextSpan(
                                  text: 'movie',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      '. I want to try myself everywhere and I will be glad if you accept me into your team.\nI\'m willing to work for the ',
                                ),
                                TextSpan(
                                  text: 'minimum wage',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                TextSpan(
                                  text:
                                      ' if the job doesn\'t consume much of my resources.\nIf you have a job for me, you can always ',
                                ),
                                TextSpan(
                                  text: 'contact me',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                TextSpan(text: '.'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 128)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 800),
                      child: Column(
                        children: [
                          Text(
                            'Participation in projects',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 16),
                          Wrap(
                            alignment: WrapAlignment.center,
                            spacing: 16,
                            runSpacing: 16,
                            children: [
                              ProjectCard(
                                text:
                                    'The soundtrack to the Fallout: Equestria audiobook',
                                url: 'https://vk.com/wall-197272590_63',
                                imagePath: 'assets/images/foe.jpg',
                              ),
                              ProjectCard(
                                text:
                                    'Help with recording songs in cartoon translations',
                                url: 'https://vk.com/wall-214697695_4543',
                                imagePath: 'assets/images/jem.jpg',
                              ),
                              ProjectCard(
                                text: 'The soundtrack for a small indie game',
                                url: 'https://manetalk.com/ru/about_us',
                                imagePath: 'assets/images/ponyland.jpg',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 128)),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> openArts() async {
    final Uri uri = Uri.parse('https://vk.com/gastdasharts');
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }

  Future showSocialsDialog(BuildContext context) =>
      showDialog(context: context, builder: (context) => SocialsDialog());

  Future showMusicLinksDialog(BuildContext context) =>
      showDialog(context: context, builder: (context) => MusicDialog());
}
