import 'package:ana_vodafoneApp/BottomBarScreens/OffersScreen/Esthlak.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/OffersScreen/gift.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/mainScreen/mainScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Esthlak.dart';

class OffersScreen extends StatefulWidget {
  @override
  _OffersScreenState createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  List<Map<String, dynamic>> data = [
    {
      "t1": "خصم على باقة النت",
      "t2": "supper pass باقه \n سوشيال 500 ميجا ب4ج\n بدل 7ج لشهرين",
      "image": "assets/images/offer2.jpg"
    },
    {
      "t1": "خصم على باقة النت",
      "t2": "supper pass باقه \n سوشيال 500 ميجا ب6ج\n بدل 7ج لشهرين",
      "image": "assets/images/offer2.jpg"
    },
    {
      "t1": "دقائق فودافون",
      "t2": "ليك 200 دقيقه لارقام \n فودافون \n لمدة 5ايام ب 2ج",
      "image": "assets/images/offer4.jpg"
    },
    {
      "t1": "وحدات لارقام فودافون",
      "t2": "ليك 75 وحدة فودافون \n ومبجا بايتس لمدة3 \n ايام ب 0.75 جنيه ",
      "image": "assets/images/offer3.jpg"
    },
    {
      "t1": "دقائق فودافون",
      "t2": "ليك 75 وحدة فودافون \n ومبجا بايتس لمدة3 \n ايام ب 0.75 جنيه ",
      "image": "assets/images/offer4.jpg"
    },
    {
      "t1": "عروض 365",
      "t2": "كل يوم المار هيجيبلك \n عروض جديده \n متفصله عليك",
      "image": "assets/images/offer5.jpg"
    },
    {
      "t1": "عرض النت",
      "t2": "العب \n واعرف \n  هديتك",
      "image": "assets/images/offer5.jpg"
    },
    {
      "t1": "دقائق فودافون",
      "t2": "ليك 75 وحدة فودافون \n ومبجا بايتس لمدة3 \n ايام ب 0.75 جنيه ",
      "image": "assets/images/offer1.jpg"
    },
    {
      "t1": "فصل عروضك",
      "t2": "ليك 75 وحدة فودافون \n ومبجا بايتس لمدة3 \n ايام ب 0.75 جنيه ",
      "image": "assets/images/offer1.jpg"
    }
  ];
  Widget grid({String t1, String t2, String imageUrl}) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 200,
      width: 100,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 2,
          offset: Offset(0, 2),
        )
      ], color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Container(
              height: ScreenUtil().setHeight(225),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imageUrl), fit: BoxFit.fill))),
          Padding(
            padding: EdgeInsets.only(right: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  t1,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      fontFamily: "Cairo"),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  t2,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: "Cairo"),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              showGeneralDialog(
                  context: context,
                  barrierDismissible: true,
                  barrierLabel: MaterialLocalizations.of(context)
                      .modalBarrierDismissLabel,
                  barrierColor: Colors.black.withOpacity(0.9),
                  transitionDuration: Duration(microseconds: 200),
                  pageBuilder: (BuildContext context, Animation first,
                      Animation second) {
                    return GiftScreen();
                  });
            },
            child: Container(
                margin: EdgeInsets.only(top: 34),
                height: 32,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    "استمتع بالعرض",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Cairo"),
                  ),
                )),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "عروض ليك أنت بس",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 21, fontFamily: "Cairo"),
          ),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.close),
          ),
        ),
        body: NestedScrollView(
            headerSliverBuilder: (ctx, value) {
              return [
                SliverAppBar(
                    leading: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                    ),
                    expandedHeight: 65,
                    backgroundColor: Colors.red,
                    centerTitle: true,
                    title: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EsthlakScreen()));
                      },
                      child: Text(
                        "شوف استهلاك هداياك",
                        style:
                            TextStyle(color: Colors.white, fontFamily: "Cairo"),
                      ),
                    )),
              ];
            },
            body: Container(
                color: Colors.white,
                child: GridView.builder(
                    padding: EdgeInsets.all(5),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 0.6),
                    scrollDirection: Axis.vertical,
                    itemCount: 9,
                    itemBuilder: (BuildContext context, int) {
                      return grid(
                          t1: data[int]["t1"],
                          t2: data[int]["t2"],
                          imageUrl: data[int]["image"]);
                    }))));
  }
}
