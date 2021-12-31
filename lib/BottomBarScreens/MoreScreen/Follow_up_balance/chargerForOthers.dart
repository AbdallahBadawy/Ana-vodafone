// ignore: avoid_web_libraries_in_flutter

import 'dart:ui';

import 'package:flutter/material.dart';

class RechargeForOthers extends StatefulWidget {
  @override
  _RechargeForOthersState createState() => _RechargeForOthersState();
}

class _RechargeForOthersState extends State<RechargeForOthers> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ExpansionTile(
          title: Text(
            "بطاقة الائتمان/الخصم المباشر",
            style: TextStyle(
                color: Colors.purple,
                fontFamily: 'Cairo',
                fontSize: MediaQuery.of(context).size.width / 22,
                fontWeight: FontWeight.bold),
          ),
          children: [
            Column(
              children: [
                Text(
                  "المبلغ المدفوع",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'المبلغ',
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(width: 3, color: Colors.black))),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'اضافة بطاقة جديدة',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: ExpansionTile(
            title: Text(
              'كارت الشحن',
              style: TextStyle(
                  color: Colors.purple,
                  fontFamily: 'Cairo',
                  fontSize: MediaQuery.of(context).size.width / 22,
                  fontWeight: FontWeight.bold),
            ),
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'ادخل رقم كارت الشحن',
                  suffixIcon: Icon(
                    Icons.camera_alt,
                    size: 20,
                    color: Colors.black,
                  ),
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 3, color: Colors.blueGrey)),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                height: MediaQuery.of(context).size.height / 12,
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    'اشحن دلوقتي',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
        ExpansionTile(
          title: Text(
            "فودافون كاش",
            style: TextStyle(
                color: Colors.purple,
                fontFamily: 'Cairo',
                fontSize: MediaQuery.of(context).size.width / 22,
                fontWeight: FontWeight.bold),
          ),
          children: [
            Column(
              children: [
                Text(
                  "المبلغ المدفوع",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'المبلغ',
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(width: 3, color: Colors.black))),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'اشحن دلوقتي',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
