import 'package:hackathon/screen/carrier_choice_screen.dart';
import 'package:hackathon/screen/study_choice_screen.dart';
import 'package:flutter/material.dart';

class Choice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StudyChoice(),
                    ));
              },
              color:Colors.blue,
              hoverColor: Colors.blueAccent,
              highlightElevation: 16,
              highlightColor: Colors.blueAccent,
              onHighlightChanged: (value) {},
              child: Text('勉強面')),
        ),
        Expanded(
          child: RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CarrierChoice(),
                    ));
              },
              color:Colors.orange,
              highlightElevation: 16,
              highlightColor: Colors.orangeAccent,
              onHighlightChanged: (value) {},
              child: Text('キャリア面')),
        ),
      ]),
    );
  }
}
