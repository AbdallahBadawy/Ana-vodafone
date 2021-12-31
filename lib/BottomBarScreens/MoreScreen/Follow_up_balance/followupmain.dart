import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Follow_up_balance/Consumerdetails/Consumerdetails.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Follow_up_balance/UsageReports/Usagereports.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Follow_up_balance/balance_details/balance_details.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:ana_vodafoneApp/BottomBarScreens/morescreen/morescreen.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/morescreen/Follow_up_balance/rechargethebalance/rechargethebalance.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/morescreen/Follow_up_balance/Recharge_balance_for_others/Rechargebalanceforothers.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/morescreen/Follow_up_balance/PayForOthers/payforothers.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/morescreen/Follow_up_balance/Previouspayments/previouspayments.dart';
import 'balance_details/balance_details.dart';
// ignore: unused_import
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FollowUpMainScreen extends StatefulWidget {
  @override
  _FollowUpMainScreenState createState() => _FollowUpMainScreenState();
}

class _FollowUpMainScreenState extends State<FollowUpMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: Text('شحن ومتابعة الرصيد'),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: [
            ///////////////////////'شحن الرصيد',/////////////////////////////////////
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Text(
                        'شحن الرصيد',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RechargeTheBalance()));
                },
              ),
            ),
            ///////////////////////'شحن رصيد للغير',,/////////////////////////////////////
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Text(
                        'شحن رصيد للغير',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RechargeBalanceForOthersScreen(),
                    ),
                  );
                },
              ),
            ),
            //////////////////////'دفع فاتورة للغير',',/////////////////////////////////////
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Text(
                        'دفع فاتورة للغير',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PayForOthersScreen(),
                    ),
                  );
                },
              ),
            ),
            ///////////////////////'تفاصيل الرصيد',',/////////////////////////////////////
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BalanceDetailsScreen()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BalanceDetailsScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: Text(
                          'تفاصيل الرصيد',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ///////////////////////''تفاصيل الدفع',/////////////////////////////////////
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Text(
                        'تفاصيل الدفع',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PreviousPaymentsScreen(),
                    ),
                  );
                },
              ),
            ),
            ///////////////////////''تفاصيل استهلاكي',/////////////////////////////////////
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConsumerDetailsScreen(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Text(
                        'تفاصيل استهلاكي',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            /////////////////////// 'تقارير الاستخدام',/////////////////////////////////////
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Text(
                        'تقارير الاستخدام',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UsageReports(),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
