import 'package:flutter/material.dart';

class Retry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height:280.0),
              Text(
                'Check your internet connections',
                style: TextStyle(
                  fontSize: 18.0
                ),
              ),
              Text(
                'and try again',
                style: TextStyle(
                  fontSize: 18.0
                ),
              ),
              SizedBox(height:10.0),
              RaisedButton(
                onPressed:(){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Retry',
                    style: TextStyle(
                    fontSize: 18.0
                  ),
                  ),
                ), 
              )
            ],
          ),
        ),
      ),
    );
  }
}