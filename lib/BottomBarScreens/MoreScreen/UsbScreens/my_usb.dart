import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/UsbScreens/Add_Usb.dart';
import 'package:flutter/material.dart';
import 'Add_Usb.dart';

class MyUsb extends StatefulWidget {
  @override
  _MyUsbState createState() => _MyUsbState();
}

class _MyUsbState extends State<MyUsb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                Text(
                  " بتاعتك USB اتحكم فى خطوط ال",
                  style: TextStyle(
                      fontFamily: "cairo",
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                Text(" واتحكم فيها عن USBشوف استخدام خطوط ال",
                    style: TextStyle(
                        fontFamily: "cairo",
                        fontSize: 15,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                Text("طريق أنا فودافون",
                    style: TextStyle(
                        fontFamily: "cairo",
                        fontSize: 15,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            width: MediaQuery.of(context).size.width,
            height: 25,
            color: Theme.of(context).primaryColor,
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Text(
                "عدد الخطوط المضافه : 0",
                style: TextStyle(
                    fontFamily: "Cairo",
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            width: MediaQuery.of(context).size.width,
            height: 3,
            color: Theme.of(context).primaryColor,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AddUsb()));
            },
            child: Container(
              margin: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width - 100,
                  top: MediaQuery.of(context).size.height / 2 - 50),
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.red,
              ),
              child: Center(
                child: Text(
                  "+",
                  style: TextStyle(
                      fontFamily: "Cairo",
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
