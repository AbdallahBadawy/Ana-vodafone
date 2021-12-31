import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Follow_up_balance/balance_details/balance_details.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../chargerForOthers.dart';

class RechargeTheBalance extends StatefulWidget {
  @override
  _RechargeTheBalanceState createState() => _RechargeTheBalanceState();
}

class _RechargeTheBalanceState extends State<RechargeTheBalance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "اشحن دلوقتى",
          style: TextStyle(
              fontFamily: "Cairo", fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width - 10,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1),
                )
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Text(
                        "رصيدك الحالى",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      BalanceDetailsScreen()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 20, top: 5),
                          width: MediaQuery.of(context).size.width / 2 + 60,
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Theme.of(context).accentColor),
                          child: Center(
                            child: Text("اعرف تفاصيل الرصيد",
                                style: TextStyle(
                                    fontFamily: "cairo",
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                        ),
                      ),
                      Text(" جنيه",
                          style: TextStyle(
                              fontFamily: "cairo",
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black))
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "اختر وسيلة الدفع المناسبة",
                  style: TextStyle(
                      fontFamily: "cairo",
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width - 10,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1),
                )
              ],
            ),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: Row(
                          textDirection: TextDirection.rtl,
                          children: [
                            Text(
                              "اشحن رصيدك",
                              style: TextStyle(
                                  fontFamily: "cairo",
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Text(
                            "اختر الوسيله المناسبه لشحن رصيدك",
                            style: TextStyle(
                                fontFamily: "cairo",
                                fontSize: 12,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: RechargeForOthers(),
          )
        ],
      ),
    );
  }
}
