import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ChallengeScreen extends StatefulWidget {
  @override
  _ChallengeScreenState createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Challenge',
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
                                            'Your Steps',
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
                                                    'Distance',
                                                    style: TextStyle(
                                                      color: Colors.white54,
                                                      fontSize: 14.0
                                                    ),
                                                  ),
                                                  SizedBox(height: MediaQuery.of(context).size.height*0.013,),
                                                  Text(
                                                    'Calories',
                                                    style: TextStyle(
                                                      color: Colors.white54,
                                                      fontSize: 14.0
                                                    ),
                                                  ),
                                                  SizedBox(height: MediaQuery.of(context).size.height*0.013,),
                                                  Text(
                                                    'Pace',
                                                    style: TextStyle(
                                                      color: Colors.white54,
                                                      fontSize: 14.0
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(width: MediaQuery.of(context).size.width*0.043,),  
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    '1.3',
                                                    style: TextStyle(
                                                      color: Colors.white54,
                                                      fontSize: 14.0
                                                    ),
                                                  ),
                                                  SizedBox(height: MediaQuery.of(context).size.height*0.013,),
                                                  Text(
                                                    '42',
                                                    style: TextStyle(
                                                      color: Colors.white54,
                                                      fontSize: 14.0
                                                    ),
                                                  ),
                                                  SizedBox(height: MediaQuery.of(context).size.height*0.013,),
                                                  Text(
                                                    '25.32/km (avg)',
                                                    style: TextStyle(
                                                      color: Colors.white54,
                                                      fontSize: 14.0
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom:37.0,left: 8.5),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            CircularPercentIndicator(
                                              radius: 85.0,
                                              animation: true,
                                              animationDuration: 1200,
                                              lineWidth: 4.0,
                                              percent: 0.8,
                                              center: GestureDetector(
                                                onTap: () {
                                                },
                                                child: Text(
                                                  '1330',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold
                                                  ),
                                                )
                                              ),
                                              circularStrokeCap: CircularStrokeCap.butt,
                                              backgroundColor: Colors.white24,
                                              progressColor: Colors.orange,
                                            )
                                          ],
                                        ),
                                      )
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
                            padding: const EdgeInsets.only(left:30.0,right: 30.0),
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
                                    text: 'You are just ',
                                    style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 13.0
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '120 steps ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                      TextSpan(
                                        text: 'away from others'
                                      )
                                    ]
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0)
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(22.0),bottomRight: Radius.circular(22.0),topRight:Radius.circular(22.0),topLeft: Radius.circular(22.0) ),
                        borderRadius: BorderRadius.circular(22.0),
                        color: Color(0xff1A5F68),
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
                                        'Other Steps',
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
                                                'Distance',
                                                style: TextStyle(
                                                  color: Colors.white54,
                                                  fontSize: 14.0
                                                ),
                                              ),
                                              SizedBox(height: MediaQuery.of(context).size.height*0.013,),
                                              Text(
                                                'Calories',
                                                style: TextStyle(
                                                  color: Colors.white54,
                                                  fontSize: 14.0
                                                ),
                                              ),
                                              SizedBox(height: MediaQuery.of(context).size.height*0.013,),
                                              Text(
                                                'Pace',
                                                style: TextStyle(
                                                  color: Colors.white54,
                                                  fontSize: 14.0
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(width: MediaQuery.of(context).size.width*0.043,),  
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                '1.3',
                                                style: TextStyle(
                                                  color: Colors.white54,
                                                  fontSize: 14.0
                                                ),
                                              ),
                                              SizedBox(height: MediaQuery.of(context).size.height*0.013,),
                                              Text(
                                                '42',
                                                style: TextStyle(
                                                  color: Colors.white54,
                                                  fontSize: 14.0
                                                ),
                                              ),
                                              SizedBox(height: MediaQuery.of(context).size.height*0.013,),
                                              Text(
                                                '25.32/km (avg)',
                                                style: TextStyle(
                                                  color: Colors.white54,
                                                  fontSize: 14.0
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom:37.0,left: 8.5),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        CircularPercentIndicator(
                                          radius: 85.0,
                                          animation: true,
                                          animationDuration: 1200,
                                          lineWidth: 4.0,
                                          percent: 0.8,
                                          center: GestureDetector(
                                            onTap: () {
                                            },
                                            child: Text(
                                              '1459',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold
                                              ),
                                            )
                                          ),
                                          circularStrokeCap: CircularStrokeCap.butt,
                                          backgroundColor: Colors.white24,
                                          progressColor: Colors.yellow,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height:MediaQuery.of(context).size.height*0.03),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom:108.0),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.lightbulb_outline,
                                size: 50.0,
                                color: Colors.blueAccent,
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width*0.035,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'How much physical activity do you\nneed?',
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height:MediaQuery.of(context).size.width*0.02),
                            Text(
                              'Move more, Sit less',
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height:MediaQuery.of(context).size.width*0.02),
                            Text(
                              'Get up and move throught the day. Any\nactivity is better than none. Even light\n-intensity can offset the serious health risks of\nbeing sedentary.',
                              style: TextStyle(
                                color: Colors.black54
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}