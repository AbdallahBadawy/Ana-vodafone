import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/DrawerTopMenuScreens/Mobile_Enternet_Management/Timepackages/tabScreen/package.dart';
import 'package:flutter/material.dart';

class HourlyPackageTapScreen extends StatefulWidget {
  @override
  _HourlyPackageTapScreenState createState() => _HourlyPackageTapScreenState();
}

class _HourlyPackageTapScreenState extends State<HourlyPackageTapScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(229, 1, 0, 1),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/small_red_background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              PackageCard(
                numberofmegabits: '10 ميجابايت',
                numberofhours: 'صلاحية:ساعة',
                subscribecost: 'اشترك الان .75 جنية',
              ),
              PackageCard(
                numberofmegabits: '30 ميجابايت',
                numberofhours: 'صلاحية:3ساعات',
                subscribecost: 'اشترك الان 1.5 جنية',
              ),
              PackageCard(
                numberofmegabits: '60 ميجابايت',
                numberofhours: 'صلاحية:6 ساعات',
                subscribecost: 'اشترك الان 2.25 جنية',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
