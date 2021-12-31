import 'package:flutter/material.dart';

class CardTextFormField extends StatefulWidget {
  @override
  _CardTextFormFieldState createState() => _CardTextFormFieldState();
}

class _CardTextFormFieldState extends State<CardTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        prefixIcon: Icon(Icons.credit_card),
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
