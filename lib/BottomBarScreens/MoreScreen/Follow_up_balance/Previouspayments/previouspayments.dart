import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PreviousPaymentsScreen extends StatefulWidget {
  @override
  _PreviousPaymentsScreenState createState() => _PreviousPaymentsScreenState();
}

class _PreviousPaymentsScreenState extends State<PreviousPaymentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          elevation: 1,
          centerTitle: true,
          title: Text('المدفوعات السابقة'),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 90,
                  vertical: 80,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                child: Text(
                  'لايوجد مدفوعات سابقة',
                  style: TextStyle(fontSize: ScreenUtil().setSp(35)),
                ),
              ),
            ],
          ),
        ));
  }
}
