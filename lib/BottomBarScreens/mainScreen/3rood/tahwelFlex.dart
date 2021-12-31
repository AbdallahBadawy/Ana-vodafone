import 'package:flutter/material.dart';

class TahwelFlexat extends StatefulWidget {
  @override
  _TahwelFlexatState createState() => _TahwelFlexatState();
}

class _TahwelFlexatState extends State<TahwelFlexat> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        centerTitle: true,
        title: Text(
          'خدمات الرصيد',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Cairo',
            fontSize: MediaQuery.of(context).size.width / 16,
          ),
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'حول فليكساتك',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Cairo',
                      fontSize: MediaQuery.of(context).size.width / 16,
                    ),
                  ),
                  Text(
                    'دلوقتي تقدر تحول لحد 250 فليكس لكل اصحابك وقرايبك علي نظام فليكس',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontFamily: 'Cairo',
                      fontSize: MediaQuery.of(context).size.width / 25,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'رقم الموبايل',
                        contentPadding: EdgeInsets.all(5),
                        suffixIcon: Icon(
                          Icons.person,
                          size: 20,
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 9,
                        width: MediaQuery.of(context).size.width - 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey)),
                        child: Center(
                          child: DropdownButton(
                              value: _value,
                              items: [
                                DropdownMenuItem(
                                  child: Text(
                                    '50فليكس ب 50 قرش',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontFamily: 'Cairo',
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              25,
                                    ),
                                  ),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    '100فليكس ب 1جنيه',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontFamily: 'Cairo',
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              25,
                                    ),
                                  ),
                                  value: 2,
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    '150فليكس ب 1.5 جنيه',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontFamily: 'Cairo',
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              25,
                                    ),
                                  ),
                                  value: 3,
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    '200 فليكسب 2 جنيه',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontFamily: 'Cairo',
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              25,
                                    ),
                                  ),
                                  value: 4,
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    '250 فليكس ب 2.5 جنيه',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontFamily: 'Cairo',
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              25,
                                    ),
                                  ),
                                  value: 5,
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _value = value;
                                });
                              }),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      height: MediaQuery.of(context).size.height / 12,
                      width: MediaQuery.of(context).size.width - 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey),
                      child: Center(
                        child: Text(
                          'حول الان',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Cairo',
                            fontSize: MediaQuery.of(context).size.width / 25,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
