import 'package:ana_vodafoneApp/BottomBarScreens/mainScreen/Services_Details/serviceDetail_Tejwal.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/mainScreen/Services_Details/serviceDetail_enternet.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/mainScreen/Services_Details/serviceDetail_flex.dart';

import 'package:flutter/material.dart';

class ServiceDetail extends StatefulWidget {
  @override
  _ServiceDetailState createState() => _ServiceDetailState();
}

class _ServiceDetailState extends State<ServiceDetail>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this, initialIndex: 2);
    super.initState();
  }

  // ignore: unused_field
  int _currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width - 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey[300], offset: Offset(5, 5), blurRadius: 10),
            BoxShadow(
                color: Colors.grey,
                offset: Offset(-3, -2),
                blurRadius: 10,
                spreadRadius: 0.2)
          ]),
      child: Column(
        children: [
          TabBar(
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            labelPadding: EdgeInsets.all(5),
            labelColor: Colors.red,
            indicatorColor: Theme.of(context).accentColor,
            unselectedLabelColor: Colors.black,
            controller: _controller,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            tabs: [
              Text(
                'التجوال',
                style: TextStyle(
                  fontFamily: 'Cairo',
                ),
              ),
              Text(
                'إنترنت',
                style: TextStyle(
                  fontFamily: 'Cairo',
                ),
              ),
              Text(
                'فليكس',
                style: TextStyle(
                  fontFamily: 'Cairo',
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(controller: _controller, children: [
              TejwalCard(),
              EnternetCard(),
              FlexCard(),
            ]),
          ),
        ],
      ),
    );
  }
}
