import 'package:flutter/material.dart';
import 'package:hackathon/commonData.dart';

class EnglishTimeLinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 右上に表示される"debug"ラベルを消す
      debugShowCheckedModeBanner: false,
      // アプリ名
      title: '英語のTuneリスト',
      theme: ThemeData(
        // テーマカラー
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // リスト一覧画面を表示
      home: EnglishTimeLineList(),
    );
  }
}

// リスト一覧画面用Widget
class EnglishTimeLineList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBarを表示し、タイトルも設定
      appBar: AppBar(
        title: Text('英語のTuneリスト'),
      ),
      // ListViewを使いリスト一覧を表示
      body: ListView(
        children: <Widget>[
          // CardとListTileを使い、簡単に整ったUIを作成
          Card(
            child: ListTile(
              title: Text('ああああああああああああああ'),
              onTap: () {
                // "push"で新規画面に遷移
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    // 遷移先の画面としてリスト追加画面を指定
                    return MyApp();
                  }),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ああああああああああああああ'),
              onTap: () {
                // "push"で新規画面に遷移
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    // 遷移先の画面としてリスト追加画面を指定
                    return MyApp();
                  }),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ああああああああああああああ'),
              onTap: () {
                // "push"で新規画面に遷移
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    // 遷移先の画面としてリスト追加画面を指定
                    return MyApp();
                  }),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ああああああああああああああ'),
              onTap: () {
                // "push"で新規画面に遷移
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    // 遷移先の画面としてリスト追加画面を指定
                    return MyApp();
                  }),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ああああああああああああああ'),
              onTap: () {
                // "push"で新規画面に遷移
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    // 遷移先の画面としてリスト追加画面を指定
                    return MyApp();
                  }),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
