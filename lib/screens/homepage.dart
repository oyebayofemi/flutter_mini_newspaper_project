import 'package:flutter/material.dart';
import 'package:mini_newspaper_project/services/news.dart';
import 'package:mini_newspaper_project/utils/list_view_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<News> newsData = [
    News(
      title:
          '10 Franchises That Missed A Golden Opportunity To Tell A Better Story, According To Reddit',
      body:
          'So many franchises work really hard to build a world full of fascinating lore, and because of that, sometimes small elements of a movie are more interesting than the main premise.Some movies in franchises could have been so much better if they focused on something that was hinted at instead of the main narrative. Between bringing back Tom in The Godfather Part III, focusing on Men In Black 3\'s moon prison, and Popeye immersing himself in French culture in French Connection II, Redditors have some intriguing fixes.',
      url: '10 Franchise Title.jpg',
      urlPage: '10 Franchise.jpg',
    ),
    News(
        title:
            '‘The outrage had been percolating…’ The winner of our graphic short story prize 2021.',
        body:
            'There can’t be many things more cheering on a dark January night than having to tell someone they’ve won a prize, and when I telephone Astrid Goldsmith to give her just such a bit of good news, her reaction is everything I hoped it would be. For a while, Goldsmith, an animator who lives in Folkestone where she makes stop-motion films in her garage, struggles to speak in full sentences. She is just so thrilled. “That is the greatest compliment,” she says, when I tell her that her story, A Funeral in Freiburg, the winner of this year’s Observer/Jonathan Cape graphic short story prize, brings to mind the work of that genius Posy Simmonds. “I love her tone. I always have.',
        url: 'outrage Title.jpg',
        urlPage: 'outrage.jpg'),
    News(
        title:
            'The real beauty of Wordle is how its emoji results tell a story',
        body:
            'Did you struggle with Wordle today? I sure as hell did, racking up my second ever failure since I started playing the game at the beginning of the year. I was annoyed at myself more than the puzzle and eased that frustration by sharing my results on Twitter.As I did, I realized why the game’s auto-generated grids of emoji are so brilliant. It’s not just that they’re social (though that certainly helps), nor is it that they’re intriguing (there’s no link to the game and no explanation for the uninitiated as to what the emoji mean). No, it’s because each grid tells a story with wonderful concision. With just 30 squares and three colors, Wordle’s emoji results convey narratives of luck, frustration, perseverance, and failure; each grid a miniature story, like a landscape painted in a matchbox.',
        url: 'emoji.jpg',
        urlPage: 'emoji.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute.of(context)?.settings.arguments;
    print(data);

    return Scaffold(
      appBar: AppBar(
        title: Text('NEWSTODAY'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              icon: Icon(Icons.exit_to_app_rounded)),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            child: Image.asset(
              'assets/outrage.jpg',
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.7),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          ListViewWidget(newsData: newsData)
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('${data['username'].text}'),
                accountEmail: Text('${data['email'].text}')),
          ],
        ),
      ),
    );
  }
}
