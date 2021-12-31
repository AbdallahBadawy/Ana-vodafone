import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Services_Screens/Tejwal/tejwalMain.dart';

import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Black_Menu_Screens/Black_Menu.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/UsbScreens/my_usb.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/White_menu_Screens/White_Menu.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Keepcalls/keepcallsmain.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Redfamily/redfamilymain.dart';

import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/drawerList.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/onmybill/onmybillmain.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/salefny_shokran/salefny_shokranscreen.dart';

import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/edf3ly_shokran/edf3ly_shokran.dart';
import 'package:ana_vodafoneApp/color.dart';
import 'package:flutter/material.dart';
import 'Services_Screens/Tejwal/TejwalServices/shokranService.dart';
import 'Services_Screens/Tejwal/tejwalMain.dart';
import 'onmybill/onmybillmain.dart';
import 'salefny_shokran/salefny_shokranscreen.dart';
import 'UsbScreens/my_usb.dart';

class ExpansionTileView extends StatefulWidget {
  @override
  _ExpansionTileViewState createState() => _ExpansionTileViewState();
}

class _ExpansionTileViewState extends State<ExpansionTileView> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      backgroundColor: Color(getColorHexFromStr('#e7e6dd')),
      title: Text(
        'خدمات',
        textDirection: TextDirection.rtl,
        style: TextStyle(
            fontFamily: 'Cairo',
            color: Colors.black,
            fontWeight: FontWeight.bold),
      ),
      children: [
        DrawerList(
          tapped: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SalefnyShokran()));
          },
          image: 'assets/images/shahn.png',
          name: 'سلفني شكرا',
        ),
        DrawerList(
          tapped: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyUsb()));
          },
          name: 'usb',
          image: 'assets/images/usb.png',
        ),
        DrawerList(
          tapped: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => WhiteMenuScreen()));
          },
          name: 'القائمة البيضاء',
          image: 'assets/images/white_list.png',
        ),
        DrawerList(
          tapped: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BlackMenuScreen()));
          },
          name: 'القائمة السوداء',
          image: 'assets/images/black_list.png',
        ),
        DrawerList(
          name: 'الاحتفاظ بالمكالمات',
          image: 'assets/images/missed_call_keeper.png',
          tapped: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => KeepCallsMainScreen(),
              ),
            );
          },
        ),
        DrawerList(
          name: 'My Red Family',
          image: 'assets/images/my_red_family.png',
          tapped: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RedFamilyScreen(),
              ),
            );
          },
        ),
        DrawerList(
          name: 'علي حسابي',
          image: 'assets/images/ala_7saby.png',
          tapped: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OnMyBillMainScreen(),
              ),
            );
          },
        ),
        DrawerList(
          name: 'ادفعلي شكرا',
          image: 'assets/images/tahwel.png',
          tapped: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Edf3lyShokranScreen()));
          },
        ),
        DrawerList(
          name: 'كلمني شكرا',
          image: 'assets/images/kalemny_shokran.png',
          tapped: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SHokranServiceScreen()));
          },
        ),
        DrawerList(
          name: 'فروع فودافون',
          image: 'assets/images/store_locator.png',
        ),
        DrawerList(
          name: 'التجوال',
          image: 'assets/images/roaming.png',
          isNew: true,
          tapped: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TejwaMainScreen()));
          },
        ),
      ],
    );
  }
}
