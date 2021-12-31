import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  var checkbox = false;
  void checkboxchence(bool val) {
    setState(() {
      checkbox = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkbox,
      onChanged: checkboxchence,
    );
  }
}
