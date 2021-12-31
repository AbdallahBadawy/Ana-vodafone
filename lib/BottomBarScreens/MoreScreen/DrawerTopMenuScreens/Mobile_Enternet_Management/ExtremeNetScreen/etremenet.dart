import 'dart:ui';

import 'package:flutter/material.dart';

class ExtremeNetScreen extends StatefulWidget {
  @override
  _ExtremeNetScreenState createState() => _ExtremeNetScreenState();
}

class _ExtremeNetScreenState extends State<ExtremeNetScreen> {
  _SettingBottomSheet(
    context,
  ) {
    showModalBottomSheet(
        context: context,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        builder: (ctx) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'تاكيد الاشتراك ',
                    style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: MediaQuery.of(context).size.width / 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        decorationThickness: 2),
                  ),
                  Text(
                    'انت علي وشك الاشتراك في الباقة ',
                    style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: MediaQuery.of(context).size.width / 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        decorationThickness: 2),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width - 70,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'تاكيد',
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: MediaQuery.of(context).size.width / 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width - 70,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.grey,
                              width: 1,
                              style: BorderStyle.solid)),
                      child: Center(
                        child: Text(
                          'الغاء',
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: MediaQuery.of(context).size.width / 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  List<Map<String, dynamic>> _baqa = [
    {'mega': '150 ميجابايت', 'price': '5 جنيه'},
    {'mega': '500ميجابايت', 'price': '10 جنيه'},
    {'mega': '1100ميجابايت', 'price': '20 جنيه'},
    {'mega': '1800ميجابايت', 'price': '30 جنيه'},
    {'mega': '2500ميجابايت', 'price': '40 جنيه'},
    {'mega': '4000ميجابايت', 'price': '60 جنيه'},
  ];

  Widget _baqaCard({String mega, String price}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      padding: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'اشترك واستمتع',
              style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: MediaQuery.of(context).size.width / 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decorationThickness: 2),
            ),
            Text(
              '$mega  متجددة',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: MediaQuery.of(context).size.width / 18,
                color: Colors.redAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text.rich(
              TextSpan(
                  text: 'صلاحية',
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: MediaQuery.of(context).size.width / 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                        text: 'شهر',
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: MediaQuery.of(context).size.width / 18,
                          color: Colors.cyan,
                          fontWeight: FontWeight.bold,
                        ))
                  ]),
            ),
            InkWell(
              onTap: () {
                _SettingBottomSheet(context);
              },
              child: Container(
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width - 70,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'اشترك الان $price',
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: MediaQuery.of(context).size.width / 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.red.withOpacity(0.5),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'اكستريم نت',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Cairo',
            fontSize: MediaQuery.of(context).size.width / 15,
            decorationThickness: 2.5,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height - 40,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/exback1.jpg',
                ),
                fit: BoxFit.cover)),
        child: ListView.builder(
          itemCount: _baqa.length,
          itemBuilder: (ctx, index) {
            return _baqaCard(
                mega: _baqa[index]['mega'], price: _baqa[index]['price']);
          },
        ),
      ),
    );
  }
}
