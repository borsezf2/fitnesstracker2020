import 'package:flutter/material.dart';

class CardPay extends StatefulWidget {
  @override
  _CardPayState createState() => _CardPayState();
}

class _CardPayState extends State<CardPay> {

  bool _termsCond;

  @override
  void initState() {
    _termsCond=false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height*0.04,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'CARD NUMBER',
                  hintStyle: TextStyle(
                    fontSize: 13.0
                  )
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'NAME ON CARD',
                  hintStyle: TextStyle(
                    fontSize: 13.0
                  )
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      width: 180.0,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'VALID THRU (MM/YY)',
                          hintStyle: TextStyle(
                            fontSize: 13.0
                          )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Expanded(
                    child: Container(
                      width: 50.0,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'CVV',
                          hintStyle: TextStyle(
                            fontSize: 13.0
                          )
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.035,
                    child: Text(
                      '          Securely save card details',
                      style: TextStyle(
                        fontSize: 11.0
                      ),
                    ),
                  ),
                  Positioned(
                    left: -15.0,
                    top: -15.0,
                    child: Transform.scale(
                      scale: 0.78,
                      child: Checkbox(
                        value: _termsCond,
                        onChanged: (bool value) {
                          setState(() {
                            _termsCond = value;
                          });
                        }
                      ),
                    ),
                  ),
                  // SizedBox(width: 15),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width*0.1,
                    height: MediaQuery.of(context).size.height*0.065,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.2), BlendMode.dstATop),
                        image:AssetImage('assets/visa.png'), 
                      )
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.1,
                    height: MediaQuery.of(context).size.height*0.065,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.2), BlendMode.dstATop),
                        image:AssetImage('assets/mastercard.png'), 
                      )
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.1,
                    height: MediaQuery.of(context).size.height*0.065,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.2), BlendMode.dstATop),
                        image:AssetImage('assets/rupay.png'), 
                      )
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}