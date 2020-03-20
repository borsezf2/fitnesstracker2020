import 'package:flutter/material.dart';

class InstantChallengeData extends StatefulWidget {
  @override
  _InstantChallengeDataState createState() => _InstantChallengeDataState();
}

class _InstantChallengeDataState extends State<InstantChallengeData> {

  List<Padding> _widget(int count){
    return List.generate(
      count, 
      (index) => Padding(
        padding: const EdgeInsets.only(left:12.0,right: 12.0,top: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Card(
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
                          padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 4.0,bottom: 6.0),          
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
              ],
            ),
            Column(
              children: <Widget>[
                Card(
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
                          padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 4.0,bottom: 6.0),          
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
              ],
            ),
            Column(
              children: <Widget>[
                Card(
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
                          padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 4.0,bottom: 6.0),          
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
              ],
            )
          ],
        ),
      ),
    ).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: _widget(3)
    );
  }
}