import 'package:flutter/material.dart';

class PasswordTextFormField extends StatefulWidget {
  @override
  _PasswordTextFormFieldState createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        filled: true,
        hintText: 'كلمة المرور',
        suffixIcon: Icon(Icons.remove_red_eye),
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
