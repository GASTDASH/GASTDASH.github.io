import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // backgroundColor: Color(0xFF383838),
            toolbarHeight: 80,
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
              ),
            ),
            actionsPadding: EdgeInsets.only(right: 32),
            actions: [
              TextButton.icon(
                onPressed: () {},
                label: Text('Socials'),
                icon: Icon(Icons.person_search),
              ),
              TextButton.icon(
                onPressed: () {},
                label: Text('Music'),
                icon: Icon(Icons.music_note),
              ),
              TextButton.icon(
                onPressed: () {},
                label: Text('Translations'),
                icon: Icon(Icons.translate),
              ),
              TextButton.icon(
                onPressed: () {},
                label: Text('Arts'),
                icon: Icon(Icons.image),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: SizedBox(
                height: 400,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        spacing: 12,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'New album: Diamond Tiara\'s Records',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Collection of audio book soundtracks\nSoundtracks for recordings of Diamond Tiara\'s character gradually going crazy. The music is filled with sadness and anxiety that gradually increases with each track.',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 100),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Image.asset('assets/images/DTR_cover.jpg'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //           SliverToBoxAdapter(
          //             child: HtmlWidget("""
          //  <a style="color: white; margin-left: 20px; ">
          //     <h1 style="margin-left: 70px; margin-bottom: 20px;">
          //       Check out my new remix on Pony Girl!
          //     </h1>
          //     <iframe width="560" height="315" src="https://www.youtube.com/embed/4WcRz62qxEY" title="YouTube video player" frameborder="1" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen>
          //     </iframe>
          //   </a>
          // """),
          // ),
        ],
      ),
    );
  }
}
