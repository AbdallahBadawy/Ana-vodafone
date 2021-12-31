//import 'package:ana_vodafoneApp/login.dart';
//import 'package:ana_vodafoneApp/BottomBarScreens/mainScreen/mainScreen.dart';
//import 'package:ana_vodafoneApp/Follow_up_balance/followupmain.dart';
import 'package:ana_vodafoneApp/splashScreen.dart';
import 'package:flutter/material.dart';
import 'color.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Theme.of(context).primaryColor,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // background color
        primaryColor: Color(getColorHexFromStr('#f0f0f0')),
        // red color used in splash
        accentColor: Color(getColorHexFromStr('#ec4444')),
      ),
      home: SplashScreen(),
    );
  }
}
