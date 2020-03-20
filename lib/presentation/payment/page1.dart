import 'package:fitness_tracker/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int flagBegin;

  int flagPlayer;

  int flagExpert;

  List<String> amt = ["2000", "1000", "500", "200", "100", "50"];

  final amtcon = new TextEditingController();
  @override
  void initState() {
    flagBegin = 1;
    flagPlayer = 0;
    flagExpert = 0;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: <Widget>[
          Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white, Color(0xffffc9a8)])),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment(-1, -1),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-1, 1),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 30),
                        child: Text(
                          "Running",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
            flex: 9,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment(-1, -1),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 20),
                          Text(
                            "Provide few details first",
                            style: TextStyle(fontSize: 21),
                          ),
                          SizedBox(height: 40),
                          Text(
                            "Are you",
                            style: TextStyle(
                                fontSize: 19, color: Color(0x88000000)),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 40,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        flagBegin = 1;
                                        flagExpert = 0;
                                        flagPlayer = 0;
                                      });
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                          border: flagBegin == 1
                                              ? null
                                              : Border.all(
                                                  color: Colors.green,
                                                  width: 2),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: flagBegin == 1
                                              ? Colors.green
                                              : Colors.white,
                                        ),
                                        child: Center(
                                            child: Text("Beginner",
                                                style: TextStyle(
                                                    color: flagBegin == 1
                                                        ? Colors.white
                                                        : Colors.green)))),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        flagBegin = 0;
                                        flagExpert = 0;
                                        flagPlayer = 1;
                                      });
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                          border: flagPlayer == 1
                                              ? null
                                              : Border.all(
                                                  color: Colors.green,
                                                  width: 2),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: flagPlayer == 1
                                              ? Colors.green
                                              : Colors.white,
                                        ),
                                        child: Center(
                                            child: Text("Player",
                                                style: TextStyle(
                                                    color: flagPlayer == 1
                                                        ? Colors.white
                                                        : Colors.green)))),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        flagBegin = 0;
                                        flagExpert = 1;
                                        flagPlayer = 0;
                                      });
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                          border: flagExpert == 1
                                              ? null
                                              : Border.all(
                                                  color: Colors.green,
                                                  width: 2),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: flagExpert == 1
                                              ? Colors.green
                                              : Colors.white,
                                        ),
                                        child: Center(
                                            child: Text("Expert",
                                                style: TextStyle(
                                                    color: flagExpert == 1
                                                        ? Colors.white
                                                        : Colors.green)))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          TextFormField(
                            controller: amtcon,
                            decoration: new InputDecoration(
                              labelText: "Challenge Amount",
                              fillColor: Colors.white,
                              focusColor: Colors.grey,
                              hoverColor: Colors.grey,
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(5.0),
                                borderSide: new BorderSide(),
                              ),
                              //fillColor: Colors.green
                            ),
                            validator: (val) {
                              if (val.length == 0) {
                                return "Amount cannot be empty";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.grey,
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Minimum Amount is 50.",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 40,
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        amtcon.text = amt[index];
                                      },
                                      child: Container(
                                          height: 40,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.green, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.white,
                                          ),
                                          child: Center(
                                              child: Text(amt[index],
                                                  style: TextStyle(
                                                      color: flagPlayer == 1
                                                          ? Colors.white
                                                          : Colors.green)))),
                                    ),
                                  );
                                },
                                itemCount: amt.length),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 1),
                    child: Container(
                      height: 130,
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "245 Participants",
                                style: TextStyle(fontSize: 13),
                              ),
                              Container(
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.blue),
                                        height: 7,
                                        width: 7,
                                      ),
                                      Text(
                                        "LIVE NOW",
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: 13),
                                      ),
                                    ],
                                  ),
                                ),
                                height: 25,
                                width: 90,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blue, width: 2),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Expanded(
                              child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Page2()));
                            },
                            child: Container(
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                "Proceed to payment",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )),
                            ),
                          )),
                          SizedBox(height: 20),
                          Text(
                            "Rules of winning",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
