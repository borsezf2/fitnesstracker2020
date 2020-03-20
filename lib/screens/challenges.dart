import 'package:fitnesstracker2020/cardCaursel.dart';
import 'package:fitnesstracker2020/challengeData.dart';
import 'package:flutter/material.dart';

class Challenges extends StatefulWidget {
  @override
  _ChallengesState createState() => _ChallengesState();
}

class _ChallengesState extends State<Challenges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0.0,
      //   backgroundColor: Colors.white,
      //   leading: Builder(
      //     builder: (BuildContext context) {
      //       return IconButton(
      //         color: Colors.blueAccent,
      //         icon: const Icon(
      //           Icons.arrow_back_ios,
      //         ),
      //         onPressed: () => Navigator.of(context).pop(),
      //         tooltip: MaterialLocalizations
      //             .of(context)
      //             .openAppDrawerTooltip,
      //       );
      //     },
      //   ),
      // ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:40.0),
          child: Column(
            children: <Widget>[
              CardCaursel(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 150.0,
                    height: 45.0,
                    child: RaisedButton(
                      elevation: 0.5,
                      color: Color(0xffe6f2ff),
                      shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(18.0)
                      ),
                      onPressed: (){}, 
                      // Navigator.push(
                      //   context, 
                      //   MaterialPageRoute(
                      //     builder: (BuildContext context)=>Challenges()
                      //   )
                      // ), 
                      child: Padding(
                        padding: const EdgeInsets.only(left:12.0,right: 12.0,top: 6.0,bottom: 6.0),
                        child: Text(
                          "Challenge",
                          style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                      )
                    ),
                  )
                ],
              ),
              ChallengeData()
            ],
          ),
        ),
      ),
    );
  }
}