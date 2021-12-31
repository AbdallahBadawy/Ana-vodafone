import 'package:flutter/material.dart';

class HelpedPart extends StatefulWidget {
  @override
  _HelpedPartState createState() => _HelpedPartState();
}

class _HelpedPartState extends State<HelpedPart> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/extreme.png'),
                fit: BoxFit.fill),
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'خدمة ساعدهم',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 18,
                  ),
                ),
              ),
              Container(
                child: Text(
                  'اضف قائمة لتحويل الرصيد تلقائيا كل شهر',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: MediaQuery.of(context).size.width / 22,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Icon(
            Icons.arrow_forward_ios,
            size: 25,
            color: Colors.grey[400],
          ),
        ),
      ],
    );
  }
}
