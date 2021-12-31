import 'package:flutter/material.dart';

class NumberPhoneTextFormFeild extends StatefulWidget {
  @override
  _NumberPhoneTextFormFeildState createState() =>
      _NumberPhoneTextFormFeildState();
}

class _NumberPhoneTextFormFeildState extends State<NumberPhoneTextFormFeild> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        hintText: 'رقم الموبايل',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }
}
