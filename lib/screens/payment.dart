import 'package:fitnesstracker2020/netBanking.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {

  String amount;
  Payment(this.amount);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

  bool wallet,upi,card,net;
  int _currentindex=0;
  PageController _paycontroller;
  String amount;

  @override
  void initState() {
    amount=widget.amount;
    wallet=true;
    upi=false;
    card=false;
    net=false;
    super.initState();
    _paycontroller=PageController();
  }

  @override
  void dispose() {
    _paycontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white,Color(0xffFFEFE3)]
            )
          ),
        ),
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Payment Options',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.0
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                color: wallet?Color(0xff119F72):Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  side: BorderSide(
                    color: Color(0xff119F72)
                  )
                ),
                onPressed: () {
                  setState(() {
                    wallet=true;
                    card=false;upi=false;net=false;
                    if (_paycontroller.hasClients) {
                      _paycontroller.animateToPage(
                        0,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    }
                  });
                  // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>PaymentEntry()));
                },
                child: Text(
                  "Wallet",
                  style: TextStyle(
                    color: wallet?Colors.white:Colors.black,
                    fontSize: 13.0
                  ),
                ),
              ),
              // SizedBox(width: MediaQuery.of(context).size.width*0.02,),
              RaisedButton(
                color: upi?Color(0xff119F72):Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  side: BorderSide(
                    color: Color(0xff119F72)
                  )
                ),
                onPressed: () {
                  setState(() {
                    upi=true;
                    card=false;wallet=false;net=false;
                    if (_paycontroller.hasClients) {
                      _paycontroller.animateToPage(
                        1,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    }
                  });
                },
                child: Text(
                  "UPI",
                  style: TextStyle(
                    color: upi?Colors.white:Colors.black,
                    fontSize: 13.0
                  ),
                ),
              ),
              // SizedBox(width: MediaQuery.of(context).size.width*0.02,),
              RaisedButton(
                color: card?Color(0xff119F72):Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  side: BorderSide(
                    color: Color(0xff119F72)
                  )
                ),
                onPressed: () {
                  setState(() {
                    card=true;
                    wallet=false;upi=false;net=false;
                    if (_paycontroller.hasClients) {
                      _paycontroller.animateToPage(
                        2,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    }
                  });
                  // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>PaymentEntry()));
                },
                child: Text(
                  "Card",
                  style: TextStyle(
                    color: card?Colors.white:Colors.black,
                    fontSize: 13.0
                  ),
                ),
              ),
              // SizedBox(width: MediaQuery.of(context).size.width*0.02,),
              RaisedButton(
                color: net?Color(0xff119F72):Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  side: BorderSide(
                    color: Color(0xff119F72)
                  )
                ),
                onPressed: () {
                  setState(() {
                    net=true;
                    wallet=false;upi=false;card=false;
                    if (_paycontroller.hasClients) {
                      _paycontroller.animateToPage(
                        3,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    }
                  });
                  // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>PaymentEntry()));
                },
                child: Text(
                  "Netbanking",
                  style: TextStyle(
                    color: net?Colors.white:Colors.black,
                    fontSize: 13.0
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.04,),
          Container(
            child: Expanded(
              child: PageView(
                controller: _paycontroller,
                children: <Widget>[
                  Center(child: Text('data1'),),
                  Center(child: Text('data2'),),
                  Center(child: Text('data3'),),
                  NetBanking()
                ],
                onPageChanged: (int index){
                  setState(() {
                    _currentindex = index;
                  });
                },
              ) 
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.8,
            child: RaisedButton(
              onPressed: (){},
              color: Colors.blueAccent,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Proceed to pay ₹$amount',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0
                  ),
                ),
              ), 
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,)
        ],
      ),
    );
  }
}