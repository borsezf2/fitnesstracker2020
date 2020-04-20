import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InstantChallengeData extends StatefulWidget {
  @override
  _InstantChallengeDataState createState() => _InstantChallengeDataState();
}

class _InstantChallengeDataState extends State<InstantChallengeData> {

  List<Container>_widget1(int count){
    return List.generate(
      count, 
      (index) => Container(
        width: 110.0,
        height: 162.0,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          elevation: 0.0,
          color: Color.fromRGBO(255, 223, 200, 0.6),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:8.0,bottom: 8.0,left: 5.0,right: 5.0),
                child: Container(
                  height: 70.0,
                  width: 70.0,
                  child: SvgPicture.asset('assets/run.svg')
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0,top: 4.0),
                child: Text(
                  "Running",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                height: 40.0,
                width: 110.0,
                child: RaisedButton(
                  color: Colors.black54,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),bottomRight: Radius.circular(10.0))
                  ),
                  onPressed: (){},
                  child: Text(
                    "Pay and join",
                    style: TextStyle(
                      fontSize: 11.0,
                      color: Colors.white
                    ),
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
        width: 110.0,
        height: 162.0,
        child: Card(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          color: Color.fromRGBO(198, 221, 255, 0.6),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:8.0,bottom: 8.0,left: 5.0,right: 5.0),
                child: Container(
                  height: 70.0,
                  width: 70.0,
                  child: SvgPicture.asset('assets/cycle.svg')
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0,top: 4.0),                   
                child: Text(
                  "Cycling",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                height: 40.0,
                width: 110.0,
                child: RaisedButton(
                  color: Colors.black54,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),bottomRight: Radius.circular(10.0))
                  ),
                  onPressed: (){},
                  child: Text(
                    "Pay and join",
                    style: TextStyle(
                      fontSize: 11.0,
                      color: Colors.white
                    ),
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
        width: 110.0,
        height: 162.0,
        child: Card(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          color: Color.fromRGBO(182, 225, 210, 0.6),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:8.0,bottom: 8.0,left: 5.0,right: 5.0),                    
                child: Container(
                  height: 70.0,
                  width: 70.0,
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
              ),
              Container(
                height: 40.0,
                width: 110.0,
                child: RaisedButton(
                  color: Colors.black54,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),bottomRight: Radius.circular(10.0))
                  ),
                  onPressed: (){},
                  child: Text(
                    "Pay and join",
                    style: TextStyle(
                      fontSize: 11.0,
                      color: Colors.white
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    ).toList();
  }

  // Container(
  //               height: 40.0,
  //               child: RaisedButton(
  //                 color: Colors.black54,
  //                 shape: RoundedRectangleBorder(
  //                   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0),bottomRight: Radius.circular(15.0))
  //                 ),
  //                 onPressed: (){},
  //                 child: Text(
  //                   "Pay and join",
  //                   style: TextStyle(
  //                     fontSize: 15.0,
  //                     color: Colors.white
  //                   ),
  //                 ),
  //               ),
  //             )

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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