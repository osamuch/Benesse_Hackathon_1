import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardList extends StatelessWidget {
  CardList({this.title, this.explanation, this.imageURL, this.url});

  final String title;
  final String imageURL;
  final String explanation;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          explanation,
        ),
        Image(
          image: NetworkImage(imageURL),
        ),
        // RaisedButton(
        //   child: Text('次へ'),
        //   onPressed: (){
        //     _launchURL(url);
        //   },
        // ),
      ],
    );
  }

  _launchURL(String url) async {
    String launchUrl = url;
    if (await canLaunch(launchUrl)) {
      await launch(launchUrl);
    } else {
      throw 'Could not launch $launchUrl';
    }
  }
}
