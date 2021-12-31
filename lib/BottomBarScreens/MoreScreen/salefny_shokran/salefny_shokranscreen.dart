import 'package:flutter/material.dart';

class SalefnyShokran extends StatefulWidget {
  @override
  _SalefnyShokranState createState() => _SalefnyShokranState();
}

class _SalefnyShokranState extends State<SalefnyShokran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "خدمات الرصيد",
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
                  "سلفنى شكرا",
                  style: TextStyle(
                      fontFamily: "Cairo",
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 5),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                Text(
                  "مع خدمة سلفنى شكرا لعملاء فودافون الكارت,فودافون هتسلفك\n ٤جنيه لو رصيدك أقل من ٢جنيه",
                  style: TextStyle(
                      fontFamily: "Cairo", fontSize: 13, color: Colors.black54),
                )
              ],
            ),
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
                                    "تأكيد",
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
                                  Text(
                                    "مصاريف الخدمه جنيه واحد لكل تحويل",
                                    style: TextStyle(
                                        fontFamily: "Cairo",
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40, left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "تأكيد",
                                    style: TextStyle(
                                        fontFamily: "cairo",
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text("إلغاء",
                                        style: TextStyle(
                                            fontFamily: "cairo",
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
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
              margin: EdgeInsets.symmetric(vertical: 40),
              width: MediaQuery.of(context).size.width - 30,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.teal.withGreen(130),
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(
                  "سلفنى",
                  style: TextStyle(
                      fontFamily: "Cairo",
                      fontSize: 20,
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
