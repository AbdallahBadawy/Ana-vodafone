import 'package:flutter/material.dart';

class WhiteMenuScreen extends StatefulWidget {
  @override
  _WhiteMenuScreenState createState() => _WhiteMenuScreenState();
}

class _WhiteMenuScreenState extends State<WhiteMenuScreen> {
  int val = 1;
  int val2 = 1;
  int val3 = 1;
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "خدمات المكالمات",
          style: TextStyle(
              fontFamily: "Cairo", fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 150,
            color: Colors.white,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "الفائمة البيضاء",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          "مع خدمة القائمة البيضاء يمكنك تحديد الأرقام التى يمكنها الوصل \n إليك دائما",
                          style: TextStyle(
                            fontFamily: "cairo",
                            fontSize: 13,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 25,
                  color: Theme.of(context).primaryColor,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "نوع الاشتراك",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Theme.of(context).primaryColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text("اشترك فى الباقة الشهرية ب 5 جنيه",
                          style: TextStyle(
                              fontFamily: "cairo",
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                    Radio(
                        hoverColor: Colors.teal,
                        activeColor: Colors.teal,
                        value: 1,
                        groupValue: val,
                        onChanged: (newvalue) {
                          setState(() {
                            val = newvalue;
                          });
                        })
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Theme.of(context).primaryColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "تفعيل الخدمة يوم واحد ب30 قرشا",
                      style: TextStyle(
                          fontFamily: "cairo",
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Radio(
                        activeColor: Colors.teal,
                        value: 2,
                        groupValue: val,
                        onChanged: (newvalue) {
                          setState(() {
                            val = newvalue;
                          });
                        })
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Theme.of(context).primaryColor,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "نوع الإخطار",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Theme.of(context).primaryColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text("الموبايل غير متاح",
                          style: TextStyle(
                              fontFamily: "cairo",
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                    Radio(
                        activeColor: Colors.teal,
                        hoverColor: Colors.teal,
                        value: 1,
                        groupValue: val2,
                        onChanged: (newvalue) {
                          setState(() {
                            val2 = newvalue;
                          });
                        })
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Theme.of(context).primaryColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Text(
                        "البريد الصوتى ملئ",
                        style: TextStyle(
                            fontFamily: "cairo",
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Radio(
                        hoverColor: Colors.teal,
                        activeColor: Colors.teal,
                        value: 2,
                        groupValue: val2,
                        onChanged: (newvalue) {
                          setState(() {
                            val2 = newvalue;
                          });
                        })
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Theme.of(context).primaryColor,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "تشغيل الخدمة",
                          style: TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        )
                      ],
                    )),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Theme.of(context).primaryColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Text("طوال الوقت",
                          style: TextStyle(
                              fontFamily: "cairo",
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                    Radio(
                        activeColor: Colors.teal,
                        hoverColor: Colors.teal,
                        value: 1,
                        groupValue: val3,
                        onChanged: (newvalue) {
                          setState(() {
                            val3 = newvalue;
                          });
                        })
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Theme.of(context).primaryColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        "وقت محدد",
                        style: TextStyle(
                            fontFamily: "cairo",
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Radio(
                        hoverColor: Colors.teal,
                        activeColor: Colors.teal,
                        value: 2,
                        groupValue: val3,
                        onChanged: (newvalue) {
                          setState(() {
                            val3 = newvalue;
                          });
                        })
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Theme.of(context).primaryColor,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Switch(
                            activeColor: Colors.teal,
                            value: value,
                            onChanged: (newvalue) {
                              setState(() {
                                value = newvalue;
                              });
                            }),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "متابعة محاولات الاتصال",
                            style: TextStyle(
                                fontFamily: "Cairo",
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
          Container(
            height: 66.3636363,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, 2),
              )
            ]),
            child: Column(
              children: [
                Center(
                  child: InkWell(
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
                                              "تأكيد الاشتراك",
                                              style: TextStyle(
                                                fontFamily: "Cairo",
                                                fontSize: 15,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10),
                                        child: Row(
                                          textDirection: TextDirection.rtl,
                                          children: [
                                            Text(
                                              "هل تريد الاشتراك فى الخدمة؟",
                                              style: TextStyle(
                                                  fontFamily: "Cairo",
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20, left: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              "نعم",
                                              style: TextStyle(
                                                  fontFamily: "cairo",
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Text("لا",
                                                  style: TextStyle(
                                                      fontFamily: "cairo",
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ));
                          });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      height: 40,
                      width: MediaQuery.of(context).size.width - 40,
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                        child: Text(
                          "اشترك",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "cairo",
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
