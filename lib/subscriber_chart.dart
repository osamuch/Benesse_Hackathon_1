import 'package:charts_flutter/flutter.dart' as charts;

import 'package:flutter/material.dart';
import 'subscriber.dart';

class SubscriberChart extends StatelessWidget {
  final List<SubscriberSeries> data;

  SubscriberChart({@required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<SubscriberSeries, String>> series = [
      charts.Series(
        id: 'Subscribers',
        data: data,
        domainFn: (SubscriberSeries series, _) => series.year,
        measureFn: (SubscriberSeries series, _) => series.subscribers,
        colorFn: (SubscriberSeries series, _) => series.barColor,
      )
    ];

    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          padding: EdgeInsets.all(20),
          child: Card(
            child: Column(children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text('気になるニュース数'),
              ),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: charts.BarChart(
                        series,
                        animate: true,
                      )))
            ]),
          ),
        ),
      ),
    );
  }
}
