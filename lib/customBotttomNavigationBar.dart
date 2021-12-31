import 'package:ana_vodafoneApp/BottomBarScreens/OffersScreen/offersScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './BottomBarScreens/accountscreen/acountscreen.dart';
import 'BottomBarScreens/mainScreen/mainScreen.dart';
import './BottomBarScreens/incomingScreen.dart';
import 'BottomBarScreens/MoreScreen/moreScreen.dart';

class CustomBottomBar extends StatefulWidget {
  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _currentIndex = 4;
  List _Pages = [
    MoreScreen(),
    IncomingScreen(),
    AccountScreen(),
    OffersScreen(),
    MainScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: _Pages[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.white,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'assets/fonts/Cairo-Light.ttf',
                fontSize: 20,
              ),
              selectedItemColor: Theme.of(context).accentColor,
              iconSize: 20,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              currentIndex: _currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  title: Text(
                    'المزيد',
                  ),
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/content.png"),
                    size: 30,
                  ),
                  title: Text(
                    'الوارد',
                  ),
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/ic_profile_entry.png"),
                    size: 30,
                  ),
                  title: Text(
                    'حسابي',
                  ),
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/ic_offers_entry.png"),
                    size: 30,
                  ),
                  title: Text(
                    'عروض',
                  ),
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/extreme.png"),
                    size: 30,
                  ),
                  title: Text(
                    'الرئيسية',
                  ),
                ),
              ])),
    );
  }
}
