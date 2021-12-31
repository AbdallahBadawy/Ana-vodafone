import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Fasal_3rodk/Tafsel.dart';
import 'package:flutter/material.dart';

class Fasal3rodk extends StatefulWidget {
  @override
  _Fasal3rodkState createState() => _Fasal3rodkState();
}

class _Fasal3rodkState extends State<Fasal3rodk> {
  List<Map<String, dynamic>> details = [
    {
      "image": "assets/images/pay_and_get_free_mbs_icon.png",
      "title": "وحدات \nلفودافون و\n ميجابيتس"
    },
    {
      "image": "assets/images/pay_and_get_pay_now_image.png",
      "title": "ميجابيتس"
    },
    {"image": "assets/images/pay_and_get.png", "title": " ميجابيتس\n سوشيال"},
    {
      "image": "assets/images/pay_and_get_free_mbs_icon.png",
      "title": "وحدات لكل\n الشبكات"
    },
    {
      "image": "assets/images/pay_and_get_pay_now_image.png",
      "title": "دقائق\n لفودافون \nوميجابيتس"
    },
    {
      "image": "assets/images/pay_and_get.png",
      "title": "دقائق لارقام\n فودافون"
    }
  ];
  // ignore: non_constant_identifier_names
  Widget ChooseOffer({String image, String title}) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 90,
      height: 180,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TfaselScreen()));
            },
            child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.fill),
                )),
          ),
          Text(
            title,
            style: TextStyle(
                fontFamily: "Cairo", fontSize: 13, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
              top: 30,
              left: 10,
              child: Icon(
                Icons.menu,
                color: Colors.black38,
                size: 40,
              )),
          Positioned(
              top: 30,
              left: MediaQuery.of(context).size.width - 40,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.chevron_right,
                  size: 40,
                  color: Colors.black38,
                ),
              )),
          Positioned(
              top: 40,
              left: MediaQuery.of(context).size.width / 2 - 60,
              child: Column(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: AssetImage("assets/images/geny.png"))),
                  ),
                  Text(
                    "إختر العرض الى يناسبك",
                    style: TextStyle(
                        fontFamily: "Cairo",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  )
                ],
              )),
          Positioned(
              top: 150,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (BuildContext context, index) {
                    return ChooseOffer(
                        image: details[index]["image"],
                        title: details[index]["title"]);
                  },
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height / 3 + 20,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/dummy_offers.png"))),
              ))
        ],
      ),
    );
  }
}
