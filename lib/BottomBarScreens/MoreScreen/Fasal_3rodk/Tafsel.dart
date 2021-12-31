import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Fasal_3rodk/GetOffer.dart';
import 'package:flutter/material.dart';

class TfaselScreen extends StatefulWidget {
  @override
  _TfaselScreenState createState() => _TfaselScreenState();
}

class _TfaselScreenState extends State<TfaselScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
                child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4 + 60,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage("assets/images/small_red_background.png"),
                      fit: BoxFit.fill)),
            )),
            Positioned(
                top: 25,
                left: MediaQuery.of(context).size.width - 40,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 50,
                  ),
                )),
            Positioned(
                left: 35,
                top: MediaQuery.of(context).size.height / 4 - 65,
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/kisspng-time-attendance-clocks-watch-timekeeper-alarm-cl-5d46f75ecba153.8250049415649319348341.png"))),
                )),
            Positioned(
                left: MediaQuery.of(context).size.width / 2 + 30,
                top: MediaQuery.of(context).size.height / 4,
                child: Row(
                  children: [
                    Text(
                      "شبرق نفسك على مزاجك",
                      style: TextStyle(fontSize: 15, fontFamily: "Cairo"),
                    )
                  ],
                )),
            Positioned(
                left: MediaQuery.of(context).size.width / 2 - 45,
                top: MediaQuery.of(context).size.height / 4 + 25,
                child: Row(
                  children: [
                    Text(
                      "دقائق لأرقام فودافون",
                      style: TextStyle(fontFamily: "Cairo", fontSize: 25),
                    )
                  ],
                )),
            Positioned(
              left: 20,
              right: 20,
              top: MediaQuery.of(context).size.height / 2,
              child: Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 85,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "أولا,إختار عدد الايام",
                            style: TextStyle(
                                fontFamily: "Cairo",
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 35,
                          width: MediaQuery.of(context).size.width - 40,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            itemExtent: 150,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      fontFamily: "Cairo", fontSize: 27),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                      fontFamily: "Cairo", fontSize: 27),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                      fontFamily: "Cairo", fontSize: 27),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Text(
                                  "4",
                                  style: TextStyle(
                                      fontFamily: "Cairo", fontSize: 27),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Text(
                                  "5",
                                  style: TextStyle(
                                      fontFamily: "Cairo", fontSize: 27),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Text(
                                  "6",
                                  style: TextStyle(
                                      fontFamily: "Cairo", fontSize: 27),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Text(
                                  "7",
                                  style: TextStyle(
                                      fontFamily: "Cairo", fontSize: 27),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Text(
                                  "8",
                                  style: TextStyle(
                                      fontFamily: "Cairo", fontSize: 27),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("أيام",
                            style: TextStyle(fontFamily: "Cairo", fontSize: 13))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 20,
              right: 20,
              top: MediaQuery.of(context).size.height / 2 + 120,
              child: Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 85,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "أخيرا,إختار عدد الدقايق",
                            style: TextStyle(
                                fontFamily: "Cairo",
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 35,
                          width: MediaQuery.of(context).size.width - 40,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            itemExtent: 150,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Text(
                                  "200",
                                  style: TextStyle(
                                      fontFamily: "Cairo", fontSize: 27),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Text(
                                  "225",
                                  style: TextStyle(
                                      fontFamily: "Cairo", fontSize: 27),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Text(
                                  "250",
                                  style: TextStyle(
                                      fontFamily: "Cairo", fontSize: 27),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Text(
                                  "275",
                                  style: TextStyle(
                                      fontFamily: "Cairo", fontSize: 27),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Text(
                                  "300",
                                  style: TextStyle(
                                      fontFamily: "Cairo", fontSize: 27),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Text(
                                  "325",
                                  style: TextStyle(
                                      fontFamily: "Cairo", fontSize: 27),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Text(
                                  "350",
                                  style: TextStyle(
                                      fontFamily: "Cairo", fontSize: 27),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Text(
                                  "400",
                                  style: TextStyle(
                                      fontFamily: "Cairo", fontSize: 27),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("دقيقه",
                            style: TextStyle(fontFamily: "Cairo", fontSize: 13))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height / 2 + 25,
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: Icon(
                        Icons.chevron_left,
                        size: 30,
                        color: Colors.black26,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 80,
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: Icon(
                        Icons.chevron_right,
                        size: 30,
                        color: Colors.black26,
                      ),
                    )
                  ],
                )),
            Positioned(
                top: MediaQuery.of(context).size.height / 2 + 140,
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.chevron_left,
                        size: 30,
                        color: Colors.black26,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 80,
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: Icon(
                        Icons.chevron_right,
                        size: 30,
                        color: Colors.black26,
                      ),
                    )
                  ],
                )),
            Positioned(
                top: MediaQuery.of(context).size.height - 70,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  color: Colors.black87,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RaisedButton(
                          elevation: 0,
                          color: Colors.transparent,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            height: 42,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Theme.of(context).accentColor),
                            child: Center(
                                child: Text("!إشترك الأن",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Cairo",
                                        fontSize: 16))),
                          ),
                          onPressed: () {
                            showGeneralDialog(
                                context: context,
                                barrierDismissible: true,
                                barrierLabel: MaterialLocalizations.of(context)
                                    .modalBarrierDismissLabel,
                                barrierColor: Colors.black.withOpacity(0.9),
                                transitionDuration: Duration(microseconds: 300),
                                pageBuilder: (BuildContext context,
                                    Animation first, Animation second) {
                                  return GetOffer();
                                });
                          }),
                      Text(
                        "٣جنيه",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: "Cairo"),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
