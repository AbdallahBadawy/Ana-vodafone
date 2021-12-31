import 'package:flutter/material.dart';

class CustomTextFeildMail extends StatefulWidget {
  @override
  _CustomTextFeildMailState createState() => _CustomTextFeildMailState();
}

class _CustomTextFeildMailState extends State<CustomTextFeildMail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 0,
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            hintText: 'ادخل بريدك الالكتروني',
          ),
        ),
      ),
    );
  }
}
