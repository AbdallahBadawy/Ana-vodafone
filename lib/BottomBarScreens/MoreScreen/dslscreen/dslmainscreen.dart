import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/dslscreen/tabbar/until100.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/dslscreen/tabbar/until30.dart';
import 'package:flutter/material.dart';

class AdslMainScreen extends StatefulWidget {
  @override
  _AdslMainScreenState createState() => _AdslMainScreenState();
}

class _AdslMainScreenState extends State<AdslMainScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            title: Text(
              'باقات Adsl ',
            ),
            centerTitle: true,
          ),
          body: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                  ),
                  child: TabBar(
                    tabs: [
                      Tab(
                        child: Column(
                          children: [
                            Container(
                              child: Icon(
                                Icons.shutter_speed,
                                color: Colors.white,
                                size: 22,
                              ),
                            ),
                            Container(
                              child: Text(
                                'حتي 30 ميجا / الثانية',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Tab(
                        child: Column(
                          children: [
                            Container(
                              child: Icon(
                                Icons.shutter_speed,
                                color: Colors.white,
                                size: 22,
                              ),
                            ),
                            Container(
                              child: Text(
                                'حتي 100 ميجا / الثانية',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Container(
                        child: Untul30screen(),
                      ),
                      Container(
                        child: Until100screen(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
