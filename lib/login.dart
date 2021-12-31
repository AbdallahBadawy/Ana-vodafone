import 'package:flutter/material.dart';
import 'package:ana_vodafoneApp/homescreen.dart';
// ignore: unused_import
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(229, 1, 0, 1),
      body: Column(
        children: [
          Directionality(
              textDirection: TextDirection.rtl,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/small_red_background.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  //pagelogo
                  Positioned(
                    top: 40,
                    right: 20,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://lh3.googleusercontent.com/aHCyKeYF1O7CKJCs29Q5ccjiCZz03V5wqy82-grEO_vPfk4TDb8qQlZ3PENrxLZLcIMs'),
                        ),
                      ),
                    ),
                  ),
                  //pageahlan
                  Positioned(
                    top: 110,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'اهلا',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'انا فودافون مش هيسحب من رصيدك',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Cairo',
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  //لتخطي تسجيل الدخول
                  Positioned(
                    top: 280,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'لتخطي تسجيل الدخول',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Cairo',
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 320,
                    right: 20,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        width: MediaQuery.of(context).size.width - 100,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(175, 9, 9, 1)),
                        child: Center(
                            child: Text(
                          'استمر ب01011662070',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Cairo',
                            fontSize: 16,
                          ),
                        )),
                      ),
                    ),
                  ),
                  //pagelanguage
                  Positioned(
                    top: 40,
                    left: 20,
                    child: Container(
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.red,
                              ),
                              child: Center(
                                child: Text(
                                  'AR',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              )),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.grey),
                              child: Center(
                                child: Text(
                                  'EN',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  //login
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 3 + 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30)),
                            color: Colors.white),
                        child: Padding(
                          padding: EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'للاستمرار علي الواي فاي او التسجيل بحساب اخر',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Cairo',
                                  fontSize:
                                      MediaQuery.of(context).size.width / 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 20),
                                    filled: true,
                                    hintText: 'ادخل رقم الموبايل',
                                    // fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide.none)),
                              ),
                              SizedBox(
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 320,
                                    height: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color.fromRGBO(229, 1, 0, 1)),
                                    child: Center(
                                        child: Text(
                                      'استمر',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Cairo',
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: Center(
                                  child: Text(' اكتشف انا فودافون'),
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
