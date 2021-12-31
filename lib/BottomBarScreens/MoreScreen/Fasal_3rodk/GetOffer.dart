import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Follow_up_balance/rechargethebalance/rechargethebalance.dart';
import 'package:flutter/material.dart';

class GetOffer extends StatefulWidget {
  @override
  _GetOfferState createState() => _GetOfferState();
}

class _GetOfferState extends State<GetOffer> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
                top: 30,
                left: 10,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    size: 40,
                    color: Colors.black87,
                  ),
                )),
            Positioned(
                child: Column(
              children: [
                SizedBox(
                  height: 90,
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: 130,
                    height: 170,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/recharge_and_balance.png"),
                            fit: BoxFit.fill)),
                  ),
                ),
                Center(
                  child: Text(
                    "إشحن واستمتع بالعرض",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Cairo"),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "لا يوجد رصيد كافى,اشحن الان واستمتع بالعرض",
                      style: TextStyle(fontFamily: "Cairo", fontSize: 17),
                    ),
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RechargeTheBalance()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width - 20,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          "تأكيد",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Cairo",
                              fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      width: MediaQuery.of(context).size.width - 20,
                      height: 40,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(0, 2),
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          "إلغاء",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Cairo",
                              fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
