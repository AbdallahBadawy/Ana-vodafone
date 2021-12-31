import 'package:flutter/material.dart';

class ContentPackageMainScreen extends StatefulWidget {
  @override
  _ContentPackageMainScreenState createState() =>
      _ContentPackageMainScreenState();
}

class _ContentPackageMainScreenState extends State<ContentPackageMainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              elevation: 0,
              title: Text('باقات الوقت'),
            ),
            body: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(
                      text: 'باقات اسبوعية',
                    ),
                    Tab(
                      text: 'باقات ساعة',
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
