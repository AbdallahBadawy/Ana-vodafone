import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Follow_up_balance/rechargethebalance/rechargethebalance.dart';
import 'package:flutter/material.dart';

class BalanceDetailsScreen extends StatefulWidget {
  @override
  _BalanceDetailsScreenState createState() => _BalanceDetailsScreenState();
}

class _BalanceDetailsScreenState extends State<BalanceDetailsScreen> {
  // ignore: non_constant_identifier_names
  PopupMenuItem Items(date) {
    return PopupMenuItem(
        child: Text(
      date,
      style: TextStyle(fontSize: 12, color: Colors.black, fontFamily: "Cairo"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "تفاصيل الرصيد",
            style: TextStyle(
                fontFamily: "Cairo", fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/unnamed.jpg"),
                      fit: BoxFit.fill)),
              child: Container(
                margin: EdgeInsets.only(top: 30, left: 15, right: 15),
                width: MediaQuery.of(context).size.width - 30,
                height: MediaQuery.of(context).size.height / 3 - 30,
                color: Colors.black.withOpacity(0.8),
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "رصيدك الحالى هو \n جنيه .,.",
                          style: TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RechargeTheBalance()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width - 70,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Theme.of(context).accentColor,
                            borderRadius: BorderRadius.circular(7)),
                        child: Center(
                          child: Text("اشحن دلوقتى",
                              style: TextStyle(
                                  fontFamily: "Cairo",
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ),
                    ),
                    Center(
                      child: Text("اعرف تفاصيل رصيدك بحد أقصى٣٠يوم",
                          style: TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Theme.of(context).primaryColor,
              child: Stack(
                children: [
                  Positioned(
                      top: 10,
                      left: 150,
                      child: Row(
                        children: [
                          Text(
                            "الى",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Cairo",
                                color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 190),
                            child: Text(
                              "من",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Cairo",
                                  color: Colors.black),
                            ),
                          )
                        ],
                      )),
                  Positioned(
                      top: 40,
                      left: 20,
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 3 + 20,
                            height: 50,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  PopupMenuButton(
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        size: 35,
                                      ),
                                      itemBuilder: (BuildContext context) {
                                        return [
                                          Items("اليوم"),
                                          Items("الامس"),
                                          Items("أكتوبر"),
                                          Items("سبتمبر"),
                                          Items("أغسطس"),
                                          Items("يوليو"),
                                          Items("يونيو")
                                        ];
                                      }),
                                  Text(
                                    "سبتمبر",
                                    style: TextStyle(
                                        fontSize: 15, fontFamily: "Cairo"),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                  Positioned(
                      top: 40,
                      left: 220,
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 3 + 20,
                            height: 50,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  PopupMenuButton(
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        size: 35,
                                      ),
                                      itemBuilder: (BuildContext context) {
                                        return [
                                          Items("اليوم"),
                                          Items("الامس"),
                                          Items("أكتوبر"),
                                          Items("سبتمبر"),
                                          Items("أغسطس"),
                                          Items("يوليو"),
                                          Items("يونيو")
                                        ];
                                      }),
                                  Text(
                                    "اليوم",
                                    style: TextStyle(
                                        fontSize: 15, fontFamily: "Cairo"),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        "اليوم",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            color: Colors.black87),
                      ),
                    )
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                          "لا يوجد أى اضافه أو استهلاك لرصيدك فى هذا اليوم",
                          style: TextStyle(
                              fontFamily: "cairo",
                              fontSize: 13,
                              color: Colors.black45)),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        "الامس",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            color: Colors.black87),
                      ),
                    )
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                          "لا يوجد أى اضافه أو استهلاك لرصيدك فى هذا اليوم",
                          style: TextStyle(
                              fontFamily: "cairo",
                              fontSize: 13,
                              color: Colors.black45)),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        "أكتوبر",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            color: Colors.black87),
                      ),
                    )
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                          "لا يوجد أى اضافه أو استهلاك لرصيدك فى هذا اليوم",
                          style: TextStyle(
                              fontFamily: "cairo",
                              fontSize: 13,
                              color: Colors.black45)),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        "سبتمبر",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            color: Colors.black87),
                      ),
                    )
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                          "لا يوجد أى اضافه أو استهلاك لرصيدك فى هذا اليوم",
                          style: TextStyle(
                              fontFamily: "cairo",
                              fontSize: 13,
                              color: Colors.black45)),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        "أغسطس",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            color: Colors.black87),
                      ),
                    )
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                          "لا يوجد أى اضافه أو استهلاك لرصيدك فى هذا اليوم",
                          style: TextStyle(
                              fontFamily: "cairo",
                              fontSize: 13,
                              color: Colors.black45)),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        "اليوم",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            color: Colors.black87),
                      ),
                    )
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                          "لا يوجد أى اضافه أو استهلاك لرصيدك فى هذا اليوم",
                          style: TextStyle(
                              fontFamily: "cairo",
                              fontSize: 13,
                              color: Colors.black45)),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        "اليوم",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            color: Colors.black87),
                      ),
                    )
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                          "لا يوجد أى اضافه أو استهلاك لرصيدك فى هذا اليوم",
                          style: TextStyle(
                              fontFamily: "cairo",
                              fontSize: 13,
                              color: Colors.black45)),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        "اليوم",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            color: Colors.black87),
                      ),
                    )
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                          "لا يوجد أى اضافه أو استهلاك لرصيدك فى هذا اليوم",
                          style: TextStyle(
                              fontFamily: "cairo",
                              fontSize: 13,
                              color: Colors.black45)),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        "اليوم",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            color: Colors.black87),
                      ),
                    )
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                          "لا يوجد أى اضافه أو استهلاك لرصيدك فى هذا اليوم",
                          style: TextStyle(
                              fontFamily: "cairo",
                              fontSize: 13,
                              color: Colors.black45)),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        "اليوم",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            color: Colors.black87),
                      ),
                    )
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                          "لا يوجد أى اضافه أو استهلاك لرصيدك فى هذا اليوم",
                          style: TextStyle(
                              fontFamily: "cairo",
                              fontSize: 13,
                              color: Colors.black45)),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        "اليوم",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            color: Colors.black87),
                      ),
                    )
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                          "لا يوجد أى اضافه أو استهلاك لرصيدك فى هذا اليوم",
                          style: TextStyle(
                              fontFamily: "cairo",
                              fontSize: 13,
                              color: Colors.black45)),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        "اليوم",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            color: Colors.black87),
                      ),
                    )
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                          "لا يوجد أى اضافه أو استهلاك لرصيدك فى هذا اليوم",
                          style: TextStyle(
                              fontFamily: "cairo",
                              fontSize: 13,
                              color: Colors.black45)),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        "اليوم",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            color: Colors.black87),
                      ),
                    )
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                          "لا يوجد أى اضافه أو استهلاك لرصيدك فى هذا اليوم",
                          style: TextStyle(
                              fontFamily: "cairo",
                              fontSize: 13,
                              color: Colors.black45)),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        "اليوم",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            color: Colors.black87),
                      ),
                    )
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                          "لا يوجد أى اضافه أو استهلاك لرصيدك فى هذا اليوم",
                          style: TextStyle(
                              fontFamily: "cairo",
                              fontSize: 13,
                              color: Colors.black45)),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        "اليوم",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            color: Colors.black87),
                      ),
                    )
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                          "لا يوجد أى اضافه أو استهلاك لرصيدك فى هذا اليوم",
                          style: TextStyle(
                              fontFamily: "cairo",
                              fontSize: 13,
                              color: Colors.black45)),
                    )
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
