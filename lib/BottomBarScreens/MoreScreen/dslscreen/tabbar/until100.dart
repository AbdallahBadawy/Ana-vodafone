import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/dslscreen/tabbar/listcart100m.dart';
import 'package:flutter/material.dart';

class Until100screen extends StatefulWidget {
  @override
  _Until100screenState createState() => _Until100screenState();
}

class _Until100screenState extends State<Until100screen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (ctx, index) {
            return CardOf100MTab();
          },
        ),
      ),
    );
  }
}
