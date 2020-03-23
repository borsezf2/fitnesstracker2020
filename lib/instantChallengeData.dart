import 'package:flutter/material.dart';

class InstantChallengeData extends StatefulWidget {
  @override
  _InstantChallengeDataState createState() => _InstantChallengeDataState();
}

class _InstantChallengeDataState extends State<InstantChallengeData> {

  List<Card>_widget1(int count){
    return List.generate(
      count, 
      (index) => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))
        ),
        elevation: 0.0,
        color: Color(0xffffd9b3),
        child: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 80.0,
                width: 100.0,
                child: Icon(
                  Icons.ac_unit,
                  size: 80.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 6.0),          
                child: Text(
                  "Running",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Container(
                height: 40.0,
                child: RaisedButton(
                  color: Colors.black54,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0),bottomRight: Radius.circular(15.0))
                  ),
                  onPressed: (){},
                  child: Text(
                    "Pay and join",
                    style: TextStyle(
                      fontSize: 15.0,
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

  List<Card>_widget2(int count){
    return List.generate(
      count, 
      (index) => Card(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))
        ),
        color: Color(0xffe6f2ff),
        child: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 80.0,
                width: 100.0,
                child: Icon(
                  Icons.ac_unit,
                  size: 80.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 6.0),          
                child: Text(
                  "Running",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Container(
                height: 40.0,
                child: RaisedButton(
                  color: Colors.black54,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0),bottomRight: Radius.circular(15.0))
                  ),
                  onPressed: (){},
                  child: Text(
                    "Pay and join",
                    style: TextStyle(
                      fontSize: 15.0,
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

  List<Card>_widget3(int count){
    return List.generate(
      count, 
      (index) => Card(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))
        ),
        color: Color(0xffd6f5d6),
        child: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 80.0,
                width: 100.0,
                child: Icon(
                  Icons.ac_unit,
                  size: 80.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 6.0),          
                child: Text(
                  "Running",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Container(
                height: 40.0,
                child: RaisedButton(
                  color: Colors.black54,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0),bottomRight: Radius.circular(15.0))
                  ),
                  onPressed: (){},
                  child: Text(
                    "Pay and join",
                    style: TextStyle(
                      fontSize: 15.0,
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

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}