import 'dart:ui';

import 'package:flutter/material.dart';

class FlextExtra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        centerTitle: true,
        title: Text(
          'فليكس اكسترا',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Cairo',
            fontSize: MediaQuery.of(context).size.width / 16,
          ),
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'فليكس اكسترا',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Cairo',
                      fontSize: MediaQuery.of(context).size.width / 16,
                    ),
                  ),
                  Text(
                    'خلص باقتك وماتقلقش دلوقتي مع \nمع فليكس تقدر تزود باقتك',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontFamily: 'Cairo',
                      fontSize: MediaQuery.of(context).size.width / 22,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 12,
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).accentColor,
              ),
              child: Center(
                child: Text(
                  'اشترك دلوقتي',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Cairo',
                    fontSize: MediaQuery.of(context).size.width / 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
