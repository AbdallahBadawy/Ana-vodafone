import 'package:flutter/material.dart';

class InternetPart extends StatefulWidget {
  @override
  _InternetPartState createState() => _InternetPartState();
}

class _InternetPartState extends State<InternetPart> {
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
                  Icons.signal_wifi_4_bar_lock,
                  size: 20,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                child: Text(
                  'انترنت',
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
