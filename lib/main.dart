import 'package:hackathon/screen/graph_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:tcard/tcard.dart';
import 'screen/news_screen.dart';
import 'screen/choice_screen.dart';
import 'package:flutter/material.dart';

//アカウントの情報
class Person {
  String firstName;
  String lastName;
  int age;
  String prefecture;
  String favoriteCategory;
  Person(firstName, lastName, age, prefecture) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.age = age;
    this.prefecture = prefecture;
    this.favoriteCategory = null;
  }
}

void main() {
  runApp(MyApp());
}

/*class Title extends StatelessWidget{
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: <Widget>[
          Expanded(
            child: Image.asset('assets/CT.jpg'),
          ),
          Expanded(
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Aaaaa(),
                  ),
                );
              },
              color: Colors.blue,
              child: Text('次へ',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ]
        ),
      ),
    );
  }
}
*/

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Choice(),
    );
  }
}