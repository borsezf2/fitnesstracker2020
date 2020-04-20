import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PublicChallengeData extends StatefulWidget {
  @override
  _PublicChallengeDataState createState() => _PublicChallengeDataState();
}

class _PublicChallengeDataState extends State<PublicChallengeData> {

  
  List<Container>_widget1(int count){
    return List.generate(
      count, 
      (index) => Container(
        width: 120.0,
        height: 126.0,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          elevation: 0.0,
          color: Color.fromRGBO(255, 223, 200, 0.6),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:18.0,bottom: 8.0,left: 5.0,right: 5.0),
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  child: SvgPicture.asset('assets/run.svg')
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),
                child: Text(
                  "Running",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ).toList();
  }

  List<Container>_widget2(int count){
    return List.generate(
      count, 
      (index) => Container(
        width: 120.0,
        height: 126.0,
        child: Card(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          color: Color.fromRGBO(198, 221, 255, 0.6),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:18.0,bottom: 8.0,left: 5.0,right: 5.0),
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  child: SvgPicture.asset('assets/cycle.svg')
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),                   
                child: Text(
                  "Cycling",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ).toList();
  }

  List<Container>_widget3(int count){
    return List.generate(
      count, 
      (index) => Container(
        width: 120.0,
        height: 126.0,
        child: Card(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          color: Color.fromRGBO(182, 225, 210, 0.6),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:12.0,bottom: 8.0,left: 5.0,right: 5.0),                    
                child: Container(
                  height: 60.0,
                  width: 60.0,
                  child: SvgPicture.asset('assets/dance.svg')
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0,top: 4.0),
                child: Text(
                  "Dancing",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
        ),
      )
    ).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _widget1(3)
            ),
            Column(
              children: _widget2(3)
            ),
            Column(
              children: _widget3(3)
            )
          ],
        ),
      ),
    );
  }
}