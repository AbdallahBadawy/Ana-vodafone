import 'package:flutter/material.dart';

class GiftScreen extends StatefulWidget {
  @override
  _GiftScreenState createState() => _GiftScreenState();
}

class _GiftScreenState extends State<GiftScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        color: Colors.black.withOpacity(0.1),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 4 + 30,
                height: MediaQuery.of(context).size.height / 8 + 30,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/store_locator.png"))),
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height / 2 + 43,
                child: Container(
                  margin: EdgeInsets.only(right: 100, left: 120),
                  width: 150,
                  height: 1,
                  color: Colors.white,
                )),
            Positioned(
                top: MediaQuery.of(context).size.height / 2 + 100,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Center(
                          child: Text(
                            "مبروك‘هتوصلك تفاصيل هديتك فى ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: "Cairo"),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Center(
                          child: Text(
                            "رساله",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: "Cairo"),
                          ),
                        )
                      ],
                    )
                  ],
                )),
            Positioned(
                top: MediaQuery.of(context).size.height / 2 + 230,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    width: MediaQuery.of(context).size.width - 30,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        "تم",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 25,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
