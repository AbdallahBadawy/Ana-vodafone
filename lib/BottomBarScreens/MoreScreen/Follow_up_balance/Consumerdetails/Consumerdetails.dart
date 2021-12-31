import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Follow_up_balance/Consumerdetails/callspart.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Follow_up_balance/Consumerdetails/internetpart.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Follow_up_balance/Consumerdetails/smspart.dart';
import 'package:flutter/material.dart';

class ConsumerDetailsScreen extends StatefulWidget {
  @override
  _ConsumerDetailsScreenState createState() => _ConsumerDetailsScreenState();
}

class _ConsumerDetailsScreenState extends State<ConsumerDetailsScreen> {
  var checkbox = false;
  void checkboxchence(bool val) {
    setState(() {
      checkbox = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: Text('ادارة الرصيد'),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      'تفاصيل الاستخدام',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 19,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'هنا ستجد بيانات استخدامك اليومي مع\n التفاصيل الكاملة للتكلفة',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 19,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'محلي',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    CallsPart(),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SmsPart(),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    InternetPart(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
