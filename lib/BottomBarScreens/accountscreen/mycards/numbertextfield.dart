import 'package:flutter/material.dart';

class NumberTextField extends StatefulWidget {
  @override
  _NumberTextFieldState createState() => _NumberTextFieldState();
}

class _NumberTextFieldState extends State<NumberTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        hintText: 'رقم الكارت',
        suffixIcon: Icon(
          Icons.camera_alt,
        ),
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
