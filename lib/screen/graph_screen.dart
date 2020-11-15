import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import '../subscriber.dart';
import '../subscriber_chart.dart';

class HomePage extends StatelessWidget {
  List<SubscriberSeries> data = [
    SubscriberSeries(
      year: 'business',
      subscribers: 1,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SubscriberSeries(
      year: 'sports',
      subscribers: 6,
      barColor: charts.ColorUtil.fromDartColor(Colors.greenAccent),
    ),
    SubscriberSeries(
      year: 'general',
      subscribers: 10,
      barColor: charts.ColorUtil.fromDartColor(Colors.purple),
    ),
    SubscriberSeries(
      year: 'technology',
      subscribers: 15,
      barColor: charts.ColorUtil.fromDartColor(Colors.orangeAccent),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title : Text('気になるニュースの傾向'),
        backgroundColor:Colors.blue,
      ),
      body: Center(
        child: SubscriberChart(data: data),
      ),
    );
  }
}
