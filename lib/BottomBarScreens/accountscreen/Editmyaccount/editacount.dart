import 'package:ana_vodafoneApp/BottomBarScreens/accountscreen/Editmyaccount/CustomTextFeild.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/accountscreen/Editmyaccount/checkbox.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/accountscreen/Editmyaccount/textformfeildmail.dart';
import 'package:flutter/material.dart';

class EditMyAccountScreen extends StatefulWidget {
  @override
  _EditMyAccountScreenState createState() => _EditMyAccountScreenState();
}

class _EditMyAccountScreenState extends State<EditMyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: Text('الملف الشخصي'),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10, right: 10),
                    child: Row(
                      children: [
                        Text(
                          'البيانات الشخصية',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      right: 10,
                      bottom: 10,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'ملءالبيانات سيساعدنا علي ابقائك متابعا للخدمات والعروض\n المناسبة لاهتماماتك ',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Icon(
                            Icons.account_circle,
                            size: 100,
                            color: Colors.black,
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              width: MediaQuery.of(context).size.width / 2 + 30,
                              child: customTextField(context),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              width: MediaQuery.of(context).size.width / 2 + 30,
                              child: customTextField(context),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: CustomTextFeildMail(),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: CheckBox(),
                        ),
                        Container(
                          child: Text(
                            'اوافق علي الاتصال بي عبر البريد الالكتروني',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              'تاريخ الميلاد',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              ' تاريخ الميلاد غير محدد',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
