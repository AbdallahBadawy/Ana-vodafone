import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Follow_up_balance/rechargethebalance/rechargethebalance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserOffers extends StatefulWidget {
  @override
  _UserOffersState createState() => _UserOffersState();
}

class _UserOffersState extends State<UserOffers> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => RechargeTheBalance()));
        },
        child: Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          height: ScreenUtil().setHeight(270),
          width: ScreenUtil().setWidth(320),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'الرصيد',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cairo'),
                ),
                Text(
                  '15 جنيه',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cairo',
                      letterSpacing: 1.5),
                ),
                Row(
                  children: [
                    Text(
                      'اشحن دلوقتي',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(15),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Theme.of(context).accentColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 250, bottom: 10),
        child: Text(
          'فليكساتي',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Cairo',
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
      ),
    ]);
  }
}
