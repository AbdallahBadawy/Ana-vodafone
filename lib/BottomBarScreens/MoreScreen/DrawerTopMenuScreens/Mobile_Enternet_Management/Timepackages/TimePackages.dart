import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/DrawerTopMenuScreens/Mobile_Enternet_Management/Timepackages/tabScreen/HourlyPackage.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/DrawerTopMenuScreens/Mobile_Enternet_Management/Timepackages/tabScreen/Weeklypackages.dart';
import 'package:flutter/material.dart';

class TimePackageMainScreen extends StatefulWidget {
  @override
  _TimePackageMainScreenState createState() => _TimePackageMainScreenState();
}

class _TimePackageMainScreenState extends State<TimePackageMainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              elevation: 0,
              title: Text('باقات الوقت'),
            ),
            body: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(
                      text: 'باقات اسبوعية',
                    ),
                    Tab(
                      text: 'باقات ساعة',
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      WeeklyPackageTabScreen(),
                      HourlyPackageTapScreen(),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
