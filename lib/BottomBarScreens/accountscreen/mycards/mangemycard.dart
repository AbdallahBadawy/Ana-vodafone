import 'package:ana_vodafoneApp/BottomBarScreens/accountscreen/mycards/addnewcard.dart';
import 'package:flutter/material.dart';

class ManageMyCardsScreen extends StatefulWidget {
  @override
  _ManageMyCardsScreenState createState() => _ManageMyCardsScreenState();
}

class _ManageMyCardsScreenState extends State<ManageMyCardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: Text('ادارة البطاقات الخاصة بي'),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          margin: EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 5,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[300],
                  offset: Offset(5, 5),
                  blurRadius: 10),
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(-3, -2),
                  blurRadius: 10,
                  spreadRadius: 0.2)
            ],
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                      'اضف / احذف بطاقة',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 20,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddNewCardScreen(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[600],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'اضف بطاقة جديدة',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 20,
                          fontFamily: 'Cairo',
                          color: Colors.white),
                    ),
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
