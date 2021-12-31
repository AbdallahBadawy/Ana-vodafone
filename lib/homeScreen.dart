import 'package:ana_vodafoneApp/customBotttomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //to make app responsive,,
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true)
          ..init(context);

    return Scaffold(
      backgroundColor: Color.fromARGB(240, 240, 240, 0),
      body: CustomBottomBar(),
    );
  }
}
