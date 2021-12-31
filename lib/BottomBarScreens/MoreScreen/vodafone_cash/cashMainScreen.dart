import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/vodafone_cash/More_Services_Screens/Feroo3_vodafone.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/vodafone_cash/More_Services_Screens/last_transaction.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/vodafone_cash/More_Services_Screens/reset_Password.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/vodafone_cash/cash_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'more _services.dart';

class CashMainScreen extends StatefulWidget {
  @override
  _CashMainScreenState createState() => _CashMainScreenState();
}

class _CashMainScreenState extends State<CashMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black.withOpacity(0.5),
          centerTitle: true,
          title: Text(
            'فودافون كاش',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Cairo', fontSize: 30),
          ),
          elevation: 0,
        ),
        body: Container(
          child: CustomScrollView(
            slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                Stack(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height / 2.8,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black.withOpacity(0.5)),
                    Positioned(
                        top: 170,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 7,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              color: Colors.white),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 90, vertical: 30),
                      child: Column(
                        children: [
                          Text(
                            'دلوقتي تقدر تعمل محفظة',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Cairo',
                                fontSize:
                                    MediaQuery.of(context).size.width / 23),
                          ),
                          Text(
                            'فودافون كاش',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Cairo',
                                fontSize:
                                    MediaQuery.of(context).size.width / 15),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height / 5.7,
                      right: 10,
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width - 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  offset: Offset(2, 3),
                                  spreadRadius: 2),
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  offset: Offset(2, -2),
                                  spreadRadius: 2)
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width / 3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Theme.of(context).accentColor,
                              ),
                              child: Center(
                                child: Text(
                                  'سجل الان',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Cairo',
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              24),
                                ),
                              ),
                            ),
                            Text(
                              'في خطوتين فقط \n سجل في فودافون كاش',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Cairo',
                                  fontSize:
                                      MediaQuery.of(context).size.width / 24),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'الهدايا',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width / 20),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.withOpacity(0.3)),
                          child: Center(
                            child: Text(
                              'الهدايا المتاحة ليك هتظهر هنا ',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 20),
                            ),
                          ))
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 27,
                          color: Colors.redAccent,
                        ),
                        onPressed: (null)),
                    Text(
                      'اظهر للكل ',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width / 25),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'خدمات كاش ',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width / 18),
                      ),
                    ),
                  ],
                )
              ])),
              SliverToBoxAdapter(
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4.5,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CashServices(
                          name: 'سحب من\nالصراف',
                          img: 'assets/images/white_list.png',
                        ),
                        CashServices(
                          name: 'دفع \nفواتير',
                          img: 'assets/images/vodafone_cash.png',
                        ),
                        CashServices(
                          name: 'تجديد\nAdsl',
                          img: 'assets/images/dsl.png',
                        ),
                        CashServices(
                          name: 'تبرعات',
                          img: 'assets/images/shahn.png',
                        ),
                        CashServices(
                          name: 'تحويل\nاموال',
                          img: 'assets/images/data.png',
                        ),
                        CashServices(
                          name: 'شحن \nرصيد',
                          img: 'assets/images/Rased.png',
                        ),
                        CashServices(
                          name: 'دفع \nاونلاين',
                          img: 'assets/images/tahwel.png',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'المزيد من الخدمات',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width / 18),
                  ),
                ),
                MoreServicesCard(
                  name: 'اخر العمليات',
                  OnPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LastTransactionScreen()));
                  },
                ),
                MoreServicesCard(
                  name: 'انشئ رقم سري',
                  OnPress: () {
                    showDialog(
                        context: context,
                        builder: (ctx) {
                          return CupertinoAlertDialog(
                            title: Text(
                              'كلمة المرور',
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 18),
                            ),
                            content: Text(
                              'سيتم ارسال كلمة المرور لك في رسالة نصية ',
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  color: Colors.red,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 22),
                            ),
                          );
                        });
                  },
                ),
                MoreServicesCard(
                  name: 'تغير الرقم السري',
                  OnPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResetPsswordScreen()));
                  },
                ),
                MoreServicesCard(
                  name: 'الفروع',
                  OnPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VodafoneLocationScreen()));
                  },
                ),
                MoreServicesCard(
                  name: 'المساعدة',
                ),
              ]))
            ],
          ),
        ));
  }
}
