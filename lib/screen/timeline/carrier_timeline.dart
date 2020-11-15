import 'package:flutter/material.dart';
import 'package:hackathon/commonData.dart';

//キャリアからのタイムライン
class CarrierTimeLinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 右上に表示される"debug"ラベルを消す
      debugShowCheckedModeBanner: false,
      // アプリ名
      title: 'キャリアのTuneリスト',
      theme: ThemeData(
        // テーマカラー
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // リスト一覧画面を表示
      home: CarrierTimeLineList(),
    );
  }
}

class CarrierTimeLineList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBarを表示し、タイトルも設定
      appBar: AppBar(
        title: Text('キャリアのTuneリスト'),
      ),
      // ListViewを使いリスト一覧を表示
      body: ListView(
        children: <Widget>[
          // CardとListTileを使い、簡単に整ったUIを作成
          Card(
            child: ListTile(
              title: Text('【中島悠登】篠田航輝が「子供たち」のために施したデザイン',
              style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // "push"で新規画面に遷移
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    // 遷移先の画面としてリスト追加画面を指定
                    return MyApp();
                  },
                  ),
                );
              },
            ),
            color:Colors.purple,
          ),
          Card(
            child: ListTile(
              title: Text('ゲーセン閉店相次ぐ　コロナで窮地',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // "push"で新規画面に遷移
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    // 遷移先の画面としてリスト追加画面を指定
                    return MyApp();
                  }
                  //color : Colors.purple,
                  ),
                );
              },
            ),
            color:Colors.blue,
          ),
          Card(
            child: ListTile(
              title: Text('【注目】「走塁の神」が唸る、注目のランナー6人とは',
                style: TextStyle(color: Colors.white),
              ),
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
            color:Colors.green,
          ),
          Card(
            child: ListTile(
              title: Text('奈良1泊1300円、楽しさ倍増「GoTo」宿選び',
                style: TextStyle(color: Colors.white),
              ),
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
            color:Colors.blue,
          ),
          Card(
            child: ListTile(
              title: Text('アップル、自動運転を可能にする自律航法システムの特許を取得',
                style: TextStyle(color: Colors.white),
              ),
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
            color:Colors.orange,
          ),
        ],
      ),
    );
  }
}
