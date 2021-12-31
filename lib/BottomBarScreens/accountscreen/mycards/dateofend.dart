import 'package:flutter/material.dart';

class DateOfEnd extends StatefulWidget {
  @override
  _DateOfEndState createState() => _DateOfEndState();
}

class _DateOfEndState extends State<DateOfEnd> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 50,
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              hintText: 'YY',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 60,
          height: 50,
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              hintText: 'MM',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Text(
                'تاريخ الانتهاء',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
