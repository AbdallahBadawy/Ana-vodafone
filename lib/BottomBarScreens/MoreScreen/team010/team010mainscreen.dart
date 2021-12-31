import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/team010/addbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Team010MainScreen extends StatefulWidget {
  @override
  _Team010MainScreenState createState() => _Team010MainScreenState();
}

class _Team010MainScreenState extends State<Team010MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          elevation: 1,
          centerTitle: true,
          title: Text('فريق 010'),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.5,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'فريقي(3/10)',
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(45),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'قوة الفريق:متوسطة',
                              style: TextStyle(
                                fontSize: ScreenUtil().setSp(35),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(child: Icon(Icons.star)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Text(
                        'زود كل حبايبك علشان هديتك تكبر كل اسبوع',
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(40),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 15,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return index == 0
                          ? AddButton()
                          : Container(
                              width: 130,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: ScreenUtil().setSp(35),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Icon(Icons.person),
                                  ),
                                  Container(
                                    child: Text(
                                      'my friend',
                                      style: TextStyle(
                                        fontSize: ScreenUtil().setSp(35),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                    }),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'فرق اخري انت مشترك فيها',
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(40),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
