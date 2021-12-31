import 'package:flutter/material.dart';

class EdaratElbakaView extends StatefulWidget {
  @override
  _EdaratElbakaViewState createState() => _EdaratElbakaViewState();
}

class _EdaratElbakaViewState extends State<EdaratElbakaView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Text(
            'خدمات فليكس',
            textDirection: TextDirection.rtl,
            style: TextStyle(
                color: Colors.blueGrey,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: MediaQuery.of(context).size.width / 18),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).accentColor,
                      ),
                      child: Center(
                        child: Text(
                          'اتحكم',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: MediaQuery.of(context).size.width / 18),
                        ),
                      ),
                    ),
                    Text(
                      'تحديد فليكسات الانترنت',
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: MediaQuery.of(context).size.width / 22),
                    ),
                  ],
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                  indent: 10,
                  endIndent: 10,
                ),
                Text(
                  'دلوقتي تقدر تتحكم في فليكساتك اللي بتستخدمها علي الانترنت ',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: MediaQuery.of(context).size.width / 25),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height / 3.5,
            width: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).accentColor,
                      ),
                      child: Center(
                        child: Text(
                          'اتحكم',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: MediaQuery.of(context).size.width / 18),
                        ),
                      ),
                    ),
                    Text(
                      'تحديد فليكسات \nللشبكات الاخري',
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: MediaQuery.of(context).size.width / 22),
                    ),
                  ],
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                  indent: 10,
                  endIndent: 10,
                ),
                Text(
                  'دلوقتي تقدر تتحكم في فليكساتك اللي بتستخدمها علي الانترنت ',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: MediaQuery.of(context).size.width / 25),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
