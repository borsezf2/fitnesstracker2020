import 'package:fitnesstracker2020/screens/homes.dart';
import 'package:fitnesstracker2020/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Celias',
      ),
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}