import 'package:flutter/material.dart';

import '../../../../color.dart';

class ResetPsswordScreen extends StatelessWidget {
  Widget _CustomTextFieled(String txt) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: txt,
            fillColor: Colors.green,
            contentPadding: EdgeInsets.all(20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            enabled: true,
            labelStyle: TextStyle(
              fontFamily: 'Cairo',
              color: Colors.black.withOpacity(0.4),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        centerTitle: true,
        title: Text(
          'فودافون كاش',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Cairo',
            fontSize: MediaQuery.of(context).size.width / 18,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'يجب انشاء رقم سري مكون من 6 ارقام غير متشابهين \nاو متتالين للبدء في استخدام فودافون كاش',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: 'Cairo',
                    fontSize: MediaQuery.of(context).size.width / 28,
                  ),
                ),
              ),
              _CustomTextFieled('الرقم القومي'),
              _CustomTextFieled('ادخل الرقم السري'),
              _CustomTextFieled('اعد ادخال الرقم السري'),
              _CustomTextFieled('ادخل رمز التحقق الذي تلقيته في رسالة'),
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
                    'تغيير الرقم السري',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Cairo',
                        fontSize: MediaQuery.of(context).size.width / 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
