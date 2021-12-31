import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/EntertainmentScreen/Entertainmentmain.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Edart_Flexaty/flexMnagment.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/vodafone_cash/cashMainScreen.dart';
import 'package:ana_vodafoneApp/login.dart';

import 'Fasal_3rodk/fasal_3rodk.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/DrawerTopMenuScreens/flex365.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/DrawerTopMenuScreens/mobileEnternet.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/DrawerTopMenuScreens/tahwelRassid.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/drawerList.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/drawerTopMenu.dart';

import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Follow_up_balance/followupmain.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/dslscreen/dslmainscreen.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/servicesExpansionTile.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/team010/team010mainscreen.dart';
import 'package:ana_vodafoneApp/homeScreen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

import '../../homeScreen.dart';
// ignore: duplicate_import
import '../../homeScreen.dart';
// ignore: unused_import
import '../mainScreen/mainScreen.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  // ignore: non_constant_identifier_names
  LaunchURL() async {
    const url = "https://eshop.vodafone.com.eg/eshop/homePage/index.jsp#/home";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "couldn’t launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        width: double.infinity,
        child: Drawer(
          elevation: 0,
          child: Container(
            color: Colors.white,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 8),
                  color: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      DrawerTopMenu(
                          name: 'تحويل\n رصيد',
                          imgUrl: 'assets/images/transfer.png',
                          pressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TahwelRassidScreen(),
                              ),
                            );
                          }),
                      DrawerTopMenu(
                        name: 'فليكس\n 365',
                        imgUrl: 'assets/images/geny.png',
                        pressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Flex365Screen(),
                            ),
                          );
                        },
                      ),
                      DrawerTopMenu(
                        name: 'الموبايل \nانترنت',
                        imgUrl: 'assets/images/data.png',
                        pressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MobileEnternetScreen(),
                            ),
                          );
                        },
                      ),
                      DrawerTopMenu(
                        name: 'الصفحة \nالرئيسية',
                        imgUrl: 'assets/images/home.png',
                        pressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                DrawerList(
                  image: 'assets/images/recharge_and_balance.png',
                  name: 'شحن ومتابعة الرصيد',
                  tapped: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FollowUpMainScreen(),
                      ),
                    );
                  },
                ),
                DrawerList(
                  image: 'assets/images/manage_flex.png',
                  name: 'ادارة فليكساتي',
                  tapped: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FlexManagementScreen()));
                  },
                ),
                DrawerList(
                  isNew: true,
                  name: 'تواصل معنا',
                  image: 'assets/images/chat_with_us.png',
                ),
                DrawerList(
                  tapped: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Fasal3rodk()));
                  },
                  isNew: true,
                  name: 'فصل عروضك',
                  image: 'assets/images/customize_my_offer.png',
                ),
                DrawerList(
                  isNew: true,
                  name: 'فريق 010',
                  image: 'assets/images/team010.png',
                  tapped: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Team010MainScreen(),
                      ),
                    );
                  },
                ),
                DrawerList(
                  name: 'فودافون كاش',
                  image: 'assets/images/vodafone_cash.png',
                  tapped: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CashMainScreen()));
                  },
                ),
                DrawerList(
                  name: 'DSL',
                  image: 'assets/images/dsl.png',
                  tapped: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdslMainScreen(),
                      ),
                    );
                  },
                ),
                DrawerList(
                  isNew: true,
                  name: 'ترفيه',
                  image: 'assets/images/entertainment.png',
                  tapped: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EntertainmentMainScreen(),
                      ),
                    );
                  },
                ),
                DrawerList(
                  tapped: () {
                    LaunchURL();
                  },
                  name: 'تسوق',
                  image: 'assets/images/shop.png',
                ),
                Container(
                    color: Theme.of(context).primaryColor,
                    child: ExpansionTileView()),
                DrawerList(
                  name: 'الخروج',
                  image: 'assets/images/logout.png',
                  tapped: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
