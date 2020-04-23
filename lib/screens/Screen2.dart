import 'package:fitnesstracker2020/challengeScreenData.dart';
import 'package:fitnesstracker2020/cardCaursel.dart';
import 'package:fitnesstracker2020/instantChallengeData.dart';
import 'package:fitnesstracker2020/publicChallengeData.dart';
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
  int _index=0;
  PageController _carouselController, _pageController;
  bool btn1,btn2,btn3;

  @override
  void initState() {
    btn1=false;
    btn2=false;
    btn3=false;
    super.initState();
    _carouselController = PageController();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _carouselController.dispose();
    _pageController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: width,
        padding: EdgeInsets.only(top: height * .015),
        child: Column(
          children: <Widget>[
            SizedBox(height: height*0.035),
            //Page View
            Container(
              height: height*0.317,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: PageView(
                      controller: _carouselController,
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
                ],
              ),
            ),
            // SizedBox(height: height*0.01,),
            Divider(
              color: Colors.grey,
            ),
            Container(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: width*0.04,
                  ),
                  Container(
                    width: width*0.28,
                    child: RaisedButton(
                      elevation: 0.5,
                      color: btn1?Color(0xff119F72):Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        side: BorderSide(
                          color: Color(0xff119F72)
                        )
                      ),
                      onPressed: () {
                        if (_carouselController.hasClients) {
                          _carouselController.animateToPage(
                            1,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        }
                        if (_pageController.hasClients) {
                          _pageController.animateToPage(
                            1, 
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        }
                        setState(() {
                          btn1=true;
                          btn2=false;btn3=false;
                        });
                      }, 
                      child: Text(
                        "Instant",
                        style: TextStyle(
                          color: btn1? Colors.white:Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ),
                  ),
                  SizedBox(
                    width: width*0.04,
                  ),
                  Container(
                    width: width*0.28,
                    child: RaisedButton(
                      elevation: 0.5,
                      color: btn2?Color(0xff119F72):Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        side: BorderSide(
                          color: Color(0xff119F72)
                        )
                      ),
                      onPressed: () {
                        if (_carouselController.hasClients) {
                          _carouselController.animateToPage(
                            2,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        }
                        if (_pageController.hasClients) {
                          _pageController.animateToPage(
                            2, 
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        }
                        setState(() {
                          btn2=true;
                          btn1=false;btn3=false;
                        });
                      }, 
                      child: Text(
                        "Public",
                        style: TextStyle(
                          color: btn2? Colors.white:Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold
                      ),
                      )
                    ),
                  ),
                  SizedBox(
                    width: width*0.04,
                  ),
                  Container(
                    width: width*0.280,
                    child: RaisedButton(
                      elevation: 0.5,
                      color: btn3?Color(0xff119F72):Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        side: BorderSide(
                          color: Color(0xff119F72)
                        )
                      ),
                      onPressed: () {
                          if (_carouselController.hasClients) {
                            _carouselController.animateToPage(
                              0,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          }
                          if (_pageController.hasClients) {
                            _pageController.animateToPage(
                              0, 
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          }
                          setState(() {
                            btn3=true;
                            btn2=false;btn1=false;
                          });
                        },  
                      child: Text(
                        "Challenge",
                        style: TextStyle(
                          color: btn3? Colors.white:Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold
                      ),
                      )
                    ),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(height: height*0.015,),
            Container(
              child: Expanded(
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  children: <Widget>[
                    ChallengeScreenData(),
                    InstantChallengeData(),
                    PublicChallengeData(),
                  ],
                  onPageChanged: (int index){
                    setState(() {
                      _index = index;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}