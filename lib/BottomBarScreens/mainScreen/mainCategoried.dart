import 'package:flutter/material.dart';

class MainCategories extends StatelessWidget {
  final String image;
  final String name;
  // ignore: non_constant_identifier_names
  final Function Tap;

  MainCategories({this.image, this.Tap, this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: Tap,
          child: Container(
            margin: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height / 8,
            width: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.white.withOpacity(0.2),
                    offset: Offset(3, 5),
                    blurRadius: 1),
                BoxShadow(
                    color: Colors.white.withOpacity(0.2),
                    offset: Offset(-3, -4),
                    blurRadius: 1)
              ],
            ),
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height / 14,
                width: MediaQuery.of(context).size.width / 12,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(image: AssetImage(image))),
              ),
            ),
          ),
        ),
        Text(
          name,
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
