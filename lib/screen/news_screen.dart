import 'package:flutter/material.dart';
import 'package:hackathon/screen/timeline/carrier_timeline.dart';
import 'package:tcard/tcard.dart';
import 'package:newsapi/newsapi.dart';
import 'package:hackathon/card_list.dart';

const apiKey = '3cf1d14308bd4105a2486f2155a49bfa';

class NewsScreen extends StatefulWidget {
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  TCardController _controller = TCardController();
  ArticleResponse topHeadlines;

  @override
  void initState() {
    super.initState();
    getNewsData();
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  void getNewsData() async {
    var newsApi = NewsApi();
    newsApi.init(
      debugLog: false,
      apiKey: 'foo',
    );
    //var aut = newsApi.author;
    newsApi.apiKey = apiKey;

    topHeadlines = await newsApi.topHeadlines(
      country: 'jp',
    );
    print(topHeadlines.articles[0].title);
    print(topHeadlines.articles[0].urlToImage);
    print(topHeadlines.articles[0].url);
    // newsApi.topHeadlines({  : 'technology', }).then( news => console.log(news) );
  }
//
  CardList createCards(int i) {
    // List<CardList> children = List<CardList>();
    // for (int i = 0; i < 5; i++) {
    //   children.add(
    if (topHeadlines.articles != null) {
      return CardList(
        title: topHeadlines.articles[i].title,
        imageURL: topHeadlines.articles[i].urlToImage,
        // ));
      );
    }
  }
//
  @override
  Widget build(BuildContext context) {
    Duration(seconds: 3);
    return Scaffold(
      body: Center(
        child: TCard(
          cards: [
            Container(
              color: Colors.blue,
              child: Center(
                // child: CardList(
                //   title: topHeadlines.articles[0].title,
                //   explanation:
                //       '', //'｢WASD｣キー           を押す代わりに、手のひら型のゲーミング・キーパッド｢Azeron｣で、直感的な26個のキー入力を操ってみてはいかがでしょうか？',
                //   imageURL: topHeadlines.articles[0].urlToImage,
                //   url: topHeadlines.articles[0].url,
                // ),
                child: createCards(0),
              ),
            ),
            // Container(
            //   color: Colors.blue,
            //   child: Center(
            //     child: CardList(
            //       title: topHeadlines.articles[1].title,
            //       explanation:
            //           '', //'｢WASD｣キーを押す代わりに、手のひら型のゲーミング・キーパッド｢Azeron｣で、直感的な26個のキー入力を操ってみてはいかがでしょうか？',
            //       imageURL: topHeadlines.articles[1].urlToImage,
            //       url: topHeadlines.articles[1].url,
            //     ),
            //   ),
            // ),
            // Container(
            //   color: Colors.blue,
            //   child: Center(
            //     child: CardList(
            //       title: topHeadlines.articles[2].title,
            //       explanation:
            //           '', //'｢WASD｣キーを押す代わりに、手のひら型のゲーミング・キーパッド｢Azeron｣で、直感的な26個のキー入力を操ってみてはいかがでしょうか？',
            //       imageURL: topHeadlines.articles[2].urlToImage,
            //       url: topHeadlines.articles[2].url,
            //     ),
            //   ),
            // ),
            // Container(
            //   color: Colors.blue,
            //   child: Center(
            //     child: CardList(
            //       title: topHeadlines.articles[3].title,
            //       explanation:
            //           '', //'｢WASD｣キーを押す代わりに、手のひら型のゲーミング・キーパッド｢Azeron｣で、直感的な26個のキー入力を操ってみてはいかがでしょうか？',
            //       imageURL: topHeadlines.articles[3].urlToImage,
            //       url: topHeadlines.articles[3].url,
            //     ),
            //   ),
            // ),
            // Container(
            //   color: Colors.blue,
            //   child: Center(
            //     child: CardList(
            //       title: topHeadlines.articles[4].title,
            //       explanation:
            //           '', //'｢WASD｣キーを押す代わりに、手のひら型のゲーミング・キーパッド｢Azeron｣で、直感的な26個のキー入力を操ってみてはいかがでしょうか？',
            //       imageURL: topHeadlines.articles[4].urlToImage,
            //       url: topHeadlines.articles[4].url,
            //     ),
            //   ),
            // ),
          ],
          size: Size(360, 540),
          controller: _controller,
          onForward: (index, info) {
            print(index);
            print(info.direction);
            if (info.direction == SwipDirection.Right) {
              print('like');
            } else {
              print('dislike');
            }
          },
          onBack: (index) {
            print(index);
          },
          onEnd: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CarrierTimeLinePage(),
                ));
            print('end');
          },
        ),
      ),
    );
  }
}
