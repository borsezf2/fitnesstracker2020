import 'package:flutter/material.dart';

class ChallengeData extends StatefulWidget {
  @override
  _ChallengeDataState createState() => _ChallengeDataState();
}

class _ChallengeDataState extends State<ChallengeData> {

  List<GestureDetector>_widget1(int count){
    return List.generate(
      count, 
      (index) => GestureDetector(
        onTap: (){
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (BuildContext context)=>Challenge1())
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))
          ),
          elevation: 0.0,
          color: Color(0xffffd9b3),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:8.0,bottom: 8.0,left: 5.0,right: 5.0),
                child: Container(
                  height: 78.0,
                  width: 100.0,
                  child: Icon(
                    Icons.ac_unit,
                    size: 80.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Running",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600
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
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:8.0,bottom: 8.0,left: 5.0,right: 5.0),
              child: Container(
                height: 78.0,
                width: 100.0,
                child: Icon(
                  Icons.ac_unit,
                  size: 80.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),                   
              child: Text(
                "Running",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600
                ),
              ),
            )
          ],
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
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:8.0,bottom: 8.0,left: 5.0,right: 5.0),                    
              child: Container(
                height: 78.0,
                width: 100.0,
                child: Icon(
                  Icons.ac_unit,
                  size: 80.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Running",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600
                ),
              ),
            )
          ],
        ),
      )
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

class Challenge1 extends StatefulWidget {
  @override
  _Challenge1State createState() => _Challenge1State();
}

class _Challenge1State extends State<Challenge1> {
  Color _activeColor = Colors.blue[100];
  Color _upcomingColor = Colors.white;
  TextEditingController _searchController=TextEditingController();

  List<Container> _widget(int count){
    return List.generate(
      count, 
      (index) => Container(
        width: MediaQuery.of(context).size.width,
        child: Card(
          elevation: 4.0,
          child: Padding(
            padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.image,
                          size: 45.0,
                        ),
                        Text(
                          "Name of challenge",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "₹500",
                                    style: TextStyle(
                                      fontSize: 16.0
                                    ),
                                  ),
                                  SizedBox(height: 2.0,),
                                  Icon(
                                    Icons.add_circle_outline,
                                    size: 30.0,
                                    color: Color(0xffffd9b3)
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "10",
                                    style: TextStyle(
                                      fontSize: 16.0
                                    ),
                                  ),
                                  SizedBox(height: 2.0,),
                                  Icon(
                                    Icons.people,
                                    size: 30.0,
                                    color: Color(0xffe6f2ff),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "₹5000",
                                    style: TextStyle(
                                      fontSize: 16.0
                                    ),
                                  ),
                                  SizedBox(height: 2.0,),
                                  Icon(
                                    Icons.monetization_on,
                                    size: 30.0,
                                    color: Color(0xffd6f5d6),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "1 Feb - 10 Feb",
                                style: TextStyle(
                                  fontSize: 16.0
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "6 weeks",
                                  style: TextStyle(
                                  fontSize: 16.0
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                RaisedButton(
                onPressed: (){},
                child: Text(
                  "Join",
                  style: TextStyle(
                    color: Colors.white
                  ),),
                color: Colors.blueAccent[200],
              )
              ],
            ),
          ),
        ),
      )
    )..toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: 45.0,
        height: 45.0,
        child: FloatingActionButton(
          backgroundColor: Colors.blue[200],
          onPressed: (){},
          child: Icon(
            Icons.add
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 0.0,
        child: Container(
          height: 45.0,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                ),
                hintText: ' Search',
                suffixIcon: Container(
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 1.0, color: Colors.grey)
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.green,
                    ),
                    onPressed: (){},
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                focusColor: Colors.white,
                hoverColor: Colors.white
              ),
              onSubmitted: (input){},
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Challenges",
          style: TextStyle(
            color: Colors.black
          )
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width*0.49,
                      child: RaisedButton(
                        onPressed: (){
                          setState(() {
                            _activeColor=Colors.blue[100];
                            _upcomingColor=Colors.white;
                          });
                        },
                        color: _activeColor,
                        child: Text(
                          "Active",
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.49,
                      child: RaisedButton(
                        onPressed: (){
                          setState(() {
                            _upcomingColor=Colors.blue[100];
                            _activeColor=Colors.white;
                          });
                        },
                        color: _upcomingColor,
                        child: Text(
                          "Upcoming",
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: Column(
                  children: _widget(5)
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}