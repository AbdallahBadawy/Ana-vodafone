import 'package:flutter/material.dart';

class HawelohomScreen extends StatefulWidget {
  @override
  _HawelohomScreenState createState() => _HawelohomScreenState();
}

class _HawelohomScreenState extends State<HawelohomScreen> {
  int val = 1;
  PopupMenuItem Items(date) {
    return PopupMenuItem(
        child: Text(
      date,
      style: TextStyle(
          fontSize: 17,
          color: Colors.black,
          fontFamily: "Cairo",
          fontWeight: FontWeight.bold),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "على حسابى",
          style: TextStyle(
              fontFamily: "cairo", fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                Text(
                  "خدمة حولهم",
                  style: TextStyle(
                      fontFamily: "cairo",
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                Text(
                  "اختار قائمة من أصحابك وحبايبك علشان تبعتلهم رصيد",
                  style: TextStyle(
                      fontFamily: "cairo", fontSize: 13, color: Colors.black54),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.white,
            child: TextFormField(
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                    hintText: "رقم التليفون",
                    hintStyle: TextStyle(
                      fontFamily: "cairo",
                      fontSize: 12,
                    ),
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.blue,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: InputBorder.none)),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.white,
            child: TextFormField(
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  hintText: "الاسم",
                  hintStyle: TextStyle(
                    fontFamily: "cairo",
                    fontSize: 12,
                  ),
                  filled: true,
                )),
          ),
          Container(
            margin: EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width - 30,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Colors.black)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PopupMenuButton(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                    ),
                    itemBuilder: (BuildContext context) {
                      return [
                        Items("5 LE"),
                        Items("10 LE"),
                        Items("20 LE"),
                        Items("30 LE"),
                        Items("40 LE"),
                        Items("50 LE"),
                        Items("60 LE")
                      ];
                    }),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 100,
                    ),
                    child: Text(
                      "اختر قيمة التحويل",
                      style: TextStyle(
                          fontFamily: "cairo",
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Text(
                  "شهرى",
                  style: TextStyle(
                      fontFamily: "cairo",
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Radio(
                  hoverColor: Colors.teal,
                  activeColor: Colors.teal,
                  value: 2,
                  groupValue: val,
                  onChanged: (newvalue) {
                    setState(() {
                      val = newvalue;
                    });
                  }),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Text("أسبوعى",
                    style: TextStyle(
                        fontFamily: "cairo",
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                ),
                child: Radio(
                    hoverColor: Colors.teal,
                    activeColor: Colors.teal,
                    value: 1,
                    groupValue: val,
                    onChanged: (newvalue) {
                      setState(() {
                        val = newvalue;
                      });
                    }),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width - 30,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Colors.black)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PopupMenuButton(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                    ),
                    itemBuilder: (BuildContext context) {
                      return [
                        Items("الاحد"),
                        Items("الاثنين"),
                        Items("الثلاتاء"),
                        Items("الاربعاء"),
                        Items("الخميس"),
                        Items("الجمعه"),
                        Items("السبت")
                      ];
                    }),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 130,
                    ),
                    child: Text(
                      "اختر يوم",
                      style: TextStyle(
                          fontFamily: "cairo",
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 30,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                "اضف رقم جديد",
                style: TextStyle(
                    fontFamily: "cairo",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
            ),
          )
        ],
      ),
    );
  }
}
