import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int flagWallet;

  int flagUpi;

  int flagCard;

  int flagNetbanking;

  List<String> amt = ["2000", "1000", "500", "200", "100", "50"];

  final amtcon = new TextEditingController();
  @override
  void initState() {
    flagWallet = 0;
    flagUpi = 0;
    flagCard = 0;
    flagNetbanking = 1;
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
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white, Color(0xffffc9a8)])),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment(-1, 0),
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
                      alignment: Alignment(0, 0),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Payment Options",
                          style: TextStyle(fontSize: 20),
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
                          Container(
                            height: 40,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        flagWallet = 1;
                                        flagCard = 0;
                                        flagUpi = 0;
                                        flagNetbanking = 0;
                                      });
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                          border: flagWallet == 1
                                              ? null
                                              : Border.all(
                                                  color: Colors.green,
                                                  width: 2),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: flagWallet == 1
                                              ? Colors.green
                                              : Colors.white,
                                        ),
                                        child: Center(
                                            child: Text("Wallet",
                                                style: TextStyle(
                                                    color: flagWallet == 1
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
                                        flagWallet = 0;
                                        flagCard = 0;
                                        flagUpi = 0;
                                        flagNetbanking = 1;
                                      });
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                          border: flagNetbanking == 1
                                              ? null
                                              : Border.all(
                                                  color: Colors.green,
                                                  width: 2),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: flagNetbanking == 1
                                              ? Colors.green
                                              : Colors.white,
                                        ),
                                        child: Center(
                                            child: Text("Netbanking",
                                                style: TextStyle(
                                                    color: flagNetbanking == 1
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
                                        flagNetbanking = 0;
                                        flagWallet = 0;
                                        flagCard = 0;
                                        flagUpi = 1;
                                      });
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                          border: flagUpi == 1
                                              ? null
                                              : Border.all(
                                                  color: Colors.green,
                                                  width: 2),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: flagUpi == 1
                                              ? Colors.green
                                              : Colors.white,
                                        ),
                                        child: Center(
                                            child: Text("UPI",
                                                style: TextStyle(
                                                    color: flagUpi == 1
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
                                        flagWallet = 0;
                                        flagCard = 1;
                                        flagUpi = 0;
                                        flagNetbanking = 0;
                                      });
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                          border: flagCard == 1
                                              ? null
                                              : Border.all(
                                                  color: Colors.green,
                                                  width: 2),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: flagCard == 1
                                              ? Colors.green
                                              : Colors.white,
                                        ),
                                        child: Center(
                                            child: Text("Card",
                                                style: TextStyle(
                                                    color: flagCard == 1
                                                        ? Colors.white
                                                        : Colors.green)))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          flagNetbanking == 1 ? NetbankingContents() : Unknown()
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 1),
                    child: Container(
                      height: 100,
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 20),
                          Expanded(
                              child: Container(
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                              "Proceed to payment",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )),
                          )),
                          SizedBox(height: 20),
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

class Unknown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Later"),
      ),
    );
  }
}

class NetbankingContents extends StatelessWidget {
  Widget bankTile({String bankName, String assetImg}) {
    return Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Container(
                      width: double.infinity,
                      height: 90,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: Center(
                        child: Text("Image"),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text(bankName)
                ],
              ),
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              bankTile(bankName: "HDFC"),
              bankTile(bankName: "ICICI"),
              bankTile(bankName: "SBI"),
            ],
          ),
          Row(
            children: <Widget>[
              bankTile(bankName: "YES BANK"),
              bankTile(bankName: "PNB"),
              bankTile(bankName: "AXIS"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.black12,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: GestureDetector(
              onTap: null,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "View all Banks",
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.black12,
            ),
          ),
        ],
      )),
    );
  }
}
