import 'package:flutter/material.dart';

class ServicesTabScreen extends StatefulWidget {
  @override
  _ServicesTabScreenState createState() => _ServicesTabScreenState();
}

class _ServicesTabScreenState extends State<ServicesTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 80,
          vertical: 50,
        ),
        child: Text(
          'انت مش مشترك في اي خدمة',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
