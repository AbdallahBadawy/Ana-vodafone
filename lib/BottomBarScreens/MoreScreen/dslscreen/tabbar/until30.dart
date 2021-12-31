import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/dslscreen/tabbar/listcard30m.dart';
import 'package:flutter/material.dart';

class Untul30screen extends StatefulWidget {
  @override
  _Untul30screenState createState() => _Untul30screenState();
}

class _Untul30screenState extends State<Untul30screen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (ctx, index) {
            return CardOf30MTab();
          },
        ),
      ),
    );
  }
}
