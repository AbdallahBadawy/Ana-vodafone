import 'package:flutter/material.dart';

class MobileEnternetManagementMain extends StatelessWidget {
  final String name;
  final String img;
  final Function Tafasel;
  MobileEnternetManagementMain({this.Tafasel, this.img, this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      height: MediaQuery.of(context).size.height / 4 - 20,
      width: MediaQuery.of(context).size.width - 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.arrow_back_ios,
            color: Color.fromRGBO(255, 0, 0, 1),
            size: 30,
          ),
          Container(
            margin: EdgeInsets.only(right: 60),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
          ),
          InkWell(
            onTap: Tafasel,
            child: Text(
              name,
              style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: MediaQuery.of(context).size.width / 16),
            ),
          )
        ],
      ),
    );
  }
}
