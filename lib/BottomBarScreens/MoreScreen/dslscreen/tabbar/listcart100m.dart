import 'package:flutter/material.dart';

class CardOf100MTab extends StatefulWidget {
  @override
  _CardOf100MTabState createState() => _CardOf100MTabState();
}

class _CardOf100MTabState extends State<CardOf100MTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4 + 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              child: Text(
                                'سرعة تصل الي 100 ميجا بايت .300 جيجا',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Theme.of(context).accentColor,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                'الباقة:300 جيجا بايت/شهري',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.grey[300],
                        ),
                        child: Center(
                          child: Text(
                            '450 جنية',
                            style: TextStyle(
                              fontSize: 15,
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black87,
                  ),
                  child: Center(
                    child: Text(
                      'اشترك',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
