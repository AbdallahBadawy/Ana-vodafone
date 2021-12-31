import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/DrawerTopMenuScreens/flex365.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/DrawerTopMenuScreens/tahwelRassid.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Edart_Flexaty/flexMnagment.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Fasal_3rodk/fasal_3rodk.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Follow_up_balance/Recharge_balance_for_others/Rechargebalanceforothers.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/UsbScreens/my_usb.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/dslscreen/dslmainscreen.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/vodafone_cash/cashMainScreen.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/accountscreen/acountscreen.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/mainScreen/3rood/flexExtra.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/mainScreen/3rood/tahwelFlex.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/mainScreen/Additional_Details/userOffers.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/mainScreen/Services_Details/service_detail.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/mainScreen/mainCategoried.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  LaunchURL2() async {
    const url = "https://eshop.vodafone.com.eg/eshop/homePage/index.jsp#/home";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "couldn’t launch $url";
    }
  }

  // ignore: non_constant_identifier_names
  Widget _OfferCard({
    String title,
    String info,
    Function Press,
  }) {
    return InkWell(
      onTap: Press,
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.only(right: 10, top: 5),
        height: ScreenUtil().setWidth(200),
        width: ScreenUtil().setWidth(300),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(
              'assets/images/offer1.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Text(
                '$title',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '$info',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    decorationThickness: 10,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: 30.0,
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0,
          floating: false,
          leading: Container(
            margin: EdgeInsets.all(5),
            height: ScreenUtil.getInstance().setHeight(100),
            width: ScreenUtil.getInstance().setWidth(100),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.black.withOpacity(0.1),
            ),
            child: Center(
              child: Icon(Icons.search),
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.all(8),
              height: ScreenUtil.getInstance().setHeight(200),
              width: ScreenUtil.getInstance().setWidth(100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage('assets/images/sub logo.png'),
                    fit: BoxFit.contain),
              ),
            )
          ],
        ),
        SliverList(
          // using the SliverChildList to make the body contain more than one widget and scrool them;
          delegate: SliverChildListDelegate([
            ServiceDetail(),
            UserOffers(),
          ]),
        ),
        SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1.2),
            delegate: SliverChildListDelegate([
              _OfferCard(
                  title: 'عروض 365',
                  info: 'كل مرة هيجيلك عرض مختلف',
                  Press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Flex365Screen()));
                  }),
              _OfferCard(
                  title: 'فليكس اكستر ',
                  info: 'فليكسات زيادة',
                  Press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FlextExtra()));
                  }),
              _OfferCard(
                  title: 'تحويل الفليكسات',
                  info: 'حول فليكساتك الزيادة',
                  Press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TahwelFlexat()));
                  })
            ])),
        SliverList(
            delegate: SliverChildListDelegate([
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'خليك في البيت,هنا اسهلك',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  color: Colors.black, fontFamily: 'Cairo', fontSize: 20),
            ),
          ),
        ])),
        // will be changed with class

        SliverToBoxAdapter(
            child: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
              height: ScreenUtil().setHeight(300),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MainCategories(
                    name: 'فودافون كاش',
                    image: 'assets/images/vodafone_cash.png',
                    Tap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CashMainScreen()));
                    },
                  ),
                  MainCategories(
                    name: 'ادارة فليكس',
                    image: 'assets/images/manage_flex.png',
                    Tap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FlexManagementScreen()));
                    },
                  ),
                  MainCategories(
                    name: 'فودافون dsl',
                    image: 'assets/images/dsl.png',
                    Tap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AdslMainScreen()));
                    },
                  ),
                  MainCategories(
                    name: 'اشحن لغيرك',
                    image: 'assets/images/shahn.png',
                    Tap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  RechargeBalanceForOthersScreen()));
                    },
                  ),
                  MainCategories(
                    name: 'ادفع فاتورة غيرك',
                    image: 'assets/images/fatora.png',
                    Tap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  RechargeBalanceForOthersScreen()));
                    },
                  ),
                  MainCategories(
                    name: 'تحويل رصيد',
                    image: 'assets/images/tahwel.png',
                    Tap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TahwelRassidScreen()));
                    },
                  ),
                  MainCategories(
                    name: 'USB',
                    image: 'assets/images/usb.png',
                    Tap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyUsb()));
                    },
                  ),
                ],
              )),
        )),
        SliverList(
            delegate: SliverChildListDelegate([
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'عروض حصرية',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  color: Colors.black, fontFamily: 'Cairo', fontSize: 25),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: ScreenUtil().setHeight(370),
                width: ScreenUtil().setWidth(330),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: []),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Fasal3rodk()));
                      },
                      child: Container(
                        height: ScreenUtil().setHeight(150),
                        width: ScreenUtil().setWidth(150),
                        color: Colors.transparent,
                        child: Image.asset(
                          'assets/images/store_locator.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      'فصل عروضك',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Cairo',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AccountScreen()));
                },
                child: Container(
                    height: ScreenUtil().setHeight(370),
                    width: ScreenUtil().setWidth(330),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage('assets/images/free_mega.png'),
                            fit: BoxFit.cover)),
                    child: Center(
                      child: Text(
                        'اعزم حبايبك وليك \n لحد 1 جيجا هدية',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Cairo',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'تسوق مع فودافون',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Cairo',
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LaunchURL2()));
            },
            child: Container(
              margin: EdgeInsets.all(10),
              height: ScreenUtil().setHeight(350),
              width: ScreenUtil().setWidth(100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/shopping.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ])),
      ]),
    );
  }
}
