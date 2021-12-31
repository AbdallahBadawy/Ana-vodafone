import 'package:ana_vodafoneApp/color.dart';
import 'package:flutter/material.dart';

class TahwelRassidScreen extends StatefulWidget {
  @override
  _TahwelRassidScreenState createState() => _TahwelRassidScreenState();
}

class _TahwelRassidScreenState extends State<TahwelRassidScreen> {
  Widget _CustomTextFieled(String labelText) {
    return TextFormField(
      textDirection: TextDirection.rtl,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: labelText,
        contentPadding: EdgeInsets.all(8),
        fillColor: Colors.green,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        enabled: true,
        labelStyle: TextStyle(
          fontFamily: 'Cairo',
          color: Colors.black.withOpacity(0.4),
        ),
      ),
      obscureText: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'خدمات الرصيد',
          style: TextStyle(fontFamily: 'Cairo'),
        ),
        elevation: 15,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                'تحويل الرصيد',
                style: TextStyle(
                    fontFamily: 'Cairo',
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.width / 13,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'دلوقتي تقدر تحول لحد 50 جنيه في المرة.تكلفة الخدمة 2% من المبلغ المحول بحد ادني  0.2 جنيه',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  fontFamily: 'Cairo',
                  color: Colors.blueGrey,
                  fontSize: MediaQuery.of(context).size.width / 25,
                  fontWeight: FontWeight.bold),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      _CustomTextFieled('ادخل القيمة بالجنيه'),
                      SizedBox(
                        height: 40,
                      ),
                      _CustomTextFieled('رقم الموبايل'),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.height / 10,
                        width: MediaQuery.of(context).size.width - 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(getColorHexFromStr('#5f829e')),
                        ),
                        child: Center(
                          child: Text(
                            'حول الان',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Cairo',
                                fontSize:
                                    MediaQuery.of(context).size.width / 18),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
