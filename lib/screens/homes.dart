import 'package:fitnesstracker2020/presentation/payment/friends.dart';
import 'package:fitnesstracker2020/screens/profile.dart';
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
  bool weekly;
  bool instbtn,follow,alarm;
  @override
  void initState() {
    instbtn=false;
    follow=false;
    alarm=false;
    weekly = true;
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
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    // stops: [0.9,0.4],
                    colors:[Color.fromRGBO(255, 247, 241, 1),Colors.white]
                  )          
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
                      SizedBox(
                        child: Image.asset('assets/alarm-clock.gif'),
                      ),
                      SizedBox(height:20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 140.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blue
                              )
                            ),
                          ),
                          SizedBox(width:20.0),
                          Container(
                            width: 80.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blue
                              )
                            ),
                          )
                        ],
                      ),
                      SizedBox(height:10.0),
                      Divider(
                        thickness: 0.75,
                        color: Colors.black54,
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
                                    Icons.arrow_forward,
                                    size: 32.0,
                                  ),
                                )
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 82.0,
                                      height: 82.0,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                          side: BorderSide(
                                            color: Color(0xff119F72)
                                          )
                                        ),
                                        child: Image.asset('assets/reward1.png'),
                                      ),
                                    ),
                                    Container(
                                      width: 82.0,
                                      height: 82.0,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                          side: BorderSide(
                                            color: Color(0xff119F72)
                                          )
                                        ),
                                        child: Image.asset('assets/reward1.png'),
                                      ),
                                    ),
                                    Container(
                                      width: 82.0,
                                      height: 82.0,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                          side: BorderSide(
                                            color: Color(0xff119F72)
                                          )
                                        ),
                                        child: Image.asset('assets/reward1.png'),
                                      ),
                                    ),
                                    Container(
                                      width: 82.0,
                                      height: 82.0,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                          side: BorderSide(
                                            color: Color(0xff119F72)
                                          )
                                        ),
                                        child: Image.asset('assets/reward1.png'),
                                      ),
                                    ),
                                    Container(
                                      width: 82.0,
                                      height: 82.0,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                          side: BorderSide(
                                            color: Color(0xff119F72)
                                          )
                                        ),
                                        child: Image.asset('assets/reward1.png'),
                                      ),
                                    ),
                                    Container(
                                      width: 82.0,
                                      height: 82.0,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                          side: BorderSide(
                                            color: Color(0xff119F72)
                                          )
                                        ),
                                        child: Image.asset('assets/reward1.png'),
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
                      SizedBox(height:40.0),
                      Container(
                        width: 120.0,
                        height: 40.0,
                        child: RaisedButton(
                          color: Colors.blueAccent,
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
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                      ),
                      SizedBox(height:30.0),
                    ],
                  ),
                ),
              )
            ),
          );
        }
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: Padding(
          padding: const EdgeInsets.only(top:.0),
          child: AppBar(
            elevation: 0.0,
            // backgroundColor: Color.fromRGBO(255, 247, 241, 1),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  // stops: [0.9,0.4],
                  colors:[Color.fromRGBO(255, 247, 241, 1),Colors.white]
                )          
              ),
            ),
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon:Icon(
                    Icons.person,
                    color:Colors.black38,
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
              height: 38.0,
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(25.0)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(25.0)
                  ),
                  hintText: '                   Home/Work',
                  hintStyle: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.bold
                  ),
                  suffixIcon: Container(
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(100),
                    //   border: Border.all(width: 1.0, color: Colors.grey)
                    // ),
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      onPressed: (){},
                    ),
                  ),
                  // filled: true,
                  // fillColor: Colors.white,
                  // focusColor: Colors.white,
                  // hoverColor: Colors.white
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
                      "Rank",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "2000",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
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
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(width:2.0),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Profile()));
                            },
                            child: CircleAvatar(
                              radius: 35.0,
                              backgroundImage: AssetImage('assets/user_placeholder.png'),
                            ),
                          ),
                          SizedBox(width:8.0),
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
                            progressColor: Colors.blueAccent,
                          ),
                        ],
                      ),
                      // SizedBox(width:10.0),
                      Row(
                        children: <Widget>[
                          SizedBox(width:15.0),
                          Padding(
                            padding: const EdgeInsets.only(top:20.0),
                            child: Text(
                              "NIKHIL",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          SizedBox(width:18.0),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    "TOTAL STEPS",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    "2Lac",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 45.0,
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    "RANK",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    "2000",
                                    style: TextStyle(
                                    fontSize: 15.0,
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
              ExpansionTile(
                title: Text(
                  "Account",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                trailing: Icon(
                  Icons.account_box,
                  size: 28.0,
                  color: Colors.black
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Privacy Policy',
                    ),
                    trailing: Icon(
                      Icons.account_balance
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Profile'
                    ),
                    trailing: Icon(
                      Icons.account_balance
                    ),
                  )
                ],
              ),
              ListTile(
                title: Text(
                  "My Challenges",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                trailing: Icon(
                  Icons.games,
                  size: 28.0,
                  color: Colors.black
                ),
              ),
              ListTile(
                title: Text(
                  "Support",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                trailing: Icon(
                  Icons.info,
                  size: 28.0,
                  color: Colors.black
                ),
              ),
              ListTile(
                title: Text(
                  "Rewards",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                trailing: Icon(
                  Icons.card_giftcard,
                  size: 28.0,
                  color: Colors.black
                ),
              ),
              ListTile(
                title: Text(
                  "Referrals",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                trailing: Icon(
                  Icons.account_box,
                  size: 28.0,
                  color: Colors.black
                ),
              ),
              ExpansionTile(
                title: Text(
                  "Fitness Devices",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                trailing: Icon(
                  Icons.account_box,
                  size: 28.0,
                  color: Colors.black
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Google Fit',
                    ),
                    trailing: Icon(
                      Icons.account_balance
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Fitbit'
                    ),
                    trailing: Icon(
                      Icons.account_balance
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      child: Image.asset('assets/walking.gif',
                        width: 250.0,
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                      color: Colors.black12,
                    ),
                    // SizedBox(height:5.0),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/quick.gif',
                                width: 28.0,
                              ),
                              RaisedButton(
                                color: instbtn?Color(0xff119F72):Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                  side: BorderSide(
                                    color: Color(0xff119F72)
                                  )
                                ),
                                onPressed: () {
                                  setState(() {
                                    instbtn=true;
                                    follow=false;alarm=false;
                                  });
                                },
                                child: Text(
                                  "Instant Challenge",
                                  style: TextStyle(
                                    color: instbtn?Colors.white:Colors.black54,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.person_add,
                                size: 28.0,
                              ),
                              RaisedButton(
                                color: follow?Color(0xff119F72):Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                  side: BorderSide(
                                    color: Color(0xff119F72)
                                  )
                                ),
                                onPressed: () {
                                  setState(() {
                                    follow=true;
                                    instbtn=false;alarm=false;
                                  });
                                },
                                child: Text(
                                  "Follow friend",
                                  style: TextStyle(
                                    color: follow?Colors.white:Colors.black54,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/alarm-clock.gif',
                                width: 28.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    alarm=true;
                                    instbtn=false;follow=false;
                                  });
                                },
                                child: RaisedButton(
                                  color: alarm?Color(0xff119F72):Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                    side: BorderSide(
                                      color: Color(0xff119F72)
                                    )
                                  ),
                                  onPressed: _showDialog,
                                  child: Text(
                                    "Alarm",
                                    style: TextStyle(
                                      color: alarm?Colors.white:Colors.black54,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                      color: Colors.black12,
                    ),
                    // SizedBox(height:5.0),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left:6.0,right:6.0),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        'more ',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          color: Colors.black87,
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      // Divider(
                                      //   thickness: 1.0,
                                      //   color: Colors.black12,
                                      // ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 25.0,
                                    color: Colors.black87,
                                  )
                                ],
                              ),
                            ),
                            // SizedBox(height:5.0),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 82.0,
                                    height: 82.0,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                        side: BorderSide(
                                          color: Color(0xff119F72)
                                        )
                                      ),
                                      child: Image.asset('assets/reward1.png'),
                                    ),
                                  ),
                                  Container(
                                    width: 82.0,
                                    height: 82.0,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                        side: BorderSide(
                                          color: Color(0xff119F72)
                                        )
                                      ),
                                      child: Image.asset('assets/reward1.png'),
                                    ),
                                  ),
                                  Container(
                                    width: 82.0,
                                    height: 82.0,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                        side: BorderSide(
                                          color: Color(0xff119F72)
                                        )
                                      ),
                                      child: Image.asset('assets/reward1.png'),
                                    ),
                                  ),
                                  Container(
                                    width: 82.0,
                                    height: 82.0,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                        side: BorderSide(
                                          color: Color(0xff119F72)
                                        )
                                      ),
                                      child: Image.asset('assets/reward1.png'),
                                    ),
                                  ),
                                  Container(
                                    width: 82.0,
                                    height: 82.0,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                        side: BorderSide(
                                          color: Color(0xff119F72)
                                        )
                                      ),
                                      child: Image.asset('assets/reward1.png'),
                                    ),
                                  ),
                                  Container(
                                    width: 82.0,
                                    height: 82.0,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                        side: BorderSide(
                                          color: Color(0xff119F72)
                                        )
                                      ),
                                      child: Image.asset('assets/reward1.png'),
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
                      color: Colors.black12,
                    ),
                  ],
                ),
              ),
              // SizedBox(height:20.0),
              Row(
                children: <Widget>[
                  SizedBox(width:30.0),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        weekly = true;
                      });
                    },
                    child: Center(
                      child: Text(
                        "Week",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18.0,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width:30.0),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        weekly = false;
                      });
                    },
                    child: Center(
                      child: Text(
                        "Month",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18.0,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ]
              ),
              Container(
                height: 250,
                // color: Colors.blue,
                child:weekly ? chartWidgetWeek : chartWidgetMonth
              )
            ],
          ),
        ),
      )
    );
  }
}
