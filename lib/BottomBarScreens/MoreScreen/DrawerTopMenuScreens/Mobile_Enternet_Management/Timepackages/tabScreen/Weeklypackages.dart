import 'package:flutter/material.dart';

class WeeklyPackageTabScreen extends StatefulWidget {
  @override
  _WeeklyPackageTabScreenState createState() => _WeeklyPackageTabScreenState();
}

class _WeeklyPackageTabScreenState extends State<WeeklyPackageTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 1, 0, 1),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/small_red_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * .75,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    color: Colors.grey[300],
                  ),
                  child: Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                    size: 29,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    'لايوجد باقات متاحة ',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'اختار باقة تناسب استهلاكك من باقة الانترنت الاخري',
                    style: TextStyle(fontSize: 17, color: Colors.grey[500]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
