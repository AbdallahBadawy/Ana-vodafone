import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../chargerForOthers.dart';

class RechargeBalanceForOthersScreen extends StatefulWidget {
  @override
  _RechargeBalanceForOthersScreenState createState() =>
      _RechargeBalanceForOthersScreenState();
}

class _RechargeBalanceForOthersScreenState
    extends State<RechargeBalanceForOthersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: Text('شحن رصيد للغير'),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                    child: Text('اختر وسيلة الدفع المناسبة'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: ScreenUtil().setHeight(1000),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 20,
                        ),
                        child: Text(
                          'رقم الهاتف \n ادخل رقم الهاتف للدفع',
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(35),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 20,
                            ),
                            suffixIcon: Icon(
                              Icons.calendar_today,
                              color: Colors.black,
                            ),
                            filled: true,
                            hintText: 'الرقم ',
                            // fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.2,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height / 2,
                          width: MediaQuery.of(context).size.width,
                          child: RechargeForOthers(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
