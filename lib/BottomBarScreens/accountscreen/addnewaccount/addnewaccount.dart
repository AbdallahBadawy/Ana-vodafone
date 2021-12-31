import 'package:ana_vodafoneApp/BottomBarScreens/accountscreen/addnewaccount/numberphonetextfeild.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/accountscreen/addnewaccount/passwordtextformfeild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNewAccountScreen extends StatefulWidget {
  @override
  _AddNewAccountScreenState createState() => _AddNewAccountScreenState();
}

class _AddNewAccountScreenState extends State<AddNewAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(' انا فودافون'),
      ),
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'اضافة حساب جديد',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  right: 10,
                ),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'دلوقتي تقدر تضيف لحد 3 ارقام علشان تتحكم فيهم\n ف نفس الوقت',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 22,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'ادخل البيانات الاتية',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: NumberPhoneTextFormFeild(),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: PasswordTextFormField(),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: ScreenUtil().setHeight(100),
                decoration: BoxDecoration(
                  color: Colors.lightBlue[600],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'اضف الحساب',
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(35),
                        fontFamily: 'Cairo',
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
