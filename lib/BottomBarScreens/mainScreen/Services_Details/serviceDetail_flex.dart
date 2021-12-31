import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlexCard extends StatefulWidget {
  @override
  _FlexCardState createState() => _FlexCardState();
}

class _FlexCardState extends State<FlexCard> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 5,
        right: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: RichText(
              text: TextSpan(
                  text: '325',
                  style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cairo'),
                  children: [
                    TextSpan(
                        text: 'متبقية من 700 فليكس',
                        style: TextStyle(color: Colors.black, fontSize: 15))
                  ]),
            ),
          ),
          Slider(
              value: _currentSliderValue,
              min: 0,
              max: 100,
              activeColor: Theme.of(context).accentColor,
              inactiveColor: Theme.of(context).primaryColor,
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: ScreenUtil().setHeight(100),
                width: ScreenUtil().setWidth(200),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).accentColor,
                ),
                child: Center(
                  child: Text(
                    'ادارة الباقة',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Column(
                children: [
                  RichText(
                    textDirection: TextDirection.rtl,
                    text: TextSpan(
                      text: '2يوم ',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(255, 210, 10, 5),
                      ),
                      children: [
                        TextSpan(
                            text: 'للتجديد',
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'Cairo'))
                      ],
                    ),
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '7 ص',
                        textDirection: TextDirection.rtl,
                      ),
                      Text(
                        'اخر تحديث',
                        textDirection: TextDirection.rtl,
                      ),
                      Icon(
                        Icons.refresh,
                        color: Colors.black,
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
