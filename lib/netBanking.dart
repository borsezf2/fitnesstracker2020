import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NetBanking extends StatefulWidget {
  NetBanking({Key key}) : super(key: key);

  @override
  _NetBankingState createState() => _NetBankingState();
}

class _NetBankingState extends State<NetBanking> {
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).size.height*0.04,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // SizedBox(width: width*0.025,),
            Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width*0.15,
                  height: MediaQuery.of(context).size.height*0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/hdfc.png')
                    )
                  ),
                ),
                Text(
                  'HDFC Bank',
                  style: TextStyle(
                    fontSize: 11.0
                  ),
                )
              ],
            ),
            // SizedBox(width: width*0.18,),
            Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width*0.15,
                  height: MediaQuery.of(context).size.height*0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/SBI.png')
                    )
                  ),
                ),
                Text(
                  'State Bank of India',
                  style: TextStyle(
                    fontSize: 11.0
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width*0.15,
                  height: MediaQuery.of(context).size.height*0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/ICICI.png')
                    )
                  ),
                ),
                Text(
                  'ICICI Bank',
                  style: TextStyle(
                    fontSize: 11.0
                  ),
                )
              ],
            ),
            // SizedBox(width: width*0.187,),
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
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/yesbnk.png')
                    )
                  ),
                ),
                Text(
                  'Yes Bank',
                  style: TextStyle(
                    fontSize: 11.0
                  ),
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
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/pnb.png')
                    )
                  ),
                ),
                Text(
                  'Punjab National Bank',
                  style: TextStyle(
                    fontSize: 11.0
                  ),
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
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/axis.jpg')
                    )
                  ),
                ),
                Text(
                  'Axis Bank',
                  style: TextStyle(
                    fontSize: 11.0
                  ),
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
                fontSize: 13.0
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