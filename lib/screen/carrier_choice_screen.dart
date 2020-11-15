import 'package:flutter/material.dart';
import 'graph_screen.dart';
import 'news_screen.dart';
import 'timeline/graph_screen.dart';

class CarrierChoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("キャリア面"),
      ),
      body: Column(children: <Widget>[
        Expanded(
            child: Text("次のページでは、気になるトピックとそうでないトピックを選んでね!\n「次へ」ボタンで次に進もう！",
              style:TextStyle(
                fontSize:20,
              ),
            ),
        ),
        Expanded(
          //これまでの傾向ボタンでグラフのページへ

          //↑エラーでたらごめん
          child: Column(
            children: [
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewsScreen(),
                    ),
                  );
                },
                color:Colors.blue,
                child: Text('次へ',
                  style: TextStyle(
                      color: Colors.white,
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                },
                color:Colors.blue,
                child: Text('これまでの傾向',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
