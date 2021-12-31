import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: non_constant_identifier_names
Widget DrawerTopMenu({String name, String imgUrl, Function pressed}) {
  return InkWell(
    onTap: pressed,
    child: Column(
      children: [
        Container(
          height: ScreenUtil().setHeight(90),
          width: ScreenUtil().setWidth(90),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.white),
          child: Center(
            child: Image.asset(
              imgUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          name,
          style: TextStyle(fontFamily: 'Cairo'),
        ),
      ],
    ),
  );
}
