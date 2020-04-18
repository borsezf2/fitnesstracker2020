import 'package:fitnesstracker2020/screens/OTP.dart';
import 'package:flutter/material.dart';

class EditNumber extends StatefulWidget {
  @override
  _EditNumberState createState() => _EditNumberState();
}

class _EditNumberState extends State<EditNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Update Mobile No',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '+91',
                  style: TextStyle(
                    fontSize: 18.0
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                Flexible(
                  child:Container(
                    width: MediaQuery.of(context).size.width*0.4,
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'XXXXXXXXXX'
                      ),
                      style: TextStyle(
                        fontSize: 18.0
                      ),
                    ),
                  ) 
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  side: BorderSide(
                    color: Colors.blueAccent
                  )
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>OTP()));
                },
                child: Text(
                  'Send OTP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}