import 'package:flutter/material.dart';

class YouTubeScreen extends StatefulWidget {
  @override
  _YouTubeScreenState createState() => _YouTubeScreenState();
}

class _YouTubeScreenState extends State<YouTubeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'assets/images/pubg.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width - 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'اشترك واستمتع',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Cairo',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '1000 ميجابيت',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontFamily: 'Cairo',
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'صلاحية الباقة :صالحة حتي ميعاد تجديد باقة فليكس',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Cairo',
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 60,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'اشترك الان 5 جنيه',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Cairo',
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
