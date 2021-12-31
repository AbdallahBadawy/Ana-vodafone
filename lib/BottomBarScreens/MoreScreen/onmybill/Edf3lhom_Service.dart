import 'package:flutter/material.dart';

class Edf3lohomScreen extends StatefulWidget {
  @override
  _Edf3lohomScreenState createState() => _Edf3lohomScreenState();
}

class _Edf3lohomScreenState extends State<Edf3lohomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Column(children: [
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
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    "اختار قائمة من أصحابك وحبايبك علشان مكالمتهم ليك تكون على \n حسابك",
                    style: TextStyle(
                        fontFamily: "cairo",
                        fontSize: 13,
                        color: Colors.black54),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: MediaQuery.of(context).size.width,
            height: 25,
            color: Colors.grey[300],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "اختار حتى ٥أرقام فودافون وتدفعلهم مكالماتهم \n ليك",
                      style: TextStyle(
                          fontFamily: "cairo",
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  )),
            ],
          ),
          InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (ctx) {
                    return Dialog(
                      backgroundColor: Colors.white,
                      child: Container(
                        width: MediaQuery.of(context).size.width - 30,
                        height: 140,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                children: [
                                  Text(
                                    "خطأ",
                                    style: TextStyle(
                                      fontFamily: "Cairo",
                                      fontSize: 13,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                children: [
                                  Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Text(
                                      "للأسف رصيدك غير كافى للاشتراك \n فى الخدمة",
                                      style: TextStyle(
                                          fontFamily: "Cairo",
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "موافق",
                                      style: TextStyle(
                                          fontFamily: "cairo",
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.teal),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  });
            },
            child: Container(
              margin: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width - 30,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.teal),
              child: Center(
                child: Text(
                  "اشترك",
                  style: TextStyle(
                      fontFamily: "cairo",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ]));
  }
}
