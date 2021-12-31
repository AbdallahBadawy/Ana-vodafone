import 'package:flutter/material.dart';

class IncomingScreen extends StatefulWidget {
  @override
  _IncomingScreenState createState() => _IncomingScreenState();
}

class _IncomingScreenState extends State<IncomingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("رسائل",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: "Cairo")),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Stack(
          children: [
            Positioned(
              top: 10,
              left: 270,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      " إشعارات",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 27,
                          fontFamily: "Cairo"),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                left: 140,
                top: 100,
                child: Column(
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Colors.grey,
                    ),
                    Text(
                      "لا توجد رسائل جديدة",
                      style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 17,
                          color: Colors.grey),
                    )
                  ],
                ))
          ],
        ));
  }
}
