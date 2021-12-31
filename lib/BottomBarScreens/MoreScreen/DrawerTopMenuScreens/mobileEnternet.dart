import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/DrawerTopMenuScreens/Mobile_Enternet_Management/ExtremeNetScreen/etremenet.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/DrawerTopMenuScreens/Mobile_Enternet_Management/MobileEnternetMain.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/DrawerTopMenuScreens/Mobile_Enternet_Management/Timepackages/TimePackages.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/DrawerTopMenuScreens/Mobile_Enternet_Management/VodafonePlus%20Screens/vodafonePlus.dart';
import 'package:flutter/material.dart';

class MobileEnternetScreen extends StatefulWidget {
  @override
  _MobileEnternetScreenState createState() => _MobileEnternetScreenState();
}

class _MobileEnternetScreenState extends State<MobileEnternetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('إدارة الموبايل انترنت'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'ليس لديك باقة انترنت مفعلة',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        letterSpacing: 2.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'برجاء الاختيار من الباقات المعروضة امامك',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                MobileEnternetManagementMain(
                  name: 'Vodafone Plus',
                  img: 'assets/images/vodafone_plus.png',
                  Tafasel: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VodafonePlusScreen()));
                  },
                ),
                MobileEnternetManagementMain(
                  name: 'اكستريم نت',
                  img: 'assets/images/extreme.png',
                  Tafasel: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExtremeNetScreen()));
                  },
                ),
                MobileEnternetManagementMain(
                  name: 'سوبر باس',
                  img: 'assets/images/superpass.png',
                  Tafasel: () {},
                ),
                MobileEnternetManagementMain(
                  name: 'باقات الوقت',
                  img: 'assets/images/times.png',
                  Tafasel: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TimePackageMainScreen(),
                      ),
                    );
                  },
                ),
                MobileEnternetManagementMain(
                  name: 'باقات المحتوي',
                  img: 'assets/images/content.png',
                  Tafasel: () {},
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
