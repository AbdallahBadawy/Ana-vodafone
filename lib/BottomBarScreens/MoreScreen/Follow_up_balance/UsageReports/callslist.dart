import 'package:flutter/material.dart';

class CallsRest extends StatefulWidget {
  @override
  _CallsRestState createState() => _CallsRestState();
}

class _CallsRestState extends State<CallsRest> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.person,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Text(
                    'محمد الباز',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(child: Text('11 مكالمة')),
        ],
      ),
    );
  }
}
