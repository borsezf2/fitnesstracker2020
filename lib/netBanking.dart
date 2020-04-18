import 'package:flutter/material.dart';

class NetBanking extends StatefulWidget {
  NetBanking({Key key}) : super(key: key);

  @override
  _NetBankingState createState() => _NetBankingState();
}

class _NetBankingState extends State<NetBanking> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width*0.15,
                  height: MediaQuery.of(context).size.height*0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'HDFC Bank'
                )
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width*0.15,
                  height: MediaQuery.of(context).size.height*0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'HDFC Bank'
                )
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width*0.15,
                  height: MediaQuery.of(context).size.height*0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'HDFC Bank'
                )
              ],
            )
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.03,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width*0.15,
                  height: MediaQuery.of(context).size.height*0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'HDFC Bank'
                )
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width*0.15,
                  height: MediaQuery.of(context).size.height*0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'HDFC Bank'
                )
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width*0.15,
                  height: MediaQuery.of(context).size.height*0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'HDFC Bank'
                )
              ],
            )
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.025,),
        Divider(
          color: Colors.grey[300],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'View all banks',
              style: TextStyle(
                fontSize: 16.0
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.chevron_right
              ), 
              onPressed: null
            )
          ],
        ),
        Divider(
          color: Colors.grey[300],
        ),
      ],
    );
  }
}