import 'package:flutter/material.dart';

import '../../../../color.dart';

class LastTransactionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
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
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'اخر العمليات',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Cairo',
                  fontSize: MediaQuery.of(context).size.width / 20,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'ادخل الرقم السري للتعرف علي اخر العمليات',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: 'Cairo',
                    fontSize: MediaQuery.of(context).size.width / 28,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'الرقم السري*',
                    fillColor: Colors.green,
                    contentPadding: EdgeInsets.all(15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    enabled: true,
                    labelStyle: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(getColorHexFromStr('#5f829e')),
                ),
                child: Center(
                  child: Text(
                    'عرض العمليات',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Cairo',
                        fontSize: MediaQuery.of(context).size.width / 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
