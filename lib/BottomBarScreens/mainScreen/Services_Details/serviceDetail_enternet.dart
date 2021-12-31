import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnternetCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, bottom: 30, top: 55),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'انت غير مشترك في باقة موبايل انترنت',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Cairo',
                      fontSize: MediaQuery.of(context).size.width / 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(40),
                ),
                Icon(
                  Icons.update,
                  size: 30,
                ),
              ],
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(90),
            width: ScreenUtil().setWidth(250),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).accentColor,
            ),
            child: Center(
              child: Text(
                'شراء الباقة',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Cairo',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
