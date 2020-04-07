import 'package:fitnesstracker2020/screens/challengeScreen.dart';
import 'package:fitnesstracker2020/screens/homes.dart';
import 'package:fitnesstracker2020/screens/Screen2.dart';
import 'package:fitnesstracker2020/screens/instantChallenge.dart';
import 'package:fitnesstracker2020/screens/instantChallengeScreen.dart';
import 'package:fitnesstracker2020/screens/retryOdd.dart';
import 'package:fitnesstracker2020/screens/retryScreen.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex=0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  // @override
  // void dispose() {
  //   _pageController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          children: <Widget>[
            Home(),
            Challenge(),
            RetryOdd(),
            ChallengeScreen(),
          ],
          onPageChanged: (int index){
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        // fixedColor: Colors.black,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black87,
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
          _pageController.animateToPage(
            index,
            duration:Duration(milliseconds: 200),
            curve: Curves.easeIn,
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.whatshot,
            ),
            title: Text(
              'Challenge',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
            ),
            title: Text(
              'Rewards',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.graphic_eq,
            ),
            title: Text(
              'Music',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ]
      ),
    );
    //   bottomNavigationBar: SafeArea(

    //     child: BottomNavyBar(
    //       selectedIndex: _currentIndex,
    //       showElevation: true, // use this to remove appBar's elevation
    //       onItemSelected: (index) {
    //         setState(() => _currentIndex = index);
    //         _pageController.jumpToPage(index);
    //       },
    //       items: [
    //         BottomNavyBarItem(
    //           icon: Icon(Icons.home),
    //           title: Text('  Home',),
    //           activeColor: Colors.blueAccent,
    //         ),
    //         BottomNavyBarItem(
    //             icon: Icon(Icons.whatshot),
    //             title: Text('  Challange'),
    //             activeColor: Colors.purpleAccent
    //         ),
    //         BottomNavyBarItem(
    //             icon: Icon(Icons.card_giftcard),
    //             title: Text('  Reward'),
    //             activeColor: Colors.pink
    //         ),
    //         BottomNavyBarItem(
    //             icon: Icon(Icons.music_note),
    //             title: Text('  Music'),
    //             activeColor: Colors.green
    //         ),
    //       ],
    //     ),
    //   )
    // );
  }
}