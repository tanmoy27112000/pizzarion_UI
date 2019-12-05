import 'package:flutter/material.dart';
import './homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          display1: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.w700),
          subtitle: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w500),
          caption: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold),
          display2: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
      ),
      home: HomePage(),
    );
  }
}
