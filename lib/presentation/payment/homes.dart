import 'package:fitness_tracker/friends.dart';
import "package:flutter/material.dart";
import 'package:charts_flutter/flutter.dart' as charts;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class ClicksPerYear {
  final String year;
  final int clicks;
  final charts.Color color;

  ClicksPerYear(this.year, this.clicks, Color color)
      : this.color = charts.Color(
            r: color.red, g: color.green, b: color.blue, a: color.alpha);
}

class _HomeState extends State<Home> {
  bool weekly; //true for weekly false for monthly

  @override
  void initState() {
    weekly = true; // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var week = [
      ClicksPerYear('Mon', 12, Colors.purple),
      ClicksPerYear('Tue', 42, Colors.indigo),
      ClicksPerYear('Wed', 78, Colors.blue),
      ClicksPerYear('Thu', 122, Colors.green),
      ClicksPerYear('Fri', 142, Colors.yellow),
      ClicksPerYear('Sat', 78, Colors.orange),
      ClicksPerYear('Sun', 92, Colors.red),
    ];

    var seriesWeek = [
      charts.Series(
        domainFn: (ClicksPerYear clickData, _) => clickData.year,
        measureFn: (ClicksPerYear clickData, _) => clickData.clicks,
        colorFn: (ClicksPerYear clickData, _) => clickData.color,
        id: 'Week',
        data: week,
      ),
    ];

    var chartWeek = charts.BarChart(
      seriesWeek,
      animate: true,
    );

    var chartWidgetWeek = Padding(
      padding: EdgeInsets.all(32.0),
      child: chartWeek,
    );

    var month = [
      ClicksPerYear('Jan', 12, Colors.purple),
      ClicksPerYear('Feb', 42, Colors.indigo),
      ClicksPerYear('Mar', 78, Colors.blue),
      ClicksPerYear('Apr', 122, Colors.green),
      ClicksPerYear('May', 142, Colors.yellow),
      ClicksPerYear('Jun', 78, Colors.orange),
      ClicksPerYear('Jul', 92, Colors.red),
      ClicksPerYear('Aug', 12, Colors.purple),
      ClicksPerYear('Sep', 42, Colors.indigo),
      ClicksPerYear('Oct', 78, Colors.blue),
      ClicksPerYear('Nov', 122, Colors.green),
      ClicksPerYear('Dec', 142, Colors.yellow),
    ];

    var seriesMonth = [
      charts.Series(
        domainFn: (ClicksPerYear clickData, _) => clickData.year,
        measureFn: (ClicksPerYear clickData, _) => clickData.clicks,
        colorFn: (ClicksPerYear clickData, _) => clickData.color,
        id: 'Month',
        data: month,
      ),
    ];

    var chartMonth = charts.BarChart(
      seriesMonth,
      animate: true,
    );

    var chartWidgetMonth = Padding(
      padding: EdgeInsets.all(32.0),
      child: chartMonth,
    );

    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.white,actions: <Widget>[
        GestureDetector(
          onTap:(){Navigator.push(context,MaterialPageRoute(builder: (context)=>Friends()));},
                  child: Container(child:Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(Icons.send),
          )),
        )
      ],),
        body: Column(
      children: <Widget>[
        Expanded(flex: 5, child: Container()),
        Row(children: <Widget>[
          SizedBox(
            width: 50,
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  weekly = true;
                });
              },
              child: Container(
                  color: weekly ? Colors.white : Colors.grey,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: Text("Weekly"),
                    ),
                  )),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  weekly = false;
                });
              },
              child: Container(
                  color: weekly ? Colors.grey : Colors.white,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: Text("Monthly"),
                    ),
                  )),
            ),
          ),
          SizedBox(
            width: 50,
          ),
        ]),
        Expanded(
            flex: 3,
            child:
                Container(child: weekly ? chartWidgetWeek : chartWidgetMonth))
      ],
    ));
  }
}
