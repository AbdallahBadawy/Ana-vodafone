import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Edart_Flexaty/Estehlak.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Edart_Flexaty/edarat_Elbaka.dart';
import 'package:ana_vodafoneApp/BottomBarScreens/MoreScreen/Edart_Flexaty/tafasel_Flexat.dart';
import 'package:ana_vodafoneApp/color.dart';
import 'package:flutter/material.dart';

class FlexManagementScreen extends StatefulWidget {
  @override
  _FlexManagementScreenState createState() => _FlexManagementScreenState();
}

class _FlexManagementScreenState extends State<FlexManagementScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    _tabController = TabController(
        length: _tabsContect.length, vsync: this, initialIndex: 2);
    super.initState();
  }

  int _currentIndex = 0;
  TabController _tabController;

  List<Widget> _tabsContect = [
    EstehlakDetailView(),
    EdaratElbakaView(),
    TafaselEsthlakView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 10,
        centerTitle: true,
        title: Text(
          'ادارة الفليكسات',
          style: TextStyle(
              fontFamily: 'Cairo', fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2 + 30,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 50,
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(253, 64, 0, 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            'اعادة شراء الباقة ',
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width / 19),
                          ),
                        ),
                      ),
                      Text(
                        'فليكساتي المتبقية \n 700 فليكس',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width / 25),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  padding: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [],
                      )),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'عرض ليك انت بس ',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.width / 15),
                        ),
                        Text(
                          'ليك 80 ميجا سوشيال ب20 فليكس لمدة يوم ',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.width / 22),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              margin: EdgeInsets.only(left: 15),
                              width: MediaQuery.of(context).size.width / 2 - 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Text(
                                  'وفر اكتر',
                                  style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              22),
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 2 - 30,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      width: 1, color: Colors.white)),
                              child: Center(
                                child: Text(
                                  'لا',
                                  style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              22),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                TabBar(
                  isScrollable: true,
                  controller: _tabController,
                  unselectedLabelColor: Colors.black,
                  labelColor: Color(getColorHexFromStr('#CC0000')),
                  labelStyle: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold),
                  indicatorColor: Colors.redAccent,
                  onTap: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  tabs: [
                    Text('الاستهلاك'),
                    Text('ادارة الباقة'),
                    Text('تفاصيل فليكساتك'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width - 30,
            child: TabBarView(
              children: [
                EstehlakDetailView(),
                EdaratElbakaView(),
                TafaselEsthlakView()
              ],
              controller: _tabController,
            ),
          )
        ],
      ),
    );
  }
}
