import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitnesstracker2020/cardCaursel.dart';
import 'package:fitnesstracker2020/homeData.dart';
import 'package:fitnesstracker2020/screens/challenges.dart';
import 'package:fitnesstracker2020/screens/instantChallenge.dart';
import 'package:fitnesstracker2020/screens/publicChallenge.dart';
import 'package:flutter/material.dart';
import 'package:fitnesstracker2020/multipleSelectChip.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> reportList = [
    "Instant",
    "Public",
    "Challenge"
  ];

  List<String> seletedSectorList = List();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .05),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              // borderRadius: BorderRadius.only(topLeft:  Radius.circular(30)),
              // border: Border.all(width: 0,color: Colors.white,style: BorderStyle.solid)
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                //Card Caursel
                CardCaursel(),

                //If the curve looking button are ***Choice Chip****
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: <Widget>[
                //     MultiSelectChip(
                //     reportList,
                //   ),
                //   ],
                // ),
                //Cards

                //If the curve looking buttons are ***FlatButtons***
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      elevation: 0.5,
                      color: Color(0xffe6f2ff),
                      shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(15.0)
                      ),
                      onPressed: ()=> Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (BuildContext context)=>InstantChallenge()
                        )
                      ),  
                      child: Padding(
                        padding: const EdgeInsets.only(left:12.0,right: 12.0,top: 6.0,bottom: 6.0),
                        child: Text(
                          "Instant",
                          style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500
                        ),
                        ),
                      )
                    ),
                    RaisedButton(
                      elevation: 0.5,
                      color: Color(0xffe6f2ff),
                      shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(15.0)
                      ),
                      onPressed: ()=> Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (BuildContext context)=>PublicChallenge
                          ()
                        )
                      ), 
                      child: Padding(
                        padding: const EdgeInsets.only(left:12.0,right: 12.0,top: 6.0,bottom: 6.0),
                        child: Text(
                          "Public",
                          style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500
                        ),
                        ),
                      )
                    ),
                    RaisedButton(
                      elevation: 0.5,
                      color: Color(0xffe6f2ff),
                      shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(15.0)
                      ),
                      onPressed: ()=> Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (BuildContext context)=>Challenges()
                        )
                      ), 
                      child: Padding(
                        padding: const EdgeInsets.only(left:12.0,right: 12.0,top: 6.0,bottom: 6.0),
                        child: Text(
                          "Challenge",
                          style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500
                        ),
                        ),
                      )
                    )
                  ],
                ),
                //Home page data
                HomeData(),
              ],
            )
          ),
        ),
      ),
    );
  }
}