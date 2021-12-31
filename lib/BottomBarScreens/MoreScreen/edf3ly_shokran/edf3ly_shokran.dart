import 'package:flutter/material.dart';

class Edf3lyShokranScreen extends StatefulWidget {
  @override
  _Edf3lyShokranScreenState createState() => _Edf3lyShokranScreenState();
}

class _Edf3lyShokranScreenState extends State<Edf3lyShokranScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'خدمات الرصيد',
          style: TextStyle(
              color: Colors.black87,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: MediaQuery.of(context).size.width / 15),
        ),
        elevation: 5,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ادفعلي شكرا',
                  style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: MediaQuery.of(context).size.width / 15),
                ),
                Text(
                  'لكل عملاء الكارت انت ممكن تكلم اي رقم في اي وقت\nعلي حسابة في حالة قبول دفع قيمة المكالمة ',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: MediaQuery.of(context).size.width / 26),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  textDirection: TextDirection.rtl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'رقم الموبايل',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.all(15)),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 50),
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.cyan,
                  ),
                  child: Center(
                    child: Text(
                      'اتصل',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: MediaQuery.of(context).size.width / 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
