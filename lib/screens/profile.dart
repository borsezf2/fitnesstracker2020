import 'package:fitnesstracker2020/screens/editMail.dart';
import 'package:fitnesstracker2020/screens/editNumber.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController _controller= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height:MediaQuery.of(context).size.height*0.08),
                Center(
                  child: CircleAvatar(
                    radius: 50.0,
                  ),
                ),
                SizedBox(height:MediaQuery.of(context).size.height*0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width*0.52,
                      animation: false,
                      // animationDuration: 1000,
                      lineHeight: 17.0,
                      // leading: new Text("left content"),
                      // trailing: new Text("right content"),
                      percent: 0.2,
                      center: Text(
                        "20.0%",
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: Colors.blueAccent,
                    ),
                  ],
                ),
                SizedBox(height:MediaQuery.of(context).size.height*0.05),
                Text(
                  'Name',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height:MediaQuery.of(context).size.height*0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'UserName',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      'Edit',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2.0,
                ),
                SizedBox(height:MediaQuery.of(context).size.height*0.02),
                Text(
                  'Gender',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'UserName',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      'Edit',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2.0,
                ),
                SizedBox(height:MediaQuery.of(context).size.height*0.02),
                Text(
                  'Phone No',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'UserName',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>EditNumber()));
                      },
                      child: Text(
                        'Update',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2.0,
                ),
                SizedBox(height:MediaQuery.of(context).size.height*0.02),
                Text(
                  'Email-Id',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'UserName',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>EditMail()));
                      },
                      child: Text(
                        'Update',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}