import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  Wallet({Key key}) : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).size.height*0.04,),
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
                      image: AssetImage('assets/amazonpay.png'),
                    )
                  ),
                ),
                Text(
                  'Amazon Pay',
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
                      image: AssetImage('assets/paytm.png'),
                    )
                  ),
                ),
                Text(
                  'Paytm',
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
                      image: AssetImage('assets/phonepe.png'),
                    )
                  ),
                ),
                Text(
                  'PhonePe',
                  style: TextStyle(
                    fontSize: 11.0
                  ),
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
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/freecharge.png'),
                    )
                  ),
                ),
                Text(
                  'Freecharge',
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
                      image: AssetImage('assets/mobikwik.png'),
                    )
                  ),
                ),
                Text(
                  'Mobikwik',
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
                      image: AssetImage('assets/mobikwik.png'),
                    )
                  ),
                ),
                Text(
                  'Mobikwik',
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
              'View all wallets',
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