import 'package:fitnesstracker2020/screens/paymentEntry.dart';
import 'package:fitnesstracker2020/screens/profile.dart';
import "package:flutter/material.dart";
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_svg/flutter_svg.dart';
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
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

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
      showDialog(
        context: context,
        // barrierDismissible: true,
        builder: (BuildContext context){
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height*0.69,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  // stops: [0.9,0.4],
                  colors:[Color.fromRGBO(255, 247, 241, 1),Colors.white]
                )          
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.only(left:10.0,right: 10.0),
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
              ),
            )
          );
        }
      );
    }

    void _logoutdialog(){
      showDialog(
        context: context,
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height*0.14,
            child: Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10.0),
              child: Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Do you want to log out?',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            onPressed:(){},
                            child: Text(
                              'Yes',
                            ), 
                          ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                        Expanded(
                          child: RaisedButton(
                            onPressed:(){},
                            child: Text(
                              'No',
                            ), 
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      );
    }

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      key: _drawerKey,
      backgroundColor: Colors.white,
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(80.0),
      //   child: Padding(
      //     padding: const EdgeInsets.only(top:.0),
      //     child: AppBar(
      //       elevation: 0.0,
      //       // backgroundColor: Color.fromRGBO(255, 247, 241, 1),
      //       flexibleSpace: Container(
      //         decoration: BoxDecoration(
      //           gradient: LinearGradient(
      //             begin: Alignment.topCenter,
      //             end: Alignment.bottomCenter,
      //             // stops: [0.9,0.4],
      //             colors:[Color.fromRGBO(255, 247, 241, 1),Colors.white]
      //           )          
      //         ),
      //       ),
      //       leading: Builder(
      //         builder: (BuildContext context) {
      //           return GestureDetector(
      //             onTap: (){
      //               Scaffold.of(context).openDrawer();
      //             },
      //             child: SvgPicture.asset(
      //               'assets/personal.svg',
      //               height: 15.0,width: 15.0,
      //             )
      //           );
      //         }
      //       ),
      //       title: Container(
      //         width: MediaQuery.of(context).size.width,
      //         height: 38.0,
      //         child: TextField(
      //           controller: _searchController,
      //           decoration: InputDecoration(
      //             contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
      //             focusedBorder: OutlineInputBorder(
      //               borderSide: BorderSide(color: Colors.grey, width: 1.0),
      //               borderRadius: BorderRadius.circular(25.0)
      //             ),
      //             enabledBorder: OutlineInputBorder(
      //               borderSide: BorderSide(color: Colors.grey, width: 1.0),
      //               borderRadius: BorderRadius.circular(25.0)
      //             ),
      //             hintText: '                   Home/Work',
      //             hintStyle: TextStyle(
      //               color: Colors.black26,
      //               fontWeight: FontWeight.bold
      //             ),
      //             suffixIcon: Container(
      //               // decoration: BoxDecoration(
      //               //   borderRadius: BorderRadius.circular(100),
      //               //   border: Border.all(width: 1.0, color: Colors.grey)
      //               // ),
      //               child: IconButton(
      //                 icon: Icon(
      //                   Icons.search,
      //                   color: Colors.black,
      //                 ),
      //                 onPressed: (){},
      //               ),
      //             ),
      //             // filled: true,
      //             // fillColor: Colors.white,
      //             // focusColor: Colors.white,
      //             // hoverColor: Colors.white
      //           ),
      //           onSubmitted: (input){},
      //         ),
      //       ),
      //       actions: <Widget>[
      //         Padding(
      //           padding: const EdgeInsets.only(top:10.0,right: 8.0),
      //           child: Column(
      //             children: <Widget>[
      //               Text(
      //                 "Rank",
      //                 style: TextStyle(
      //                   color: Colors.black87,
      //                   fontWeight: FontWeight.bold
      //                 ),
      //               ),
      //               Text(
      //                 "2000",
      //                 style: TextStyle(
      //                   color: Colors.black87,
      //                   fontWeight: FontWeight.bold
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
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
                trailing: SvgPicture.asset(
                  'assets/rewards.svg',
                  width: 28.0,height: 28.0,
                )
              ),
              ListTile(
                title: Text(
                  "Referrals",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                trailing: SvgPicture.asset(
                  'assets/share.svg',
                  width: 28.0,height: 28.0,
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
              GestureDetector(
                onTap: _logoutdialog,
                child: ListTile(
                  title: Text(
                    "Log out",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  trailing: Icon(
                    Icons.lock_open,
                    size: 28.0,
                    color: Colors.black
                  ),
                ),
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
              _getAppBar(),
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
                              SvgPicture.asset(
                                'assets/flashlight.svg',
                                width: 28.0,height: 28.0,
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
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>PaymentEntry()));
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
                              SvgPicture.asset(
                                'assets/personal2.svg',
                                width: 28.0,height: 28.0,
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
                              SvgPicture.asset(
                                'assets/alarm-line.svg',
                                width: 28.0,height: 28.0,
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
                              width: width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    'more ',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      color: Colors.black87,
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0
                                    ),
                                  ),
                                  SizedBox(width:width*0.005),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 15.0,
                                    color: Colors.black87,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height:height*0.01),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: width*0.205,
                                    height: height*0.1105,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                        side: BorderSide(
                                          color: Color.fromRGBO(1, 4, 4, 0.3)
                                        )
                                      ),
                                      child: Image.asset('assets/reward1.png'),
                                    ),
                                  ),
                                  Container(
                                    width: width*0.205,
                                    height: height*0.1105,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                        side: BorderSide(
                                          color: Color.fromRGBO(1, 4, 4, 0.3)
                                        )
                                      ),
                                      child: Image.asset('assets/reward1.png'),
                                    ),
                                  ),
                                  Container(
                                    width: width*0.205,
                                    height: height*0.1105,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                        side: BorderSide(
                                          color: Color.fromRGBO(1, 4, 4, 0.3)
                                        )
                                      ),
                                      child: Image.asset('assets/reward1.png'),
                                    ),
                                  ),
                                  Container(
                                    width: width*0.205,
                                    height: height*0.1105,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                        side: BorderSide(
                                          color: Color.fromRGBO(1, 4, 4, 0.3)
                                        )
                                      ),
                                      child: Image.asset('assets/reward1.png'),
                                    ),
                                  ),
                                  Container(
                                    width: width*0.205,
                                    height: height*0.1105,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                        side: BorderSide(
                                          color: Color.fromRGBO(1, 4, 4, 0.3)
                                        )
                                      ),
                                      child: Image.asset('assets/reward1.png'),
                                    ),
                                  ),
                                  Container(
                                    width: width*0.205,
                                    height: height*0.1105,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                        side: BorderSide(
                                          color: Color.fromRGBO(1, 4, 4, 0.3)
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
                    SizedBox(height:height*0.005),
                    Divider(
                      thickness: 1.0,
                      color: Colors.black12,
                    ),
                  ],
                ),
              ),
              SizedBox(height:height*0.02),
              Row(
                children: <Widget>[
                  SizedBox(width:width*0.08),
                  GestureDetector(
                    onTap: () {
                      // setState(() {
                      //   weekly = true;
                      // });
                    },
                    child: Center(
                      child: Text(
                        "Stats",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18.0,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width:width*0.05),
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
                  SizedBox(width:width*0.05),
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
              SizedBox(height:height*0.01),
              Container(
                height: height*0.35,
                // color: Colors.blue,
                child:weekly ? chartWidgetWeek : chartWidgetMonth
              )
            ],
          ),
        ),
      )
    );
  }
  Widget _getAppBar(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*.13,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          // stops: [0.9,0.4],
          colors:[Color.fromRGBO(255, 247, 241, 1),Colors.white]
        )          
      ),
      child: Padding(
        padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.06,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // SizedBox(width: MediaQuery.of(context).size.width*0.015,),
            IconButton(
              icon: Icon(
                Icons.person,
                size: 30.0,
              ),
              onPressed: (){
                _drawerKey.currentState.openDrawer();
              },
            ),
            SizedBox(width: MediaQuery.of(context).size.width*0.01,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Rank",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0
                  ),
                ),
                Text(
                  "2000",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0
                  ),
                )
              ],
            ),
            Container(
              width:MediaQuery.of(context).size.width*0.6,
              child: Stack(
                children: <Widget>[
                  SizedBox(height: MediaQuery.of(context).size.height*0.016,),
                  Center(
                    child: Text(
                      'Home/Work',
                      style: TextStyle(
                        fontSize: 20.0
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 25,
                    child: Container(
                      width: 200.0,
                      child: Divider(
                        color: Colors.grey[300],
                        thickness: 1.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Icon(
              Icons.account_balance_wallet,
              size: 30.0,
            ),
            SizedBox(width: MediaQuery.of(context).size.width*0.02,),
            Icon(
              Icons.notifications,
              size: 30.0,
            ),
            SizedBox(width: MediaQuery.of(context).size.width*0.015,),
          ],
        ),
      ),
    );
  }
}
