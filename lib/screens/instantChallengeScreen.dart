import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class InstantChallengeScreen extends StatefulWidget {
  @override
  _InstantChallengeScreenState createState() => _InstantChallengeScreenState();
}

class _InstantChallengeScreenState extends State<InstantChallengeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Instant Challenge',
          style: TextStyle(
            color: Colors.black
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        backgroundColor: Color.fromRGBO(255, 247, 241, 1),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      // stops: [0.9,0.4],
                      colors:[Color.fromRGBO(255, 247, 241, 1),Colors.white]
                    )          
                  ),
                  height: 80.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Card(
                    color: Color(0xff4C2165),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0)
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(22.0),bottomRight: Radius.circular(22.0),topRight:Radius.circular(22.0),topLeft: Radius.circular(22.0) ),
                            borderRadius: BorderRadius.circular(22.0),
                            color: Color(0xff663782),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left:25.0,right: 25.0,top: 20.0,bottom: 20.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22.0)
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Instant Challenge',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 23.0,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                                          Row(
                                            children: <Widget>[
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    'Motivator',
                                                    style: TextStyle(
                                                      color: Colors.white54,
                                                      fontSize: 14.0
                                                    ),
                                                  ),
                                                  SizedBox(height: MediaQuery.of(context).size.height*0.013,),
                                                  Text(
                                                    'Fitness Tracker',
                                                    style: TextStyle(
                                                      color: Colors.white54,
                                                      fontSize: 14.0
                                                    ),
                                                  ),
                                                  SizedBox(height: MediaQuery.of(context).size.height*0.013,),
                                                  Text(
                                                    'No more excuses',
                                                    style: TextStyle(
                                                      color: Colors.white54,
                                                      fontSize: 14.0
                                                    ),
                                                  ),
                                                  SizedBox(height: MediaQuery.of(context).size.height*0.013,),
                                                  Text(
                                                    'Cash multiplier',
                                                    style: TextStyle(
                                                      color: Colors.white54,
                                                      fontSize: 14.0
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(22.0),bottomRight: Radius.circular(22.0)),
                            color: Color(0xff4C2165),
                          ),
                          height: MediaQuery.of(context).size.height*0.055,
                          child: Padding(
                            padding: const EdgeInsets.only(left:28.0,right: 28.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.directions_walk,
                                  color: Colors.orange,
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                                RichText(
                                  text:TextSpan(
                                    text: 'Few seconds away from exciting fitness journey',
                                    style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 11.0
                                    ),
                                  ) 
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height:MediaQuery.of(context).size.height*0.04),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          'Name',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0
                          ),
                        ),
                        Icon(
                          Icons.image,
                          size: 100.0,
                        )
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 120.0,
                          child: Card(
                            color: Colors.grey[200],
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Container(
                                    width: 10.0,
                                    height: 10.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue
                                    ),
                                  ),
                                  SizedBox(width:5.0),
                                  Container(
                                    width: 10.0,
                                    height: 10.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue
                                    ),
                                  ),
                                  SizedBox(width:5.0),
                                  Container(
                                    width: 10.0,
                                    height: 10.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height:MediaQuery.of(context).size.height*0.2),
            Container(
              width: 120.0,
              height: 50.0,
              child: RaisedButton(
                color: Color(0xff119F72),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  side: BorderSide(
                    color: Color(0xff119F72)
                  )
                ),
                onPressed:(){},
                child: Text(
                  'Join',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  ),
                ), 
              ),
            )
          ],
        ),
      ),
    );
  }
}