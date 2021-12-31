import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverTabScreen extends StatefulWidget {
  @override
  _DiscoverTabScreenState createState() => _DiscoverTabScreenState();
}

class _DiscoverTabScreenState extends State<DiscoverTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4 + 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              'اسم الخدمة',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: ExpansionTile(
                        title: Text(
                          'قيمة الخدمة',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        children: [
                          Container(
                            child: Text('وصف للخدمة'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: ScreenUtil().setHeight(90),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[800],
                      ),
                      child: Center(
                        child: Text(
                          'اشترك',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 30,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4 + 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              'اسم الخدمة',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: ExpansionTile(
                        title: Text(
                          'قيمة الخدمة',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        children: [
                          Container(
                            child: Text('وصف للخدمة'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: ScreenUtil().setHeight(90),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[800],
                      ),
                      child: Center(
                        child: Text(
                          'اشترك',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 30,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4 + 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              'اسم الخدمة',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: ExpansionTile(
                        title: Text(
                          'قيمة الخدمة',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        children: [
                          Container(
                            child: Text('وصف للخدمة'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: ScreenUtil().setHeight(90),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[800],
                      ),
                      child: Center(
                        child: Text(
                          'اشترك',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
