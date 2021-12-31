import 'package:flutter/material.dart';

class SmsPart extends StatefulWidget {
  @override
  _SmsPartState createState() => _SmsPartState();
}

class _SmsPartState extends State<SmsPart> {
  var checkbox = false;
  void checkboxchence(bool val) {
    setState(() {
      checkbox = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Container(
                child: Icon(
                  Icons.message,
                  size: 20,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                child: Text(
                  'رسائل نصية قصيرة',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Checkbox(
            value: checkbox,
            onChanged: checkboxchence,
          ),
        ),
      ],
    );
  }
}
