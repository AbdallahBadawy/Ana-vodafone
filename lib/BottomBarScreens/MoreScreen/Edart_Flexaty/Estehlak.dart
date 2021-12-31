import 'package:ana_vodafoneApp/BottomBarScreens/mainScreen/Services_Details/serviceDetail_flex.dart';
import 'package:flutter/material.dart';

class EstehlakDetailView extends StatefulWidget {
  @override
  _EstehlakDetailViewState createState() => _EstehlakDetailViewState();
}

class _EstehlakDetailViewState extends State<EstehlakDetailView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width - 30,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Text(
        'تفاصيل فليكساتك',
        style: TextStyle(
            fontFamily: 'Cairo',
            fontWeight: FontWeight.bold,
            color: Colors.grey,
            fontSize: MediaQuery.of(context).size.width / 22),
      ),
    );
  }
}
