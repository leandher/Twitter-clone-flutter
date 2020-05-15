import 'package:flutter/material.dart';
import 'package:mobile/src/home.dart';
import 'package:mobile/src/pages/timeline.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter Clone',
      theme: ThemeData(
        primaryColor: Color(0xFF1DA1F2),
        accentColor: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(screens: <Widget>[
        TimeLine()
      ],),
    );
  }
}
