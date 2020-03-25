import 'package:fitnesstracker2020/ChallengeScreenData.dart';
import 'package:fitnesstracker2020/cardCaursel.dart';
import 'package:fitnesstracker2020/screens/challenges.dart';
import 'package:fitnesstracker2020/screens/instantChallenge.dart';
import 'package:fitnesstracker2020/screens/publicChallenge.dart';
import 'package:flutter/material.dart';

class Challenge extends StatefulWidget {
  @override
  _ChallengeState createState() => _ChallengeState();
}

class _ChallengeState extends State<Challenge> {
  List<String> reportList = [
    "Instant",
    "Public",
    "Challenge"
  ];

  List<String> seletedSectorList = List();

  int _currentIndex=0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  
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
            ),
            // height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                //Page View
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    children: <Widget>[
                      CardCaursel(),
                      CardCaursel(),
                      CardCaursel()
                    ],
                    onPageChanged: (int index){
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      child: RaisedButton(
                        elevation: 0.5,
                        color: Color(0xffe6f2ff),
                        shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(15.0)
                        ),
                        onPressed: () {
                          if (_pageController.hasClients) {
                            _pageController.animateToPage(
                              1,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          }
                        }, 
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
                    ),
                    RaisedButton(
                      elevation: 0.5,
                      color: Color(0xffe6f2ff),
                      shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(15.0)
                      ),
                      onPressed: () {
                        if (_pageController.hasClients) {
                          _pageController.animateToPage(
                            2,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        }
                      }, 
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
                      onPressed: () {
                          if (_pageController.hasClients) {
                            _pageController.animateToPage(
                              0,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          }
                        },  
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
                ChallengeScreenData(),
              ],
            )
          ),
        ),
      ),
    );
  }
}