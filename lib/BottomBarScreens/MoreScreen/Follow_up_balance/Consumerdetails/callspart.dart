import 'package:flutter/material.dart';

class CallsPart extends StatefulWidget {
  @override
  _CallsPartState createState() => _CallsPartState();
}

class _CallsPartState extends State<CallsPart> {
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
                  Icons.call,
                  size: 20,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                child: Text(
                  'مكالمات',
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
