import 'package:fitnesstracker2020/presentation/payment/friends.dart';
import "package:flutter/material.dart";
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:percent_indicator/linear_percent_indicator.dart';

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
  TextEditingController _searchController=TextEditingController();

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

    void _showDialog(){
      showDialog<Null>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context){
          return SingleChildScrollView(
            child: Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.0)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height:25.0),
                    Text(
                      "Abhi Nhi To Kabhi Nhi",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "Alarm Lagao",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    ///content to be added
                    SizedBox(height:50.0),
                    Divider(
                      thickness: 2.0,
                      color: Colors.black,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.arrow_right,
                                  size: 40.0,
                                ),
                              )
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 85.0,
                                    height: 85.0,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                        side: BorderSide(
                                          color: Colors.black
                                        )
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 85.0,
                                    height: 85.0,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                        side: BorderSide(
                                          color: Colors.black
                                        )
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 85.0,
                                    height: 85.0,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                        side: BorderSide(
                                          color: Colors.black
                                        )
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 85.0,
                                    height: 85.0,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                        side: BorderSide(
                                          color: Colors.black
                                        )
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 85.0,
                                    height: 85.0,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                        side: BorderSide(
                                          color: Colors.black
                                        )
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 85.0,
                                    height: 85.0,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                        side: BorderSide(
                                          color: Colors.black
                                        )
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height:15.0),
                    TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 6.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        hintText: "Enter text",
                        filled: true,
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        hoverColor: Colors.white
                      ),
                    ),
                    SizedBox(height:20.0),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.blueAccent
                        ),
                        borderRadius: BorderRadius.circular(22.0)
                      ),
                      onPressed: (){
                        Navigator.of(context).pop();
                      }, 
                      child: Text(
                        "OK",
                        style: TextStyle(
                          fontSize: 19.0,
                          color: Colors.black
                        ),
                      )
                    )
                  ],
                ),
              )
            ),
          );
        }
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon:Icon(
                Icons.person,
                color:Colors.black,
                size: 32.0,
              ),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              } 
            );
          }
        ),
        title: Container(
          width: MediaQuery.of(context).size.width,
          height: 45.0,
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 1.0,horizontal: 6.0),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.0),
              ),
              hintText: 'Search',
              suffixIcon: Container(
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 1.0, color: Colors.grey)
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.green,
                  ),
                  onPressed: (){},
                ),
              ),
              filled: true,
              fillColor: Colors.white,
              focusColor: Colors.white,
              hoverColor: Colors.white
            ),
            onSubmitted: (input){},
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:10.0,right: 8.0),
            child: Column(
              children: <Widget>[
                Text(
                  "RANK",
                  style: TextStyle(
                    color: Colors.black
                  ),
                ),
                Text(
                  "2000",
                  style: TextStyle(
                    color: Colors.black
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              SizedBox(height:7.0),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage: AssetImage('assets/user_placeholder.png'),
                          ),
                          SizedBox(height:18.0),
                          Text(
                            "NIKHIL",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                      SizedBox(width:10.0),
                      Column(
                        children: <Widget>[
                          SizedBox(height:15.0),
                          LinearPercentIndicator(
                            width: MediaQuery.of(context).size.width*0.5,
                            animation: false,
                            // animationDuration: 1000,
                            lineHeight: 15.0,
                            // leading: new Text("left content"),
                            // trailing: new Text("right content"),
                            percent: 0.2,
                            center: Text(
                              "20.0%",
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: Colors.red,
                          ),
                          SizedBox(height:12.0),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    "TOTAL STEPS",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    "2Lac",
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 60.0,
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    "RANK",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    "2000",
                                    style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold
                                  ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height:20.0),
              ListTile(
                title: Text(
                  "Account",
                  style: TextStyle(
                    fontSize: 20.0
                  ),
                ),
                trailing: Icon(
                  Icons.account_box,
                  size: 32.0,
                  color: Colors.black
                ),
              ),
              ListTile(
                title: Text(
                  "My Challenges",
                  style: TextStyle(
                    fontSize: 20.0
                  ),
                ),
                trailing: Icon(
                  Icons.games,
                  size: 32.0,
                  color: Colors.black
                ),
              ),
              ListTile(
                title: Text(
                  "Support",
                  style: TextStyle(
                    fontSize: 20.0
                  ),
                ),
                trailing: Icon(
                  Icons.info,
                  size: 32.0,
                  color: Colors.black
                ),
              ),
              ListTile(
                title: Text(
                  "Rewards",
                  style: TextStyle(
                    fontSize: 20.0
                  ),
                ),
                trailing: Icon(
                  Icons.card_giftcard,
                  size: 32.0,
                  color: Colors.black
                ),
              ),
              ListTile(
                title: Text(
                  "Referrals",
                  style: TextStyle(
                    fontSize: 20.0
                  ),
                ),
                trailing: Icon(
                  Icons.account_box,
                  size: 32.0,
                  color: Colors.black
                ),
              ),
              ListTile(
                title: Text(
                  "Fitness Device",
                  style: TextStyle(
                    fontSize: 20.0
                  ),
                ),
                trailing: Icon(
                  Icons.fitness_center,
                  size: 32.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      // appBar: AppBar(
      //   backgroundColor:Colors.white,actions: <Widget>[
      //   GestureDetector(
      //     onTap:(){Navigator.push(context,MaterialPageRoute(builder: (context)=>Friends()));},
      //             child: Container(child:Padding(
      //       padding: const EdgeInsets.all(5.0),
      //       child: Icon(Icons.send,color: Colors.black,),
      //     )),
      //   )
      // ],),
        body: Container(
          height: MediaQuery.of(context).size.height,

          child: SingleChildScrollView(
            child: Column(
      children: <Widget>[
//        Expanded(flex: 5, child: Container()),

// ********************************************************************************
// for himanshu, this this the container you ned to add your code in
      Container(
        child: Column(
          children: <Widget>[
            SizedBox(height:300.0),
            Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.flash_on
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0))
                          ),
                          onPressed: () {
                            
                          },
                          child: Text(
                            "Instant Challenge"
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.person_add
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0))
                          ),
                          onPressed: () {
                            
                          },
                          child: Text(
                            "Follow friend"
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.alarm
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0))
                          ),
                          onPressed: _showDialog,
                          child: Text(
                            "Alarm"
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1.0,
                color: Colors.black,
              ),
              SizedBox(height:1.0),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'MORE ->',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.black
                          ),
                        ),
                      ),
                      SizedBox(height:5.0),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 100.0,
                              height: 100.0,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                  side: BorderSide(
                                    color: Colors.black
                                  )
                                ),
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 100.0,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                  side: BorderSide(
                                    color: Colors.black
                                  )
                                ),
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 100.0,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                  side: BorderSide(
                                    color: Colors.black
                                  )
                                ),
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 100.0,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                  side: BorderSide(
                                    color: Colors.black
                                  )
                                ),
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 100.0,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                  side: BorderSide(
                                    color: Colors.black
                                  )
                                ),
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 100.0,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                  side: BorderSide(
                                    color: Colors.black
                                  )
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1.0,
                color: Colors.black,
              ),
          ],
        ),
      ),
      SizedBox(height:20.0),
 // ********************************************************************************


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
            Container(
                height: 250,
//                color: Colors.blue,
                child:
                    Container(child: weekly ? chartWidgetWeek : chartWidgetMonth))
      ],
    ),
          ),
        ));
  }
}
