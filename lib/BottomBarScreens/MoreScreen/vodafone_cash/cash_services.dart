import 'package:flutter/material.dart';

class CashServices extends StatelessWidget {
  final String name;
  final String img;
  final Function onpress;
  CashServices({this.img, this.name, this.onpress});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            padding: EdgeInsets.all(13),
            height: 65,
            width: 65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.white,
                border: Border.fromBorderSide(BorderSide(color: Colors.grey))),
            child: Center(
              child: Image.asset(
                img,
              ),
            ),
          ),
          Text(
            name,
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: MediaQuery.of(context).size.width / 28,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
