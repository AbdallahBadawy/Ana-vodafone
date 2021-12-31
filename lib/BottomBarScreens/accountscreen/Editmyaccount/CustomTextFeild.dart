import 'package:flutter/material.dart';

Widget customTextField(BuildContext context) {
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
          hintText: 'ادخل اسمك',
        ),
      ),
    ),
  );
}
