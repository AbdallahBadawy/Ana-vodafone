import 'package:flutter/material.dart';

class VodafoneLocationScreen extends StatefulWidget {
  @override
  _VodafoneLocationScreenState createState() => _VodafoneLocationScreenState();
}

class _VodafoneLocationScreenState extends State<VodafoneLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        centerTitle: true,
        title: Text(
          'فودافون كاش',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Cairo',
            fontSize: MediaQuery.of(context).size.width / 18,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'مواقع فودافون',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Cairo',
                fontSize: MediaQuery.of(context).size.width / 18,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 70,
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blueAccent,
              ),
              child: Center(
                child: Text(
                  'استخدم موقعي الحالي',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Cairo',
                    fontSize: MediaQuery.of(context).size.width / 22,
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
