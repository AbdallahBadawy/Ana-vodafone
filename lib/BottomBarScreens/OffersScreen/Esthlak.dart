import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EsthlakScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "استهلاك العروض",
          style: TextStyle(
              fontSize: 21, fontFamily: "Cairo", fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey.withOpacity(0.1),
          child: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height / 4 - 90,
                child: Container(
                  margin: EdgeInsets.only(left: 100),
                  height: ScreenUtil().setHeight(370),
                  width: ScreenUtil().setWidth(370),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/offers2.png"))),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2 - 80,
                left: MediaQuery.of(context).size.width / 4 + 32,
                child: Row(
                  children: [
                    Center(
                      child: Text(
                        "اكتشف العروض",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 2 - 10,
                  left: 50,
                  child: Text(
                    "هتقدر توفر اكتر مع عروض فودافون يرجى\n الانتظار جارى تحميل استهلاكك من العروض",
                    style: TextStyle(
                      fontFamily: "Cairo",
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  )),
              Positioned(
                  left: ScreenUtil().setWidth(30),
                  top: MediaQuery.of(context).size.height / 2 + 80,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width - 30,
                      height: ScreenUtil().setHeight(95),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.chevron_left,
                            size: 50,
                            color: Colors.redAccent,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              "المزيد من العروض",
                              style: TextStyle(
                                  fontFamily: "Cairo",
                                  fontSize: 20,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          )),
    );
  }
}
