import 'package:flutter/material.dart';
import 'package:gastdash_website_flutter/features/index/index.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  Future showSocialsDialog(BuildContext context) =>
      showDialog(context: context, builder: (context) => SocialsDialog());

  Future showMusicLinksDialog(BuildContext context) =>
      showDialog(context: context, builder: (context) => MusicDialog());

  void gotoTranslations(BuildContext context) {
    GoRouter.of(context).go('/translations');
  }

  Future<void> openArts() async {
    final Uri uri = Uri.parse('https://vk.com/gastdasharts');
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }

  @override
  void initState() {
    super.initState();

    Provider.of<ReleaseProvider>(context, listen: false).getReleases();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BackgroundProvider>(
      create: (context) => BackgroundProvider(),
      builder: (context, child) => Title(
        color: Colors.white,
        title: 'GASTDASH Official Website',
        child: Scaffold(
          body: Stack(
            children: [
              IndexBackground(),
              NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  if (notification is ScrollUpdateNotification) {
                    Provider.of<BackgroundProvider>(
                      context,
                      listen: false,
                    ).topOffset -= notification.scrollDelta!;
                  }
                  return false;
                },
                child: CustomScrollView(
                  slivers: [
                    IndexHeader(
                      actions: [
                        IndexHeaderAction(
                          onPressed: () => showSocialsDialog(context),
                          text: 'Socials',
                          icon: Icons.person_search,
                        ),
                        IndexHeaderAction(
                          onPressed: () => showMusicLinksDialog(context),
                          text: 'Music',
                          icon: Icons.music_note,
                        ),
                        IndexHeaderAction(
                          onPressed: () => gotoTranslations(context),
                          text: 'Translations',
                          icon: Icons.translate,
                        ),
                        IndexHeaderAction(
                          onPressed: () async => await openArts(),
                          text: 'Arts',
                          icon: Icons.image,
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
                          child: NewReleaseSection(),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(child: SizedBox(height: 128)),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Center(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: 800),
                            child: Consumer<ReleaseProvider>(
                              builder: (context, provider, child) {
                                return PreviousReleasesSection(
                                  releases: provider.releases,
                                );
                              },
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
                            child: AboutSection(),
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
                            child: HelpSection(),
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
                            child: ProjectSection(),
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(child: SizedBox(height: 128)),
                    SliverToBoxAdapter(
                      child: Center(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 800),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: AwardsSection(),
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(child: SizedBox(height: 128)),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text('2025 © GASTDASH ~ Alexey Shcherbakov'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
