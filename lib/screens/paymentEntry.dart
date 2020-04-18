import 'package:fitnesstracker2020/screens/payment.dart';
import 'package:flutter/material.dart';

class PaymentEntry extends StatefulWidget {
  PaymentEntry({Key key}) : super(key: key);

  @override
  _PaymentEntryState createState() => _PaymentEntryState();
}

class _PaymentEntryState extends State<PaymentEntry> {

  bool beginnerbtn,playerbtn,expertbtn;
  TextEditingController _paycontroller=TextEditingController();
  bool pay2k,pay1k,pay500,pay200,pay100,pay50;
  String amount;

  @override
  void initState() {
    beginnerbtn=false;
    playerbtn=false;
    expertbtn=false;
    pay2k=false;
    pay1k=false;
    pay500=false;
    pay200=false;
    pay100=false;
    pay50=false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height*0.06,),
            Container(
              height: MediaQuery.of(context).size.height*0.16,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white,Color(0xffFFEFE3)]
                )
              ),
              child: Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05),
                child: Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                        Text(
                          'Running',
                          style: TextStyle(
                            fontSize: 20.0
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.45,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Icon(
                          Icons.image,
                          size: 100.0,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Provide few details first',
                      style: TextStyle(
                        fontSize: 17.0
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                    Text(
                      'Are you'
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RaisedButton(
                        color: beginnerbtn?Color(0xff119F72):Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          side: BorderSide(
                            color: Color(0xff119F72)
                          )
                        ),
                        onPressed: () {
                          setState(() {
                            beginnerbtn=true;
                            playerbtn=false;expertbtn=false;
                          });
                          // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>PaymentEntry()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left:10.0,right:10.0),
                          child: Text(
                            "Beginer",
                            style: TextStyle(
                              color: beginnerbtn?Colors.white:Colors.black54,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                        ),
                      ),
                        RaisedButton(
                        color: playerbtn?Color(0xff119F72):Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          side: BorderSide(
                            color: Color(0xff119F72)
                          )
                        ),
                        onPressed: () {
                          setState(() {
                            playerbtn=true;
                            beginnerbtn=false;expertbtn=false;
                          });
                          // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>PaymentEntry()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left:10.0,right:10.0),
                          child: Padding(
                            padding: const EdgeInsets.only(left:10.0,right:10.0),
                            child: Text(
                              "Player",
                              style: TextStyle(
                                color: playerbtn?Colors.white:Colors.black54,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                        ),
                      ),
                      RaisedButton(
                        color: expertbtn?Color(0xff119F72):Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          side: BorderSide(
                            color: Color(0xff119F72)
                          )
                        ),
                        onPressed: () {
                          setState(() {
                            expertbtn=true;
                            playerbtn=false;beginnerbtn=false;
                          });
                          // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>PaymentEntry()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left:10.0,right:10.0),
                          child: Padding(
                            padding: const EdgeInsets.only(left:10.0,right:10.0),
                            child: Text(
                              "Expert",
                              style: TextStyle(
                                color: expertbtn?Colors.white:Colors.black54,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                        ),
                      ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                    TextField(
                      controller: _paycontroller,
                      decoration: InputDecoration(
                        labelText: 'Challenge Amount',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.0),
                          // borderRadius: BorderRadius.circular(25.0)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.0),
                          // borderRadius: BorderRadius.circular(25.0)
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.015,),
                    Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: Text(
                        'Minimum amount is ₹ 50.'
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.015,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(
                            color: pay2k?Color(0xff119F72):Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                              side: BorderSide(
                                color: Color(0xff119F72)
                              )
                            ),
                            onPressed: () {
                              setState(() {
                                _paycontroller.text='2000';
                                amount='2000';
                                pay2k=true;
                                pay1k=false;pay500=false;pay200=false;pay100=false;pay50=false;
                              });
                              // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>PaymentEntry()));
                            },
                            child: Text(
                              "₹2000",
                              style: TextStyle(
                                color: pay2k?Colors.white:Colors.black54,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                          RaisedButton(
                            color: pay1k?Color(0xff119F72):Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                              side: BorderSide(
                                color: Color(0xff119F72)
                              )
                            ),
                            onPressed: () {
                              setState(() {
                                _paycontroller.text='1000';
                                amount='1000';
                                pay1k=true;
                                pay2k=false;pay500=false;pay200=false;pay100=false;pay50=false;
                              });
                              // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>PaymentEntry()));
                            },
                            child: Text(
                              "₹1000",
                              style: TextStyle(
                                color: pay1k?Colors.white:Colors.black54,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                          RaisedButton(
                            color: pay500?Color(0xff119F72):Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                              side: BorderSide(
                                color: Color(0xff119F72)
                              )
                            ),
                            onPressed: () {
                              setState(() {
                                _paycontroller.text='500';
                                amount='500';
                                pay500=true;
                                pay1k=false;pay2k=false;pay200=false;pay100=false;pay50=false;
                              });
                              // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>PaymentEntry()));
                            },
                            child: Text(
                              "₹500",
                              style: TextStyle(
                                color: pay500?Colors.white:Colors.black54,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                          RaisedButton(
                            color: pay200?Color(0xff119F72):Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                              side: BorderSide(
                                color: Color(0xff119F72)
                              )
                            ),
                            onPressed: () {
                              setState(() {
                                _paycontroller.text='200';
                                amount='200';
                                pay200=true;
                                pay1k=false;pay500=false;pay2k=false;pay100=false;pay50=false;
                              });
                              // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>PaymentEntry()));
                            },
                            child: Text(
                              "₹200",
                              style: TextStyle(
                                color: pay200?Colors.white:Colors.black54,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                          RaisedButton(
                            color: pay100?Color(0xff119F72):Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                              side: BorderSide(
                                color: Color(0xff119F72)
                              )
                            ),
                            onPressed: () {
                              setState(() {
                                _paycontroller.text='100';
                                amount='100';
                                pay100=true;
                                pay1k=false;pay500=false;pay200=false;pay2k=false;pay50=false;
                              });
                              // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>PaymentEntry()));
                            },
                            child: Text(
                              "₹100",
                              style: TextStyle(
                                color: pay100?Colors.white:Colors.black54,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                          RaisedButton(
                            color: pay50?Color(0xff119F72):Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                              side: BorderSide(
                                color: Color(0xff119F72)
                              )
                            ),
                            onPressed: () {
                              setState(() {
                                _paycontroller.text='50';
                                amount='50';
                                pay50=true;
                                pay1k=false;pay500=false;pay200=false;pay100=false;pay2k=false;
                              });
                              // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>PaymentEntry()));
                            },
                            child: Text(
                              "₹50",
                              style: TextStyle(
                                color: pay50?Colors.white:Colors.black54,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '245 Participant',
                          style: TextStyle(
                            fontSize: 12.0
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(3.0)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left:6.0,right: 6.0,top: 2.0,bottom: 2.0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 7.0,
                                  height: 7.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blueAccent,
                                  )
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                                Text(
                                  'LIVE NOW',
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.blueAccent
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.025,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        color: Colors.blueAccent,
                        onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Payment(amount)));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Proceed to Payment',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0
                            ),
                          ),
                        ), 
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.015,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Rules of winning',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 12.0
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}