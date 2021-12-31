import 'package:flutter/material.dart';

class TransformatinPart extends StatefulWidget {
  @override
  _TransformatinPartState createState() => _TransformatinPartState();
}

class _TransformatinPartState extends State<TransformatinPart> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/extreme.png'),
                fit: BoxFit.fill),
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'خدمة حولوهم',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 18,
                  ),
                ),
              ),
              Container(
                child: Text(
                  'اضف قائمة لتحويل الرصيد تلقائيا كل شهر',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: MediaQuery.of(context).size.width / 22,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Icon(
            Icons.arrow_forward_ios,
            size: 25,
            color: Colors.grey[400],
          ),
        ),
      ],
    );
  }
}
