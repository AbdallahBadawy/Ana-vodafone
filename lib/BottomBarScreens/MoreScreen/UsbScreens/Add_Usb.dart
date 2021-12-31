import 'package:flutter/material.dart';

class AddUsb extends StatefulWidget {
  @override
  _AddUsbState createState() => _AddUsbState();
}

class _AddUsbState extends State<AddUsb> {
  Widget customTextField({String title}) {
    return TextFormField(
      decoration: InputDecoration(
          hoverColor: Colors.teal,
          filled: true,
          focusColor: Colors.teal,
          hintText: "$title",
          hintStyle: TextStyle(
              fontSize: 12, fontFamily: "cairo", color: Colors.black38),
          fillColor: Colors.white,
          contentPadding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 2 + 70, top: 5)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            " الخاصه بىUSB ال",
            style: TextStyle(
                fontFamily: "Cairo", fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                Text(
                  " بتاعتك USB اضف خطوط ال",
                  style: TextStyle(
                      fontFamily: "cairo",
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                Text(
                  "تشترى باقات,USBعشان تتابع استخدام خط ال ",
                  style: TextStyle(
                      fontFamily: "cairo", fontSize: 17, color: Colors.black54),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 0),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                Text(
                  "اضافيه وتتحكم فيه,ادخل رقم خط ورقم",
                  style: TextStyle(
                      fontFamily: "cairo", fontSize: 17, color: Colors.black54),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                Text(
                  "يبدأ ب_89  USB رقم الشريحه ال  USBشريحة ال",
                  style: TextStyle(
                      fontFamily: "cairo", fontSize: 17, color: Colors.black54),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 40),
            width: MediaQuery.of(context).size.width,
            height: 20,
            color: Theme.of(context).primaryColor,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, bottom: 20),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                Text(
                  "بتاعتك واتحكم فيها USBاضف كل خطوط ال ",
                  style: TextStyle(
                      fontFamily: "Cairo",
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          customTextField(title: "USBادخل رقم خط ال"),
          customTextField(title: "ادخل رقم الشريحة"),
          customTextField(title: "USB ادخل اسم ال "),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            width: MediaQuery.of(context).size.width - 60,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[400]),
            child: Center(
              child: Text(
                "اضف خط جديد",
                style: TextStyle(
                    fontFamily: "Cairo",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
            ),
          )
        ]));
  }
}
