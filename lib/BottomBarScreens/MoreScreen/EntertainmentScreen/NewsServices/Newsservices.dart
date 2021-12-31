import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/EntertainmentScreen/NewsServices/Tabbar/discover.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/EntertainmentScreen/NewsServices/Tabbar/services.dart';
import 'package:flutter/material.dart';

class NewsServicesMainScreen extends StatefulWidget {
  @override
  _NewsServicesMainScreenState createState() => _NewsServicesMainScreenState();
}

class _NewsServicesMainScreenState extends State<NewsServicesMainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          elevation: 1,
          centerTitle: true,
          title: Text('خدمات اخبارية'),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(
                      text: 'اكتشف',
                    ),
                    Tab(
                      text: 'خدماتي',
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      DiscoverTabScreen(),
                      ServicesTabScreen(),
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
