import 'package:ana_vodafoneApp/BottomBarScreens/accountscreen/mycards/cardtextfield.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/accountscreen/mycards/dateofend.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/accountscreen/mycards/nametextformfield.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/accountscreen/mycards/numbertextfield.dart';
import 'package:flutter/material.dart';

class AddNewCardScreen extends StatefulWidget {
  @override
  _AddNewCardScreenState createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: Text('اضافة بطاقة جديدة'),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            children: [
              Container(
                child: NameTextFormField(),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: NumberTextField(),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: DateOfEnd(),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: CardTextFormField(),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                      'الشروط والاحكام',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.lightBlue[600],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'اضافة الكارت',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 20,
                        fontFamily: 'Cairo',
                        color: Colors.white),
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
