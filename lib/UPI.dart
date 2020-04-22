import 'package:flutter/material.dart';

class UPI extends StatefulWidget {
  UPI({Key key}) : super(key: key);

  @override
  _UPIState createState() => _UPIState();
}

class _UPIState extends State<UPI> {
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
                      image: AssetImage('assets/gpay.png'),
                    )
                  ),
                ),
                Text(
                  'Google Pay',
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
                      image: AssetImage('assets/bhimupi.png'),
                    )
                  ),
                ),
                Text(
                  'Bhim',
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
                  'Paytm UPI',
                  style: TextStyle(
                    fontSize: 11.0
                  ),
                )
              ],
            )
          ],
        ),
        // SizedBox(height: MediaQuery.of(context).size.height*0.03,),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: <Widget>[
        //     Column(
        //       children: <Widget>[
        //         Container(
        //           width: MediaQuery.of(context).size.width*0.15,
        //           height: MediaQuery.of(context).size.height*0.1,
        //           decoration: BoxDecoration(
        //             shape: BoxShape.circle,
        //             color: Colors.black,
        //           ),
        //         ),
        //         Text(
        //           'Freecharge'
        //         )
        //       ],
        //     ),
        //     Column(
        //       children: <Widget>[
        //         Container(
        //           width: MediaQuery.of(context).size.width*0.15,
        //           height: MediaQuery.of(context).size.height*0.1,
        //           decoration: BoxDecoration(
        //             shape: BoxShape.circle,
        //             color: Colors.black,
        //           ),
        //         ),
        //         Text(
        //           'Mobikwik'
        //         )
        //       ],
        //     ),
        //     Column(
        //       children: <Widget>[
        //         Container(
        //           width: MediaQuery.of(context).size.width*0.15,
        //           height: MediaQuery.of(context).size.height*0.1,
        //           decoration: BoxDecoration(
        //             shape: BoxShape.circle,
        //             color: Colors.black,
        //           ),
        //         ),
        //         Text(
        //           'Mobikwik'
        //         )
        //       ],
        //     )
        //   ],
        // ),
        SizedBox(height: MediaQuery.of(context).size.height*0.025,),
        Divider(
          color: Colors.grey[300],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'Add new UPI ID',
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