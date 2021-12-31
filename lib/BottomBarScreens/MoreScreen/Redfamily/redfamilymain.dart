import 'dart:ui';

import 'package:flutter/material.dart';

class RedFamilyScreen extends StatefulWidget {
  @override
  _RedFamilyScreenState createState() => _RedFamilyScreenState();
}

class _RedFamilyScreenState extends State<RedFamilyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: Text('انا فودافون'),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: Text(
            'لم يتم اضافتك ف عائلة RED \nلو عاوز تعمل انت عيلة حول خطك ل RED',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 19,
            ),
          ),
        ),
      ),
    );
  }
}
