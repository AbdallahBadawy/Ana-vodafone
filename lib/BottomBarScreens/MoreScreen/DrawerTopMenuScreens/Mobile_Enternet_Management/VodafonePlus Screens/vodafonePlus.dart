import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/DrawerTopMenuScreens/Mobile_Enternet_Management/VodafonePlus%20Screens/TikTok.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/DrawerTopMenuScreens/Mobile_Enternet_Management/VodafonePlus%20Screens/beIN_Connect.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/DrawerTopMenuScreens/Mobile_Enternet_Management/VodafonePlus%20Screens/pubg.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/DrawerTopMenuScreens/Mobile_Enternet_Management/VodafonePlus%20Screens/youtube.dart';
import 'package:flutter/material.dart';

class VodafonePlusScreen extends StatefulWidget {
  @override
  _VodafonePlusScreenState createState() => _VodafonePlusScreenState();
}

class _VodafonePlusScreenState extends State<VodafonePlusScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  int _currentIndex = 0;
  List _BarPages = [
    YouTubeScreen(),
    PubgScreen(),
    BeIN_ConnectScreen(),
    TikTokScreen()
  ];
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 1, 0, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 1, 0, 1),
        centerTitle: true,
        title: Text(
          'Plus',
          style: TextStyle(color: Colors.white, fontFamily: 'Cairo'),
        ),
        bottom: TabBar(
            isScrollable: true,
            controller: _tabController,
            unselectedLabelColor: Colors.white,
            labelStyle: TextStyle(
              fontSize: 20,
              fontFamily: 'Cairo',
            ),
            indicatorColor: Colors.amber,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            tabs: [
              Tab(
                text: 'YouTube',
              ),
              Tab(
                text: 'Pubg',
              ),
              Tab(
                text: 'beIN Connect',
              ),
              Tab(
                text: 'TikTok',
              ),
            ]),
      ),
      body: TabBarView(controller: _tabController, children: [
        YouTubeScreen(),
        PubgScreen(),
        BeIN_ConnectScreen(),
        TikTokScreen()
      ]),
    );
  }
}
