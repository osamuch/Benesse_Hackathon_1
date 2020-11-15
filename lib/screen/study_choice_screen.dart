import 'package:flutter/material.dart';
import 'package:hackathon/commonData.dart';
import 'timeline/japanese_timeline.dart';
import 'timeline/math_timeline.dart';
import 'timeline/english_timeline.dart';
import 'timeline/science_timeline.dart';
import 'timeline/socialstudy_timeline.dart';

class StudyChoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("科目を選んでください"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JapaneseTimeLinePage(),
                        ));
                  },

                  child: Text('国語')),
            ),
            Expanded(
              child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MathTimeLinePage(),
                        ));
                  },
                  child: Text('数学')),
            ),
            Expanded(
              child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EnglishTimeLinePage(),
                        ));
                  },
                  child: Text('英語')),
            ),
            Expanded(
              child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScienceTimeLinePage(),
                        ));
                  },
                  child: Text('理科')),
            ),
            Expanded(
              child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SocialStudiesTimeLinePage(),
                        ));
                  },
                  child: Text('社会')),
            ),
          ],
        ));
  }
}

/*class ChoiceButton extends StatelessWidget {
  ChoiceButton({this.subjectNumber});
  final int subjectNumber;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RaisedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => JapaneseTimeLinePage(),
                ));
          },
          child: Text(subject[subjectNumber])),
    );
  }
}*/
